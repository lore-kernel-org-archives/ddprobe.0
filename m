Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271FA2C18C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724973354; cv=none; b=aN2jSr6+VB5ATqlIANSZdwvzQL9lINGSP51CM0iDkhQWisNKm8pO0WSido0HiLcssgf6rVOF7DW6Stf9SuG+azrz2S26Nsf3Q8DwrvBoA/PoGt+DUoXl9tqGe8OPa6JGK/MJ9kp0GgaxDbxCbbvaaq4DmtKSjwQ9SOzDN7uFy2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724973354; c=relaxed/simple;
	bh=WbBC5/lz7uCJ05d5wqjV/3RHJrj7QV8KOEn8+AIMG7s=;
	h=To:Subject:From:Message-Id:Date; b=VmZ67tQxrHRWrGLF+MjCRWyCwKElgyUdIA/gUGoSzLg5HuMevaDHdwh0YwMApSsw7KTovKoG6ExX1xAemN3jMzKXKLeR/EiGwtNxL/ffcRAowJkM78PkmNMioQiaOsY9xex72te0ag2aznEqLY4IVHWaSr/u0VOvWvziwMkTIGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBLhTsxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBLhTsxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB511C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724973353;
	bh=WbBC5/lz7uCJ05d5wqjV/3RHJrj7QV8KOEn8+AIMG7s=;
	h=To:Subject:From:Date:From;
	b=OBLhTsxBY+Eg9J9gy6m7RSTdoomJjW4ubz7+JRyz2tdjgRIrNdTBKjeqqpzpCI3s0
	 e23aPhFmiVYSmx57RbOkl8/mhklPWW9Lqr+qbvn8i/neZj75Mjf7ZxIsdxQXUfIozs
	 7jwYb2aMLD6O0dRf/T9QAl7IpghqcrTR60Amco27dgrGNsizaVJL3bWa+joItKZh46
	 oejLGpZndYCnzGTBdLVVL+1DHYdkRREOM5UH5ZWjPb3MiR3Qa7SO+IwhllLPy9RXQS
	 MJaGt3VOq+ypWJ+Al4iSVDBLrSUVRyI52cg5GzzDD4yyO/utyoyIy6xwR8n8RBYeQz
	 UbLnXsGI4ctkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94838CA0EC7
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497335359.12550.4994029416161778120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d734475390b552feafd5292149effa9b0bff11ea297263e634203bd6970c4454
Date: Thu, 29 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724973353
