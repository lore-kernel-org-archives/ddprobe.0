Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CD4B672
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739635134; cv=none; b=OTfElv3qL9OkkocWhx/zLRXb/30A2BMddIrbTGpKetM2tuIYZX42YLGPvU0egAsuWtq5/+vKHx9SWWVf3It/Nmz49F4ejv5bKyxz5ITOX5u0HzKkPoY9EzimrGetG1se697kXkky9JS568USiMN+gRvW4RlCXj46wH271i9WsMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739635134; c=relaxed/simple;
	bh=v7LGun084f59eZLo6bBJ1Oz2rHE8lG8VSz7cyl9b8FE=;
	h=To:Subject:From:Message-Id:Date; b=EVPaGAWjYH4c5nrEcK+te/64ZzlVhp6nL6Heve+vAyKyXiBwhsAS0pVaMpfjQ64uCYa43ZQZJ4shyqxKTVrZRxjgbCnS1wk17fvaF4j6hi5lV4LH9aBucQRTHeBZKFejymxvfSwzpyrI28mpT+74YMh4S86rI1Hs1rjPekoHD5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAAndYiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAAndYiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4186C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739635133;
	bh=v7LGun084f59eZLo6bBJ1Oz2rHE8lG8VSz7cyl9b8FE=;
	h=To:Subject:From:Date:From;
	b=kAAndYiOj62Bs989IZ2ChJQGvX1Vz5zQq1Y8o8fPFjQcwEesUTiml+ftRggN6V1f4
	 aS/MMaQlIBuXgzYo+sICuo5+OU2OBHlKA7qdn0F9zAZBH667HippJiBZd39/G9tUJD
	 inH5AyZUSL24okxO+1gax52u7G30V1Cl4RTFKVNuglgjECsY/hoNn9gpP6UTzcFjhv
	 Q1cz0aAnTBa30u1nM/RElx/djHXc+LiBVJ7QwFjX84htvCLuQBJvvAqhtRUHksk2mj
	 /qvGoUP3wO+fHDzsT036iZyFU7pQcZ8EpYNoCKHTtxfbt7xxZdxeUavfHohoOmqgrs
	 pmeLHA0Eys12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF6CC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963513361.27084.13207883938198936352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56959ffb120797290f09e9e9fa6bde8520b9f1eab1fb065c85104fd3a4d81a2
Date: Sat, 15 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739635133
