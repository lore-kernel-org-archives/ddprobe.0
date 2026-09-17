Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD4E5964E5
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789655434; cv=none; b=iDCMVQbh5Rg1rbnj+NHluvUvERRjEcYeJti4j5wm6RS7KWNVOk+b7C9uJJ3/UtFmVW/fvW6OZ7KHVi1KvBbJu5D/jG4hX9JzjJG3CPjxG0csb/PSrj7682pFcAcgLmJGj6iVkx3ZL9sHnGEGGC2WoeCOCaoG3GP/vdvu498CH7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789655434; c=relaxed/simple;
	bh=Szmvx1UOnjKRujpebiTbUbWIW27rc8jWOzCjhRLTa8Y=;
	h=To:Subject:From:Message-Id:Date; b=qxeypcEdCXKUqvcKa0L1m7lvtXY0MoosFdSnDpVyzqsoDdxyGOXY1mZ8j5iWuGFxf3Dcn70S3/bwqWwzwbccqLlt94VFUK2lQqyHfUE3WhrrIdODsBgp2if/aVgbX2Xecohfmuv4G4hxRo+zqh+Grh+F7z1/C1nEhgzYaC3NKeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uua7FQ7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uua7FQ7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF253C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789655433;
	bh=Szmvx1UOnjKRujpebiTbUbWIW27rc8jWOzCjhRLTa8Y=;
	h=To:Subject:From:Date:From;
	b=Uua7FQ7mnlKOcA2VxrEXh+m3HKWJ/hWa++4va2Fxe/i7IWiMNyzSaTIM8qmOypu6a
	 DU/yPhsFcGXbzLz/q+0UZUj7ZLxlCo7LGqPkr4d2a3AEZXDrLOrpm6s9L9gCgMp5jS
	 GbICgpGKYwVB5xV1nrFX6r8STlAAqd1fKZ3BiRPYWdresYI3bESlr9Q2RmUnjV6v3j
	 1rG4pqI07OReOqvcS+6/J4oHREkpRY+2Xopl4qkF/Ry5sVGX4lgOvfNUlCgtB4dpal
	 rtviUrk6zwPdNp59pmQhi9b2yJlQ3Jm4DVEIlsmP+lSfmgPBNQHGrmt8wm/n1wGsX7
	 nvO0CQqbeXn4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8499C982D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965543374.28996.11843505992690581487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf95463dd28f497ae8c6faa726293332fbed724a5dc6c3e37af65388792c91a
Date: Thu, 17 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789655433
