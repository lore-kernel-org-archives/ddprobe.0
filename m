Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7CA1662E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734509154; cv=none; b=pjlTw1fQRIJf2HMZpHme+aP9zXNpCHEqv+VVRjShY8cm4nBQW7sWTUWlJFarPoIeuZRABXdEjU5aJ68h/vRLkBlJNUIwMaJa0ZnpfytGoxpiqm3oYe/kNW+q5RECX4MDubhbbXANk9BcD0uFFm1WjNwjFuGO5MEZwBapSJ6IZgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734509154; c=relaxed/simple;
	bh=csDuCTLVCiTHY0kYmZMfuZkIKqxl+JNcEpEOim7kG6U=;
	h=To:Subject:From:Message-Id:Date; b=kgPnAN64f7xI6RpU6082qeE4GpRv7jwaFdL4aqioB63oGCvbKStMSICcdZMBrDqsAiXXSTC2qkkl5eo6zVDng+cLMclSR8fWr2SdO9nXrfFY8C8XMFnz8wXFuDz64Jb2NxJNI/hCYUZb0+/IDhe2atFcVIezBySVFsb0ErU4mL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+VSDjdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+VSDjdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE75C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734509153;
	bh=csDuCTLVCiTHY0kYmZMfuZkIKqxl+JNcEpEOim7kG6U=;
	h=To:Subject:From:Date:From;
	b=M+VSDjdNWXqwJVV0Mb5ttcrnhqRujK1IaqAVi1qT8+MEYh7DIm8wWxkIDKyr9J0ng
	 7NmmX8/uTwyLtwKhfJgDV3thxbg67X3GLQYqz51Rny8+vVRI/eGM90vK1pKTNVqlmR
	 CR3BnNMT7qUXPS4nVC4c0CD/1sO7lbMuyEZLKtjlzxpEwu5dTjYZITIRf1MRZ3ERPL
	 ZSQ/zXH87agypx49U2DaSNlP60BRhJYfk0ckIzSujMjhl8Hfa60TnICDWMe8NhEHWh
	 bAwFpl3aDoLmPg3HtLk1Aqkao0Cxv7/qhopSlLshV6mIgR8NPYGmfOf7zPV6o8n+vd
	 edYXAVfHCEabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B924E77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173450915362.17912.2003835452107395330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda51166e021c79bba3c518cfe8345cf82d6fbe1db510f2219573b44ea87734c
Date: Wed, 18 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734509153
