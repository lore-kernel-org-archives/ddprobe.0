Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7E51852
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711823897; cv=none; b=Q/AKbuTCeemaxzy5bIjvM2iYtbUVG4tt8sEnjGBfevzalnQ78kgjAPv+/Rx7YghnYBOYT3jqR4FfMZl2PwKB5FRiUmtLWJH3vmuOfkNEM0Dovcny0rh2w19XLF+vTiIblOx6bsIpitWQefnUS+PalX8CINF3HPRnnw35CBnKHqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711823897; c=relaxed/simple;
	bh=6VlXRq5qJPKvVhhE/X4IKhQQx219vNyTK+jtM+2ZEEw=;
	h=To:Subject:From:Message-Id:Date; b=GWyC2xFqWeMB1+ho+UHMp1GFFj3C2pENslem+n8fb0clc1M3lfPjTFxCGXL6GJxFbWiB8SNkNXqswlJIWbHg3aHIZka++spHPGY1fj1MlBhdgmEqNwqz8c0rm3Vux0l0OLbB16WdINWZSjYDjW7qu6F3R4YU8pKXgMOunAtyAjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMGus0mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMGus0mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CC0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711823896;
	bh=6VlXRq5qJPKvVhhE/X4IKhQQx219vNyTK+jtM+2ZEEw=;
	h=To:Subject:From:Date:From;
	b=JMGus0muK9sw2oBGlG8cHfzUQ68Q9hTYYZfJG4p7OT4VMvG2/l2DBUGMu881sm+D+
	 rJ5Yt5jMbj4tlPtssm11cUiPdiZfS6sIxOebhxOyh0aycxmiNluJIb0XMnZFEcnrfy
	 2DzH9xq4f/y/hX171TswG2NQeqWCekPE7NfzDu7b2j9581ba9md9BdVSC9ZgUmDcMa
	 tuz1B6jHup2H/qmb2OPEl/KLobtxAGv46BsU2AfO6U1J7qIwbevOcrUF0g7NFInFwY
	 aLBgKfwh3hMbwNlrPSWZYKtTbgRdBEywdJxoZ1cNU8wO1R1Q5Hwfhql5JAs8oEAYuU
	 lafoFeka0SnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B4FCD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182389639.7741.9945876910305873747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7266a127f9b726f12484eb890253e114a15c889be1919a42c1987db930d49669
Date: Sat, 30 Mar 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711823896
