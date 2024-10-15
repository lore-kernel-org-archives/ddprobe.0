Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169821DE4FB
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728986754; cv=none; b=r8aXElXw2VjUsX8kWovVFbFX0RmXXTb0IlBXnYq4gSWMBR7AQFKw2To3oc0hM5aHPzvHUCUfkm+2eYcnocFgQoZz3g3BanAZuUqJod6Smy3HOVH4+OltgvlNxdqsiLYipr5OS4uLsFTWrjufrYKfCrHmGFvnC66guz/0r8XFxAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728986754; c=relaxed/simple;
	bh=TGTZ5D5MX3rfY+ltOIOA2ZIFmIqeDFnGd6SfnrqKuF0=;
	h=To:Subject:From:Message-Id:Date; b=BG6kxNYUP8QXkxwqolXhsKyCIL1FyoYNQfQJkW/2a8WhPHndEC7Naj5TulXdZI0BWNd+rMKxd1kZhesnT4c1lZs4Ik8lw9Yg3+3U8J5g6R7mASlMBb+oM9OtOvHs1i4rkEEfVgSYx96V91aOtDjLRlpJrcRzia2QssEYPKtspPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fukp5qrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fukp5qrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC978C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728986753;
	bh=TGTZ5D5MX3rfY+ltOIOA2ZIFmIqeDFnGd6SfnrqKuF0=;
	h=To:Subject:From:Date:From;
	b=Fukp5qrrJcMx9sToEhfV+TmA+nFkWarNzaTcoGjnEMiBH2KHnBR6+xjvPABnq3qqo
	 uQ+ySA1eTCUHEESBMex1ZWL2/3bKydTe2eDaFJdT1C8QZAGk2+Sf5kMBRx4FJC1Vrb
	 tjS8eNZkba9Y83r6B2Foi1XCUxRdHA45aabTzG2aEMY+l5dELCN5+ngebWnAtW/Qxr
	 ZU8RVRu84cWAkVMva/XL49+INTK4f3mp1ClFds1y177P7ZECgnqAhWBItT1YAYVzDg
	 PTU7JGIVdVlSk529SNXjYCFntP+hLVtRKs7QlWrV4eodiJH2p6iN/n5dOnOB9ioNe/
	 n5j14SEdHQ1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B105CFC280
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898675362.14236.9991009791398350153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb56f4c33731fd8d759b3f1f2ddba510c70c005cfa611ba9b0ac59caf8a7f8b8
Date: Tue, 15 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728986753
