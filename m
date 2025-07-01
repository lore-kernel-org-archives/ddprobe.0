Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF9B25CC4B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751353794; cv=none; b=UpUzM+gKVrp6IHlKAtOWQzjuZAIUSt5laRWg9/d4aGY764y16m83znu2VRPwi3rBpY3hJi+3G80gL4OH/jQCgY6FAdspE4n+g+6JOyFbVcvTORyw//Af4FmYaWAQYvRUhQOII92d0c/4zvMsSJW46nzkhED6Nl5KL59crMgedKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751353794; c=relaxed/simple;
	bh=v8IYmP8HRKpbsQdiEQ/38DNcOi7C7PO9RqwKZRnSFmw=;
	h=To:Subject:From:Message-Id:Date; b=r7X5UaKmXDFG2uDb24fSh9Ax/5D8TZ1duRV5WP8QGb1PY0LKE6NlAEzmppJ7FP4FBJ7w51isyRNQG4MaGAfYAbPQFpQHjm54kjSPF104h+GGDHFTJ1zAZISy5LFBT6e8caW4YzpSyYvjaNCoSMXl8H8D1CrF9DnLlcynX1VfyyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5WAlfHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5WAlfHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B78C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751353793;
	bh=v8IYmP8HRKpbsQdiEQ/38DNcOi7C7PO9RqwKZRnSFmw=;
	h=To:Subject:From:Date:From;
	b=U5WAlfHbrnuigkXRLzochQx2+ZRj6W2fzJMaW4RGbXaTHatLAKJRv+0E8AK/IV3ZK
	 1YzLhJRNg5wuP+zK55nFFq4ky2M0XKJ3jdez8nqirh3WNTWtcgsyYRSENc1TNb9DJA
	 qwOequENtals/OTw4C3mUwIAhwlL/HMGDe4QRMw4gvfmABlqE/15HuncI0Z90Gl2PZ
	 38R1hsq5QJ7Z6L5s+rZaXObOjPHqkYar2mnvXu8H02Nh5goje7iOpc/2RiRlKITjh7
	 BpcnQJpsrl7FYuDZHy+XVzGQIoFihYTuRj8iVtYfxAKRyuFHs/aI0oZ9rvyPNACmM8
	 lgLnke2tvvL7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD2C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135379357.21900.17166302766549425749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8334a09ffc69161e19e7bfa28f1970fb1b8412b849fd421bdcdb480762d91d10
Date: Tue, 01 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751353793
