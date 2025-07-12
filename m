Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6D1155A30
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752295794; cv=none; b=e/H2rCi9fPuJhpoelzVgBqjnobmQsNSiWiPfG227gzHRC5FoTRXHn8jeSBx8xvy7HXIXOUv+szuDb0JAAP2yrb26ypQj2JUIDIoOt4sFnMC1+XtYVWilbnf5COSCSx0miXLHSBD25xCQZNTEDbtABeB0aF4q1QT0dpi4jRWEGaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752295794; c=relaxed/simple;
	bh=sLWyn7K7Wwe3hI+Dlpw5uHuS1ASLwqyDqKJkfxcTdCE=;
	h=To:Subject:From:Message-Id:Date; b=J58v7RuQRe1h8n4c/KvW+coF2M52wJQC5hEnkybF1547f2SM5Gqc3QHCyWz90mMKdGXhpznz8aG2kaKfLDrrpJyGNkoXRe2AN538bcJ90N6XgzUIuQmMlX6DZhikG4wB8cjuGMjaQZcRHkh6ss2Xwjr4IMqI3YOqwezKqkOua9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoTKyb2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoTKyb2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4B9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752295793;
	bh=sLWyn7K7Wwe3hI+Dlpw5uHuS1ASLwqyDqKJkfxcTdCE=;
	h=To:Subject:From:Date:From;
	b=KoTKyb2bKT05qMoKp2wopAQS+rPKrY6sxMEnnBXhiTsS5QaubPWvFKw21CjfVaPoo
	 CrEIWdIpwrqTcSgUgzmLQfYWlPzKizSJ4WeQ25qZ7ApTZ4rk2lulcf43ICVqruALHH
	 uNIXAyGft1s149Uf2nv/bD9+Lcso/LM+SFL85uCOlTRn+7bCGhtjd3vTRNr6tUnir9
	 r8rVz+iIGzhOvnxuJhfG+pnwL65cVkz2RxbYwOw75M0C/+gvMdy0lKaWYJjuKorzO2
	 bB/u1u/wT4NpN4kl4ica1/+jl9WpXitsamXz0mQ31HxuSlTC1I+FeAvU608F6GCuBU
	 fc/KV9vKUux+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2BBC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229579357.28047.12504892800180590809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7630180226befaf1f4035d7e25f547196ca1323713d8b95506d89a89e6ba9a
Date: Sat, 12 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752295793
