Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DA963A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712536697; cv=none; b=XHpfMV+QMig4Fogf7kA5TvusiHEe12WVlVn3+DJNTceqKoU+fcJp8ROWkwDu8XHGiiCW24UCeMF6UdWdDdcbCkqz5P4uNPlpLFeEAdVZZvi+4b083EQ/n+Rhsh71/a4XXWcNUP5cDxokau7Tb7AQjJr2p/zxCGI6fvdamFhoOLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712536697; c=relaxed/simple;
	bh=cSFtOcDh79EpdxshVPumO20RwupxVnfNgZjCgQ7nDKU=;
	h=To:Subject:From:Message-Id:Date; b=I4I3N6DHttfiTyqhKuJEWQCXwSkixEnxK0/71bJJ3RJcWT3VfR1/Tg0dUAKzCZRgFCdAC4icN3r8T7u5c0xkw58wCEwMYMIYaLRNtldwtaoOUzhVa4gNVXD/qCWGKdnrAqws2240CemPs7gSfA5sqIpDPOJIh7Oyzbn3L9pY3sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IERZdxfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IERZdxfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4B8C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712536696;
	bh=cSFtOcDh79EpdxshVPumO20RwupxVnfNgZjCgQ7nDKU=;
	h=To:Subject:From:Date:From;
	b=IERZdxfydG/MzemFF99ag+WxoJjWN+QbZnHd0KNJIdLNWDNT+akKDYyMv28cBgMMM
	 BDs3S1DfEduw9I/fQC8HhjAeBnsuL2KCbxE7hCP5itf0O/Ve1M2UKaaGacoFC7ALAa
	 4n0F9mT9hUY2OEzeZEG5bfaeyS/OY7wXHGzNoVyxv2fOM4UYq49Eb36R8MpJE0QnVA
	 3AlrNOEL3SNkOi/9y+sAZ8Qx8Lw2yUrHnEgE8ln/pNepSKABinwMAQVJapRNUbtwG5
	 NNempxUA66FpTrXI8hrOir6cvd/auWxqUL2s5WbV0tZRTKKdQ3p1ppD0A/62CE3hDe
	 0uGZufEvCUXPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F8DCD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253669639.13223.15355895759532295760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef45374b6b6228740a9f1bb8e90d3295e6988113968a057e393c7e32c99cccb
Date: Mon, 08 Apr 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712536696
