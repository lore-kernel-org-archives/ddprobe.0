Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B98C4B04BF
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786885834; cv=none; b=qc3KQCEq3ev/aBEwQLM7YmG1lb4vg/U5vZUBEknkCR50EjDHPEwcNv6m4r3f4TAm6wHggN+ksCKyvAO6+YArbpIKqz+kQ7sKfe8NZQ7EEFAV6WPA2QVC7l9Eii7IPLGQetz9kJrWh39DMQYFw+5oPkJSl9FF4OpzoQBTFxv3qTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786885834; c=relaxed/simple;
	bh=ly7vA5tibFHEDuW8VXCUBvUBE6eiB8LShYagME82HGY=;
	h=To:Subject:From:Message-Id:Date; b=IdrguVMC8ciDvfhd7G4rrRUjIHQxfx9i6FjmG1Wkzmi8cjq21qOKSY1iH9FKzeEOK8cCswaYNFaEB9Seh0qzLjvH99+mQXngtgTGoh480yf0GUoB/aonOBSLeDUJa2Q5yHolheIEjO0Pve7KBVlik/bnWUKRKGsOe3mSCFhZtj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/2JdZ7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/2JdZ7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F1CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786885833;
	bh=ly7vA5tibFHEDuW8VXCUBvUBE6eiB8LShYagME82HGY=;
	h=To:Subject:From:Date:From;
	b=D/2JdZ7fPSHQ557rlHdYJ6wNt1BZm/p3w9ddczXi3pkLnhJgLiKH8pZq07HSkvEcM
	 VCpe+4Dqv+HVJr3zeAkfEKoHq+Uvk5mAHkj4qtj8VyFDxSGSPWngoLvCXsRoGDMtxs
	 xuwVFvEVaHnv7BXUdod6z9COn2GaS81nnQQP/x9zgvEmPPSVKokekOiFLPMWTirxkJ
	 Qr8Y20TGn1Rk1C+Uq6wAIz/niyPRBl3tXjYccXgbAtXLlfwAQzDWqvLBEA8HX9do3T
	 H2FkAw9DFFHXhqPVLaGUoA5MzS+q8a4D28Ypma/Cb96NsH1uIIVuwvuRyYrW8Sl6wk
	 2RkJfnv5FRONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A5C5DF6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688583369.2195.5712068641075287511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1fe5d3331e64a6f24b18580d61de9a202b187c8d946ebd7f6d8a71184ec893
Date: Sun, 16 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786885833
