Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DAF15B3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717970243; cv=none; b=XXOZHRDxAGLJ0EyKyRu55FexknjNUqzU7MRawInChn+TthsdKIaSnF2wza9mWJaemmTcnDuqaojB88YV5PNAApuotxWKhDZ4tYyJvX69/jodwTozCFdWImfmHjdwxVsUMn9lRCCpnxPKWYNbIJDo0PsZTosZr79xig07zPuXfaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717970243; c=relaxed/simple;
	bh=7uwB3ZDPKPhWTumtX9AROZHzDHzzYN77L5MmKscJsvc=;
	h=To:Subject:From:Message-Id:Date; b=p1y8O5MeEeGbJXLoKVc+sBmfZjH4Tbv8Br2d6Xkkec2sFe+wL9AcC3PAmqiJIKd4IyQ+qMxcr97hOjf6BIHjtG9e1TyjuO0vr96armwXY44GwNpwUk0fxD+hzAvW6vPO9gepZLA8yzd1TAIQGV5sVAOgB4Uoc4TEM+2dxUCIIz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP9EkFcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP9EkFcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88A6C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717970242;
	bh=7uwB3ZDPKPhWTumtX9AROZHzDHzzYN77L5MmKscJsvc=;
	h=To:Subject:From:Date:From;
	b=sP9EkFcc7vqkS97xg7i2Suc2OYeNkZbsJsFhnaEUzmlXDZYA5X5U9KP13HGNwzQBL
	 zr0Wf+j52gwg41Yqi8clRGNhxQgjoV4UG2e0BS5LdJiPSEqXe5C3KvZ63eyKl8sH11
	 +ilPqSwS8OCXvxfW3sX/KIlnS4/5TLhViF+a2lPQQVIm0ggqNp6GfxTflaTjzyTIa+
	 19BHILct1DtZz5ELG1f3DSnoqyX4zYnGZD0KfuMOc5bp680A+QMWOthQezhjp3Cf4T
	 slZnyrNlM0aXXAXxKnvIdT8NEN+G31wpxmMY7GhBmzxuSCBuFI3eHO5nERSGkUBwTf
	 Ht34q+19+SOHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1286C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797024277.25688.1660570529206774516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82110066b4d5095a35c7f5b9d7da6711ddcc31bf4efd5892b955ce642058f944
Date: Sun, 09 Jun 2024 21:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717970242
