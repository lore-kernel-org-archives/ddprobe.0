Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0113AC00
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780196674; cv=none; b=kjoXwrxoGqyzAGD+eJr+dpMJmy1XHs2Wllo7ueQr7Wj2i5by+0k6yREZelW6MMuNnfQ6e+XbV7Xsy2h2njl0r5gl6cay2jSuXXLxiQrf9SYcZZd9TU4fOG6cjnmLTrzOG55wQoSq8jRn2zaeSsDdp4dg7Tno6oQgaTq2LGOcvqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780196674; c=relaxed/simple;
	bh=EWUHc02UWFd6iuyCabEl1UZLhvIF34nSG6xa9yqGoP4=;
	h=To:Subject:From:Message-Id:Date; b=A7Ypu2z+PBCGPwRtQH3ad51DR0p/f4dmLPe/XwlfltJaJNUok9XEKTzROaiMjYHRqsSewT7Lcw/cTPqk6nYwdM5fXqtkrKmOBvVwrEB8CvsqqvKrBngRSG8jGsDA2oEq/GrvGX1dmkWjX04a+gWjqvOBo4FQzRca1oZeEPSpf6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1ocERnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1ocERnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D022AC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780196673;
	bh=EWUHc02UWFd6iuyCabEl1UZLhvIF34nSG6xa9yqGoP4=;
	h=To:Subject:From:Date:From;
	b=p1ocERnZnDFLNfEvYFY/2mXykdW0Wnxmey5Bc8crTOvPvB58BrjmXjCeAN5tj6vMP
	 l9Wi2E4WVpUrMN3g3hsQAMkgHc2ZR+3xbaR4/UZtwSCZLiSYYRsH0B0rr1fmcrMqj3
	 k4d1Ou3iHctOSweWQEKp8iOW0u3oMPbfmObu26y33Lk0hU4/k209NqAdnqjMeNlViw
	 LJSESBe2VcutEYonsigF+CGhCtpqSYO+dXHw2Sz0QiCv4pVl9cqcrJGV5Hx1nYi7lG
	 ExD9qRw5EDyEEqp8GqpCbmPQFYXACLADTLLPgeF1MQgxFv3Cl1i3rOQMtg2onA5w2W
	 XzGrNfsEfynlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2457CD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019667369.11479.3715032163850901200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5916e2e521967b87c5d8cfc4b231b69389b54337c1948baedc599654421c5093
Date: Sun, 31 May 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780196673
