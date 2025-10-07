Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F742E7185
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759855194; cv=none; b=gcvDuBzWBXYbI04teZR93u6nec74CJGwGy1EoHEkJbJWUXOmV+68bTn2FxkKfMHNWa/osf7H1oQG74GSTuhMia1sd5e7BkyHcSHaR5e1QhfmN80E1HXR1njtOg9REbhW38wDl2Ic6jiLwty0tj8CHZkCEpaRpdxSE3pAn/s5En0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759855194; c=relaxed/simple;
	bh=VYPeFfgjD6lYN2ipsqnaXbf8HL2sohSW0Tc/8lTe5lE=;
	h=To:Subject:From:Message-Id:Date; b=I+RyuFtrBfXyLB1c2q+nyT4nybUfPa0cdS66QnylvdUHBR8O9scx3ZyjvFFY5IbQ7VjP6JNWNuminV5V2aO2bU1n2TQENtV6VOiz7DV0EE1oWmgjrojrtN1Nj+EfoyrA+jN574RjPXUTu78qWDBsLhV57xKHsLrAm8ddkxEUnAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToAR40Lo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToAR40Lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31A7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759855193;
	bh=VYPeFfgjD6lYN2ipsqnaXbf8HL2sohSW0Tc/8lTe5lE=;
	h=To:Subject:From:Date:From;
	b=ToAR40LoI8S1n6oS4E2EqfpgXHIy4EXdLFXa6S3nb4sVXpuv4MzU9Iz2Mpu/U8F3X
	 l9W4tt24PTHI+51o3QOfpT4bAdD/kOHK2WgTIyeHxsVrWDyTsvExD0qWQpetwlHM9U
	 BGUKLVYPqPwsfVOesdMZ7lQDWowXILaU7dZfOdYqsJv4MDy2CAeOhWN7XvGQWzNVfN
	 i0eRB/yO4bn60CxY6RrnB8/MZvSRreDnqtpjdJuUqa99R3Ryz51nFIXGFXnlbhj/vc
	 mbrsBjAnxlJ7FL/Iqi6BkTQqa0j/Se1/NMM5/svdJGoL/FMUuBnqjtr3ic4D6dxUpT
	 npZhNYmWcIU/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA4CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985519357.16538.5663957143186834633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd09397c9aad9037e63cb8d15fdfee0549fae7908ac8eab77f2609ab58f5ea1
Date: Tue, 07 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759855193
