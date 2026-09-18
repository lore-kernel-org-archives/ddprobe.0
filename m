Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8342492E26
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789759235; cv=none; b=CLiuDiKgnRVAXb2bMSv8WoGt7wlaccd+zrfEMaJkjwDHjuiezSVvhTyCgj2S/lnOhSixtkWTq9dj1+i0+G3Wf+YB8p2WZauwOjIH5MKkXf5uH07tvtEMML1HPEf5DgQyQ5s/18e6A4LLRAm2QCbPwF6+Yd2phFgiv8DGRSMatqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789759235; c=relaxed/simple;
	bh=1VRj6xo0d9k1l0gfzzhbaeCC+D4B/ARCFEU9q5J6mho=;
	h=To:Subject:From:Message-Id:Date; b=gRaPOcYeqqczdGZ7qvipcLgTLw4cJEYHvGsTDsGcbtKMYiuurvbxh8CpQqWkbm2mokPEYCwD32jj09SNRnn+erxgZOh7myI13lLEbKGWwF+mHGK9baz+1hrfAe9v5kDDtH9d+Qflcm7OluOPgmIL0TincXmjh4QhZjLtLeyF31A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbkZlUCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbkZlUCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C77C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789759233;
	bh=1VRj6xo0d9k1l0gfzzhbaeCC+D4B/ARCFEU9q5J6mho=;
	h=To:Subject:From:Date:From;
	b=LbkZlUCqDjtamwU1qfUpT2fJaoxCEyqih0IG9A8m+t3DgsKvjJVty5XQWfXDg8yR1
	 jiHM81GTJHq/mb5CcBXHHv+LhXylJjPC/O+DeGPPLJPCIcDyZM8Vp+4pcjpuo9v9PK
	 wXGsDEso9sar4l4vAOUyaH2z8TRQoVBK2R+DpUgaXApkqK3uarhfa3Qzofvqyy175M
	 C9Tk/TUVpUfEANjBlXE9rEoyANLw8L4q4cmP3hg3NhEB39seR1wrKxrO2aoSRg8oRg
	 5Prm24iArc3IZ0D+lbvPB4ad+f6l3gB6B1dwBWoYj40Pk6ADpXT1zWoSiOuFYdzjmg
	 si482P3rrTsRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B970FC982DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975923374.31304.17359036487683843652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4005aa8e0434fc73602bba12ce8bfed7295f9b7f245e06f753c6429a60f0d01
Date: Fri, 18 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789759233
