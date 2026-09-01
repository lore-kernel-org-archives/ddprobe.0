Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28805410D13
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788227437; cv=none; b=NLwwjPuj6CrdgBeoh3ogcba8Y2K5bMbz4LPFKR5ETW0zYLXV4Vx3gpCG2jPiv4rqA7lR5OMhmVNa3ELvZr9pCFuE2u6xXIEvGNKhKgCPzx23Smr6voVW9Gz8eRsHsWRNdvv3MeiLtlMMIIHpi39TrhKoSHS+LqltsSY/kYoETPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788227437; c=relaxed/simple;
	bh=5Y1lEwdWGRgytVtFIKFlAA1zTZPqhJLmMgWtSG21LSo=;
	h=To:Subject:From:Message-Id:Date; b=cYBjM87yxYXWqWJe4RrjvnSejGHbqvNwVGJff+7QMzEjuarVg/SbDuKNTktXd0HqFa1FS+fyOicb/1mb0JD/cbFNpCd3G0bX6UnNWMM6e29CgWNGbrn1ikCF3s6XNe+abxQdcNBMYyHfE/MVcnuT2JewnkJNbOqiQMSYrnYmiww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY8cD7PA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY8cD7PA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E66C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788227433;
	bh=5Y1lEwdWGRgytVtFIKFlAA1zTZPqhJLmMgWtSG21LSo=;
	h=To:Subject:From:Date:From;
	b=SY8cD7PAzfiBGT3p6c0EVQ4FipO67JlV8duQgvm29QeX6kSMDRJjbXmTVFL1N9Wj8
	 g4vQ1CU1Ap9EZh1ix+NRfwqjXM4kaxIeKHjD0oz68PUsj9cjm+vlfxZn02WNkn5q32
	 UgZIT2C3QphxyoFh2UK/JlfDikMmLCbpPcqPWVRYWUtFfXZPwwACK3/1CSxDU4HO/o
	 uc7B/CNvK4OAcxZz/F+lS254lA08UNa/irA2ofq10XdgETtnBWsfV/Ieq+Lg8maUbi
	 J3HL4bjy8d34Pjt+Oo88LPOdgmz1zCFVhQu2m0kZ91x+ADqlghLA6lBWkQYz+EqaDw
	 f6ILuQJJYV8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDAC61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822743368.11796.5864397274691148190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917dfe13eab117a21c2e76168094b26012078ed013989dd4e9b0e69ca68d8b4a
Date: Tue, 01 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788227433
