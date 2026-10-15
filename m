Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4580A547074
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792027834; cv=none; b=kp9hlQjXAkNK4NUxjtd+hrpgeOwOPavDcB1UbOaKWJGlYGsCgxBTDsmwIhaPitqYKHraI25YeGfQqv48h1XGNIWkE1RZyE8r4HbCpMYlfOfY2YftmtkA54zBV+wSMrf0x+mcfehSlUQxr2dFyuQdKCi+tjfQUJ5XJmZgR0d7mdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792027834; c=relaxed/simple;
	bh=Ey/V3V05fYhjL+tVKLIeVv9cgkV4UKF78oUitBjdtzk=;
	h=To:Subject:From:Message-Id:Date; b=NoOtOsIhjGCx/M7XSySC/6T5RHS+surpcMOui3cMGUM887N2mk1eClp1Hikk8Whomyx/wZz2JRWCgI8rp1IvvvgsRXdyNM5UaXGg4jAvjf3GGKCUn6jdnrQse9dlleZPyEBRD+myNvCmvXrjT0FcTWyQs81UGFnPNoI8rn1FjLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIm6oXs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIm6oXs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38E8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792027833;
	bh=Ey/V3V05fYhjL+tVKLIeVv9cgkV4UKF78oUitBjdtzk=;
	h=To:Subject:From:Date:From;
	b=TIm6oXs5whaRAUxSA9sESFz9Cy6UCYjSF08ktUPvHWRGlYoMm+kDKOaSCVOgmlGcx
	 dcCBCQedER0bgj7fnA54ZdrfhWfiYYwPlrrKLI7k3xeH0c28/r5blNCOzsm7hJ3Mmu
	 xAG7XOsduT9r470MREdFMaiiUmyR7TgznzBU4jsgwC0kO5IxXCEENjjh16DislLqGe
	 AmsEZ9FhWwMiqAcjZ++F9DrBUQw55thoVGvLBRmGDhj8UVmh/ZkmWg18Y04hGWY5Us
	 Poy8IE+6fXf1TnGLJhQ69MAu4WubvOD7I/xcmT2ymq+Rbwdnik9bpyZuC0gB7r82lM
	 2BVtEVgwniJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE23CCC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202783373.6913.14156459344120233886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9195a6e49cd8bab0165ceb5308eeaa20356a9d8e2b430467aac189f64238882
Date: Thu, 15 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792027833
