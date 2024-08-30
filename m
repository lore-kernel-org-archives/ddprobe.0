Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7AE1BFDF0
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725053154; cv=none; b=glJLqjSVHXbi+5BqS4BmkLerToXi9+lfD/Z5GjZtHAL4YlDYN7ne3PtrvUg8AzK3Y3M0iIIVx2QxvQjSzM9Qq4ULVdIrku2+JOgLhjpx5/SJs/Xob3j2AcImz4FBJeVeOfFGUSIQrmM9GislO+g3yYnyR1CBrIqG7T95cNSymzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725053154; c=relaxed/simple;
	bh=tFO7mcj2Nl+VoMqOiXGeTPpRT+vtPOzB///47D0nXnE=;
	h=To:Subject:From:Message-Id:Date; b=ou10BR5bWlIIaf9nyiS2iwXGkl+fti1ivqa69O8kk9CFXfKfWc9xMRrQpyg51A0V7zHrg7lCX3paz+HLAH5KXqtwgBMD/VeI3d+cR8BDnh4bv/ZFATMif3kepskPq8BLZWFB4lpRpOjD4887Tdky3nqsX5C95nLNDl3qaZ3+w64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoZn5Aal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoZn5Aal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E98C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725053153;
	bh=tFO7mcj2Nl+VoMqOiXGeTPpRT+vtPOzB///47D0nXnE=;
	h=To:Subject:From:Date:From;
	b=OoZn5AaldrOA3hzn7e5T98ZJ8iG8xn3lMfmSoPvm1gQBIxJ2xxhi2fogYY1v3Oqu1
	 Fp4pMt2R4+HWUAA2yBgrY5ASGUH+7Tr2rGLIeehCx726hUcnnZ5LVz76znVEZePVh+
	 JS3xBhRG/rzvNJKxYAsT/zzf5Vy5wHN8orEm2B0zrx4quNJZoQQ/iW/WBnxr6sXpWN
	 o3QtxNDjOvfbhFNFiS3aA8QxEAfVQqfsL5Ef2Tui2vB8KzZwhRmrFAgShBYk6Q86fO
	 2eYsc0BHeyuqgkVRSJ3vkExr5cUSM5Zh8y+ZUy+J4EemnUowJdctmkmo+/YaCaQpHQ
	 rpsPYKP+/y41g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A112ECA0EF3
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505315361.10093.488071646148402790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f5ffdf0d986f8ec1f4b76bf774a27870d20c08c7a21c3602662f5133b76684
Date: Fri, 30 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725053153
