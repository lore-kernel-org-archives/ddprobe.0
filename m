Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B1A1DB366
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748798996; cv=none; b=lL/qpzzq/78BuTLP9GUo4Ays8SNbpUdDSeTC+vzKY6hUSBLW22wzBxpDlXIo/FZYHyYkRSk52cDC5VeAxK9fbgv2UZkRgCBGT0Ahe8UcM7uU6oSjLmNtYnFbilP4wlDmkbKkGN+/5XaHbqmUbkzqyT957+4EVYn1bw0oGVDiD4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748798996; c=relaxed/simple;
	bh=8V7ev5BzKaOi4/dLRcoFKsyQtbYDpU/f+g31N2amKG0=;
	h=To:Subject:From:Message-Id:Date; b=VSRiiqi1/DThhmMBOjsHi9vQYij4sE3WU6KKJIf74/dOHP+gK/EgdkyolA72mOhjm0tTx+pzWaH0OKbSQm99umncV0mmZamrYYvRUYLv7MHFWvp1EFn3dmubJVUBzHIXN+R6FgIMm0jB5HuG9IK22U5DsQa2eKketPfeAluVmWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHH/5UcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHH/5UcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A336FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748798993;
	bh=8V7ev5BzKaOi4/dLRcoFKsyQtbYDpU/f+g31N2amKG0=;
	h=To:Subject:From:Date:From;
	b=AHH/5UcNJ1dBz4fgJZUkiGQZrI1TT1UxI2JoPu1j80MpQbB3Jpm46oGyIauGDJatI
	 m0ApK3Knu03niuGFGdGLGDIbAl1XEIBX2LcCRs2SP5VzeRu/h1lMhJhRy9HLYEwGP1
	 9XqkPAriCzg1WgSlj0/jchTiEZm8rh3GGbwnDEn8pqrPAT30/VyllG7h449gvnCGtj
	 dWDAuhVs9ZqzmvdHmp+cuEYdlovdN8+SVHt+KLyYydpnp4g9ebQwH0uQciawFpdCc0
	 RHtd57fFApC/8Am25PL+OVUAoB3AM75s2HKiyBBrDvnimpVhn14fEvFddizQWBgei9
	 3LELga0OtFPaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4AC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879899357.28777.7614078645743767429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3aeff2070630054a07627fc1fc2e272707f401aca2fafb0ac9a664194b5d7ef
Date: Sun, 01 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748798993
