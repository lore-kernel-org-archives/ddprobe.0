Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3EB28A2D4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739473134; cv=none; b=i9wkFfXV4G81chM0REcXjB5JlKsKbSvYTRygrS92t5OEKXelWG2qc3kfAKd2VxIAvy0TEE5rlptU/FdSFGsr4LQsxwZGapwF8VSPnICZR8tuC96Y3B4eC2zaMqU55DFpRf12ufmMqg34+Vd3eJSJ/m8VCHVPRg+brrJwU/VNWJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739473134; c=relaxed/simple;
	bh=d6/ogrJCAmC9CPPEK2gmIIEo6vV84B8j/bA6VKDNIqA=;
	h=To:Subject:From:Message-Id:Date; b=Z/Uqh6iHgbKvA1v+54vSrjiPhYqec7NwfnOmeEggk+ldO3rM4MFU2AKvThbcu7/OrpFCSLDVL6SvC+N1ZzHQxKbvX5HiYQsUSAWeBcKfxjyw2Pb0aO56Sgu81sv4kNmWo6zXbkpIIk3fji3iIvkK0W/BoUhBE4n+mGsdINInzBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3lywGbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3lywGbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B90C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739473133;
	bh=d6/ogrJCAmC9CPPEK2gmIIEo6vV84B8j/bA6VKDNIqA=;
	h=To:Subject:From:Date:From;
	b=m3lywGbt1b+JvWJ5FB9l64NTfhgLutOVM76Ra8MKSRKygPuG9lfilGLKbxug7OtTj
	 nqdZjLM+LYGnAuyH26PyeWGKs9dyYDqm5whREjRRgpS0c+MJXxSQp4tZezGTdRnVFL
	 R427pL2owZRG6SUlNT89f5cNd/Y8ZQfPnHvOovhNjHlJFZpoegAmUlDJ8TyX/mhzQE
	 xFCPfPtpWGFe/j0+Sr9NKVl2TykT0vAQrnITcIdlV0gvGuKoys1Efz3lcfbTt8G9+w
	 uHKdf0wmj4B4n3VXb67O0akIrVrfQNv2z+DPC6bzZUwTGmgKfvcqB0XP76daQfIuF9
	 GmmAsB5fFqQKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86F0C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173947313367.11841.258171879828294622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabdca547437ad69b9a7a20c3078954b0f05a087a22df340d78b0233b68ccb37
Date: Thu, 13 Feb 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739473133
