Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367F02E7F39
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781219194; cv=none; b=uG9+Ems3lNHpSlcjc8CMC0ldmyq5hM8VJsvntpKtyHRL6vifLs+3ONAHhmXR3nh4700lG7/gxIQSJl9Ds/bzGqdxnqQPWMVShctTKXLqGb3S9cuO6V64oSjTO3zr1/kwS9FMNI1p7Bq/4ghMqsxtbmv/twqigDVAQo/afY/ZJYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781219194; c=relaxed/simple;
	bh=YIDU2g+hnaQdk0CuxsnHE7wOHrRMm0mJQhgfb91Sw5Q=;
	h=To:Subject:From:Message-Id:Date; b=E3XV2QgSYoQZdVN7pyb1MnCrH5EtwrzSrt6mvrq7z5m6HyZKhOZXu3WY8638hqDLtDx9aCT1oGCp+iAFm5JQ3chsW+krJwHSvhEw9rdqh41Iicc8KirfXYNcTEoEV3/y+DRJtUMxwc2ggWbFjiLuV64JuHmHfxAOhYdQnbJgTug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpOmSuJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpOmSuJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD24BC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781219193;
	bh=YIDU2g+hnaQdk0CuxsnHE7wOHrRMm0mJQhgfb91Sw5Q=;
	h=To:Subject:From:Date:From;
	b=DpOmSuJu783NP6EWd7E4Ps/L8Q8yetKP3bko2xfZGJAomQ2IdAlg2FrfLALWPS2pY
	 Z5NiBkzblM2MKL9UANvSPmq9PWwcbSu6uNHDIoYIMHycCx6PVbWFtZFz+azdV0DTFS
	 mXEOW1Oq83ahDwez+lVYHFfNs95elUPWOae61jVeAxbZTJvWpse4y3f1Eg4mHNhLas
	 7Dk5pt5WaIx1nH25Rw4I36lLQcC49akttDfurIeLDXAqtI4gcfA4V9aTMjIxV4Ej74
	 vfOKRK6JFd5CEXaMaF7H5++BVP+aY4mVwy65iiQu4mPNxejdOoYO38ZSo/9f4pTpYe
	 Cii0DqF+d7fKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA8ACD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121919370.11063.341410050899709011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684e1bf63d270315cdc4b27e377a26f4b9fffe38bc2f5dd66018f643b6f2da70
Date: Thu, 11 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781219193
