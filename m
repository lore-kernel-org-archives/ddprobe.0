Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCA26A343
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717499723; cv=none; b=lzWcDCm7kGwEz8a6c3UiX/9bdIkK+PmySbLoOZsmgmLwNwgJmwmlEoGugsgiH12lOTDmf5KaRUdenfnniQwtMwW1wYYR3eChodgmIawzNemMLRcDPTqvrqm8gQqXd/unrhpJSh/boPy9QlpeAQFIyUr+JS6aIM6urEAwfnmGLEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717499723; c=relaxed/simple;
	bh=zIN+4B5G6+wkF/2R4pVQQHoDFeK56O+0C+2q2QccW2g=;
	h=To:Subject:From:Message-Id:Date; b=Wu05EgXIbT/RCFGQjZwmKkQm6Y56lJyeD5M9bPQW6S6YrY8MKflmOGNxMD7om7QgxoZh2GGECYUmUoSNDVRwJMPJr/BEnHnX98rlHO6od4m90OIBThQeYwsEQC3NMOHqv0Iei2U4o3y62X1BDXj4+vsGwZghEa0vVmroZwts9gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBKKHYQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBKKHYQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E4AC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717499722;
	bh=zIN+4B5G6+wkF/2R4pVQQHoDFeK56O+0C+2q2QccW2g=;
	h=To:Subject:From:Date:From;
	b=iBKKHYQI6JdwH1+0egPUMDLgDGM7pX2BJxSn0szyv6bNKltkcehKIYrTQbRyzmcii
	 +3BC5DGC8A8xVbsMvPHBbspdN7gdmxh874TaRAFpP704Nt/QhWIGBNDg3R2b+3Muht
	 XU85dGTnnQH+s5FWJCPn2pddWe3yZo3mAaeIOgKcBbgt+PupZimyyr7VYHi6nManxB
	 GTVOVhvTc5EZ1QHkGdJTXs3RaWjQ0SnZ6ETSN4CiyE275aPQBnrx10Tzl8QAvuhHBY
	 K8XNsomjsQhsSW7WfqcRtBBbK0SMzA9vgsKg/eAtswCLLRK5HkINKzpWG7Dh5HogGL
	 sJ7Mcfu7dm4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD1DC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749972276.19085.6479320929630433047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dff4ca85022603b528e43b9b75aaf25e9458d1e21c8a61e4ad9dbb7bf97aa3d
Date: Tue, 04 Jun 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717499722
