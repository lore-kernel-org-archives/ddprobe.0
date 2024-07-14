Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815AF9474
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721000483; cv=none; b=V2K/rkmWHDVYaFqxBLHpXRooYx9ajiQzNX1vh9XX/pj+8I4uXHn/OlYVMK9tETwZgYM1JFxPfy97IKKgkeNLZnRjV7fVlIdvKrIlq27spo8QBCMoJDW40vkFEmsxl+jnZlpUE7jk/65DAP442f2yP7aF/DW63lT/+BOGdHPLzRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721000483; c=relaxed/simple;
	bh=KHeIB09e6bGtZQTVoFROjmMA7JHcYo8z4A3jgL+mneQ=;
	h=To:Subject:From:Message-Id:Date; b=htZIvudSMKYG+xAD3LSGKkaPVs6Kbst3ePBJaIDEaCeZoWOs2ZEkP8HP55O7aOkfpqMg7g1LjuSel+C/hZyt3x+cMsn5qwnzUzsa0LV7v0fLzCMg63wAwFhe3BfUNu37tkVmMliN213LxhkW7T4eDEzpaQ5A7iADZrkEH+hfwRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCgElzTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCgElzTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 103FEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721000483;
	bh=KHeIB09e6bGtZQTVoFROjmMA7JHcYo8z4A3jgL+mneQ=;
	h=To:Subject:From:Date:From;
	b=vCgElzTPAMy4wB/A7bZeELtsBZlCfduQJkHGwzewnO7y/z3H2evBQlLq1ib78ZjOp
	 iRLrLkeWXkTJQlaHGDwxhLWgF+6RDCQE9s1+3c8Nfl+XPbibunyFiEb/V+KD3TI8M9
	 glry5x5G9oepfsbHXYkW52YXbZan0NnlD+Ekfa0VnyD1e/16Xz3c+mCDbmiu+DNdEn
	 drDlNVbbN7QVre1Tx4012/Jz1G57loYsGZsx+XJWtSr9W+una20zmCuBJGzwXoq2/b
	 qg4iScSexbcRFWtLhFjaiS7n1EsGnUythrMpyKF9dxzpzF4PmJ7buEa4TdL8uE9HFb
	 eahHtAa6kXGtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF68C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100048287.28692.988090830848806572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051366a4b694ac39fa067d7bcb79997fb8cf46463e9a2d7990deb5f3e6e4f4c2
Date: Sun, 14 Jul 2024 23:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721000482
