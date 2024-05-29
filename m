Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B451C8FC9
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717020263; cv=none; b=khwKXf3Na3rKZz1AkVfrNRMLZYDVG4a1Aoh0JhbUTa6VyPMOBXM+vSJq520cx0ZQCFXundpkVgEAYUZk6nThlid4YIzwqaS7dH5w6zBjO1LwtiK8CB33qw8MB8Tk4FlvdF29Ot41m9aIMhOxHfyjbscbbFnyj2rG+Cvk/cFJZNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717020263; c=relaxed/simple;
	bh=VnLDZROLw59VYoe0w7oAxNM8I+32tkndFmxKtm9npw8=;
	h=To:Subject:From:Message-Id:Date; b=kljA4C4d2ShoV+KMhvbWwT/yA7VbDoawpL+0s6AuWkAZ2ODxHXM3rR8oBGh8HvWQLpY+7K8xTFVjRoyC3YLPOeMfguhyXU+fDN78vnzfwEHyMSa+7wEKayaWITQPenx9Hu/ebqyxEyQj18gjGabhBtApT0XkaVWJV4cf/Bm3syE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csk8MOu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csk8MOu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01C07C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717020263;
	bh=VnLDZROLw59VYoe0w7oAxNM8I+32tkndFmxKtm9npw8=;
	h=To:Subject:From:Date:From;
	b=Csk8MOu4vxsAmThQwr4Ij29sHiFaQk7m9kCVdlXJcUDS6/QCuBPypK1ayDOi8dZ0G
	 5bEE3Nvk+XZ5oXDvTJ8T7QQ773Kl+E6yFpBww3cz0BvgaI2+49TbF9dwFNnIkl26Dh
	 acgGFsOyfROzT3Esq9d9q6Psb3VtJiG3pQjw7dSrPtoia6cFfYGbN2GrOFD9SHbY1z
	 k6Z/ZC3ypJYF7ABLeCysizfRT6/jN056hjzfz7AtiEVONoxghO4FmlvdHzm7jQi8lc
	 i59jKlBEu1etTncVF/DEEqnlf2zakpK5ZIOqNd702YY8VmA/gdyRD5hRLcW6Y9QA6/
	 PCJhfU8APDABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE7BCC27C43
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702026289.12349.3818237429200030179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b212b1d4357b996211283643deb449fa50f5390a16c9613ee217e87c55a0eb5
Date: Wed, 29 May 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717020262
