Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D89156CA
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760357994; cv=none; b=Cg20JB4Ch2WuMSGMBExDu55VXzgZ912moENrWeSlRZRZKPfase91gCPhAlgHcRB0gf0jGJ921KdUzzzBOqIYU6O70J6umi/8is8DrBP+e8KlN6HtViFkeQrD6L6R5ZmjAfGfQY6sJZvEHcb5At/0ZgBRrWXQcA4DBgNCEe8HjB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760357994; c=relaxed/simple;
	bh=CAH4MJN0+g9fsWpkMmSwUrd/bHr16RH5J09KYjQmXFU=;
	h=To:Subject:From:Message-Id:Date; b=I1gtn52897DxXGnOcQLp8Nb1ALjB46FSW83oxXLEGJTVg4f61C/vXRnNu0Cyqh0+xH3KA5+6h4icOBh7DizOStRPP7EV79w6ZmzOjNC+YTjDSWgjiq1zKEpjeTKuTlFhH1pYbIagxh5j6UivX7slN9I1F2BFT2vkf3JhBOyIWkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLvaZMUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLvaZMUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0944C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760357993;
	bh=CAH4MJN0+g9fsWpkMmSwUrd/bHr16RH5J09KYjQmXFU=;
	h=To:Subject:From:Date:From;
	b=cLvaZMUbOdNQminYSHivcxJ6v3p5ASsWdRlMEDgW43eh9f3oj0DSwj2cNFuN2JcaO
	 3iaKF4Cx2voSoR2eLCwgMsh7U8fmY7oUQQio3h715IBz685AthdM60xr0IDWVFLzVe
	 J8RX7r/qXKt8WyrzCUYUuOODRTwlFLs7F6sIkKdEBrrcykR+p416UHtyt5lEXGEr5N
	 Q8oip8fYJiYED1aRfC9p6klq6kTRg3wgRMpEngaHbxmHPxEg0q7Euu6jkqaED7IFoR
	 Yp+hcX+RedGSvNiKElZ0iG1J6mGottkji/F25U+k4h+bVg3TryeOZVo06zrY3y2kfo
	 mTT73STYv6cbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB37CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035799357.15740.10746754266627600870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d59e0ba0152eb4610b503e1cf2d82525d61da1341f9acc6998c0d6416786fb
Date: Mon, 13 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760357993
