Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243B74685
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749353994; cv=none; b=SR5ub1r88UN/xxEVbZSMsxxW5KLbciZVIHz8GpEnyXTbcNRrWvG8LJTQLixQuHUGFzFfEDvZOS33BNceOVYgo2jeOL4ZgUoFJW/49VpxSyYk7l9rJCoc4bbXGSlGAhyfshRauSU2ZTj+FDO0kVMZS/NuuDAnq9GWEjlo5QFoS+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749353994; c=relaxed/simple;
	bh=GVrp16s7cTqOHxD4U87qOJ6nebbXEdBnFnWiOh4ECPk=;
	h=To:Subject:From:Message-Id:Date; b=sJJ4/qi6qKsgJqgCP+1fAsfKLJcH6LxFJui4Z6taS1SNa5nYqvFN72hB6QHeRENGNbbXo+tjOX4DAp+IH/s47ki48j7erKS4lr1xtImMTMzPRptz/tM2dFDxmmjvLvxxomeTPXd0VyHCXXYecHnJj5FvHB3gXuFbJGo97LCbn90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQxzqm5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQxzqm5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B00C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749353993;
	bh=GVrp16s7cTqOHxD4U87qOJ6nebbXEdBnFnWiOh4ECPk=;
	h=To:Subject:From:Date:From;
	b=oQxzqm5Pd2y4AU+7IMUwezdnN0pTFzQj+fMzISvVjf2g8ACGXaxTA+wxm9EscuHwV
	 9p8HEKauQL/G5urNT+bWD0ZARbZRhCFlPBqEcbcBkrj80Dx66ORvFSOuc9Wrbpd2qi
	 2Jc3dfPO4/bAvuIN1utPI91LkqBWVytuvxQN1Qq2dHc+gKeTrzAOe8T8Bk1Tnfdpjd
	 fB5Ojrlj3tZ7N0gSh+tMMwKynpLOWY6Gnj69nXoOLuZYUUaF/PN8aBVYbBJMCppcYu
	 qXxK1NsP0CwlQZ7CgHIeaYUoeCv3jEA+nthEaIO9zALuvIrdO6h7o6Vk+mHGBbUD0K
	 5J57yGH5p7zbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93539C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935399357.14535.4831750112473823204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9dff8bc5112e1dbfd4273159d8c6a860f9447cc0f2332b6cd43f1197a457668
Date: Sun, 08 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749353993
