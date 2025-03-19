Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C391A287E
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742416194; cv=none; b=bm64QYmYTc3KKxFoYJbfPTtGBeBHlUIxvuDq/4+VW4dWkxci4hNlvha+0Fwu1GrCQ5zw0JzB59411VKjVWtUV8Y+5/oqcGzBM3duulqWtu/K1uSmZOPJuMGvhgY1GgVz6GU/OgeZI1f41JIXpUzRBVgPZi6yWMClNSIzVN4lqDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742416194; c=relaxed/simple;
	bh=Yrw1uRy4KDLUHagP7mhxG7eENWEGegxCZ5skYOvgjqg=;
	h=To:Subject:From:Message-Id:Date; b=L5pMSsYU0FcboA5f3SDHRkuar0fYZZJ1+KkaBU6vNwfUn9vkzanjSnHAqi9IZtUArcwEtYpyG2hmpf+8tRcoH4dwkl9fYrWjmXJ1alqL+kc334RZtn8sD6Hyi3wRgDbE9wzq2mszpUqQ5CjZIKTSwGNXHzeGyAIIXGuVO442HyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtaERNJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtaERNJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B661DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742416193;
	bh=Yrw1uRy4KDLUHagP7mhxG7eENWEGegxCZ5skYOvgjqg=;
	h=To:Subject:From:Date:From;
	b=OtaERNJjh2jw2LgCLS/stiQZx6lFQwaxEavPof08XM9P1lObl//A+hrFq9sI0hZDE
	 W4vI4CrwzhGFZ7kjptDxChpNC7eH3tRTc1zet4mvp+Wwj2qcQgRl8bN0y/R5XR4Us4
	 KZiDp1JIofvH9Uh/Ckj/oKP4aIIVR7UY5hUBqTdyU/hJCQHrAokROnRWtnrIVO40xp
	 valM1HXoIwJHMmE3SZ6eR3mq0yEyZExx4pp1719nUXo6OngxRx5gnC5H4+a3PYeUIU
	 DSqwbDTK8iNkihKtkjAZn+GeFRzNiQOo49oi/jRbsRtwlmWqTow0j3XZTie97sgeFo
	 mg6McM4dy9EiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6E5C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241619360.12642.6965209658595678784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3144d00420f18c9297c0a55bd17fafef8115fd164e0b026fb7e443c274c486a9
Date: Wed, 19 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742416193
