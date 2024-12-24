Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4026B15D1
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734999354; cv=none; b=tAEtZlvEZ/oaalSdIz7i++cvSHNhNhrSzPHytoNidq0Vttb7Vtdj+R+d4IKM0Dy2tTjvTIw4Zw4A0RFmsoSEzUXlgnG92SVhTrH7GaRXlxvWZ/tOzyYdEIyHwl3ERbO1/T2Xuc3dub6iayUtABG3y0aGdKCZEH4KSDxvuym2rF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734999354; c=relaxed/simple;
	bh=W+mSdylL+5YrwaSyd+kpFcKxZgRKz2IfA6ZE6TlXdyw=;
	h=To:Subject:From:Message-Id:Date; b=Wa16iV+U3l+vNlEGdb44P6C0r42AcIp9N98/fF+wcdP0e+6FCuMRKNaTFF3uJwSHP6RvjYyCFN01i5Gn8VDlllLyw3gcnEp57PTbz2/175T4LgIKMZY4UQA79kAtfeiuCYPNgTP5aAHB/dXV68fFmcegY2oIPfdQChYOoNvsHRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkcJ4STO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkcJ4STO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A17C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734999353;
	bh=W+mSdylL+5YrwaSyd+kpFcKxZgRKz2IfA6ZE6TlXdyw=;
	h=To:Subject:From:Date:From;
	b=pkcJ4STODi+5aEjepdRaF7eRpMwMN+0zPJbs16BDSLQOPpVlOXnQMYhvMLLoq86ba
	 /1bXzExKKQHnKJzokdZgIScPanXQTwZV+ta5zTyNoI3vcnRvOUl6NOWq2HU0c4e2f6
	 LRKnfhULKAGZgWR2NVmFt2iYqvpUwl+OTw19dt2dfp0cX2FN7irQw6myJOa2QcAfsb
	 i7vN/5c2G8dzcebdGZHw5gyr6cSyLxybzdeLG71QtemtXZPZf1+EtHI1yJ2NiJD7Bh
	 c3RCf/h93i2O657joESgqB3Xl6DC3+v3qNan11HeHIZsP2e+KYlvB2Xn5AEU+5aK5M
	 tEdrpFeicV12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1C2E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499935361.30570.17438407619484038089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c8a362ddac5fb8ea6a33196dcd74574d84897d655d0bebdf7d4cd4e07d551b
Date: Tue, 24 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734999353
