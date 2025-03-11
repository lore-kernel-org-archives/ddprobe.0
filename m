Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2802B79CD
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741652334; cv=none; b=u1Djlz0b7BzgishRV08D3x7g9uOupZS8UILlAiowBX36CC/F/rOBEP+hoBSyDmzPfBb3DqiPPsAPRZUE1nGAdsht0vyVrJeyq/kLXJUfZ6v/vu7JeRXOzHuykcxr/+/PlxKV5jJIGMyQivWeXuZ73SFVHE6bI7oHhPfFwSMKf1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741652334; c=relaxed/simple;
	bh=gC6vZdeWBXbvv+wsu/Lqyy+XTuK7V4Ih1euzmCx21tQ=;
	h=To:Subject:From:Message-Id:Date; b=gxfZTPR1rNVdMxHpAD0fBIH3sHQOvTzJr0hUouooYHtGJaOmoG/vsU86JSoNGGONupqhJw0gGA3gu5Aa1LEnqrw3CiXr1zGbq6G5hej+7EAmJhuCuANp6PQNzYMTjMxV/xP88a6O2vG/Fy7acFDWl/rnbK9VwxU92EmDg76NAow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajOQ7Lwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajOQ7Lwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAE0C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741652333;
	bh=gC6vZdeWBXbvv+wsu/Lqyy+XTuK7V4Ih1euzmCx21tQ=;
	h=To:Subject:From:Date:From;
	b=ajOQ7LwqYp+Z5KPFqE2CB8oO8ZTqVSjlFmAKxBiIRYmeKU0OboJwgMTfOPDIr38Uk
	 JR5l6PptOA61Dq29ALl55KREABWn66FNPW297HlhI40RjUTYKe3IW9FTSOPK5eFJI6
	 h/KJ8c8CTJmtu4zV4zJIF48X79i9pMpa+pRVeqhl3SKiMO7QaNZdiOl+kha/Vpj+Uh
	 G403R2pHnfU+Yfc9qU+drsns7JxGImlerIC3O3922imibucybsb6a8GLBoV/NFiyzX
	 bRTqNs5kRL4zOqPly8oT/JN0cga3GYb9pPCzkrE5dLh0QpjtrBSpwCCRz9GvlJJdwx
	 E+/B+z+4E9Hkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94238C282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165233359.28573.7354085340380406301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776dd7c0bf0d2e41e8ec2d608aecb2cbbf29daa69a5c9b12c84137ec13fe3ebf
Date: Tue, 11 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741652333
