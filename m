Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D421F945
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715461343; cv=none; b=dY3nxYxX5kkBe+QFY5Qk+Bbvop+zqDUOFyb5A/uQSwKaAzD7tI2FZg5HzyTbjyLS/lvj+iw4uuY3qfyFGu0ixp0UXjsoDDr0X4bd6+S25/88c/tLfSPvMV3PDo0QQvXoJXRSHqAAQqZNv9qr7rgeKG5abW/4Eg/Tj6vATWpLv+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715461343; c=relaxed/simple;
	bh=4/Zr/bjcAq86nHfxKD6+bZj8ruAvFhzPm/jz3+JZIOA=;
	h=To:Subject:From:Message-Id:Date; b=I8HofjJgxKQsJVRf2SUredeWg1uSP/ht64a01EL3nwROHeYYzWNcUYtxTuNx1rBECN/DwnBz/ADqpSMZY7sitLa5Wy//Y75Zb6DXwZPbwUOTUxMuab6ztGBmm/KVN0CgscCrPa+cfaZp17Aq7DexsP4biWQH645ISBfdjaJgUfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJ9Ifus8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJ9Ifus8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77FBC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715461342;
	bh=4/Zr/bjcAq86nHfxKD6+bZj8ruAvFhzPm/jz3+JZIOA=;
	h=To:Subject:From:Date:From;
	b=jJ9Ifus8VhTFeySDGRqYSwbRYhQizEvpf02F4wA8nNAxXT2Ul4f4XHhBpafRZ53w2
	 93OwqkHpwniZTlaHGlyXvaCnrAkT3htm+R486xsAV48U+eX6DYRfC2ZfesP8MZHjM1
	 iLAfVmgkLm7oJ7/LyGBtczgVZS+vb9fM31njlsE+uVvpDMvtVO1B3R/Zu6mb5lIJBU
	 +dRYCRFpSED1m4NVx6AqStPLLCPmJPJGSrEfGLXHejUfklLnmCk3yD/s4GOc0ZV43c
	 L56DC9GNvH3NfOTjl08L1gHVtSTpxnug/EdR/amlRpYbuFpqTGQ8s7dYhE2/ri32fe
	 huyhZSxw/3k8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5293C25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546134277.25408.10222431960211023088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1c5311938328fa169c70d6fdcfbf810ec874a399035204d88ce9b650cfba93
Date: Sat, 11 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715461342
