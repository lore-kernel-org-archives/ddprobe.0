Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA482749E7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744976994; cv=none; b=OJVVZqPNxNGDwQuYPqo09WjET/cDY/S3baqtQDLAYpqByF96OLgPu1ek6GFQdN0gHjue9bqqN6sPg6dddZMzDQg9scvEbgkMQHO+J3jguVRawFV4qCUAcQqFvrSgGEoEcVSr68fX0wktPVL2BAvqe6HxP32XjEJEsjIhbjBWHw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744976994; c=relaxed/simple;
	bh=Y2icXAV+XVdthmBuqWi571sGxZq/K3v0YGqilVicYaA=;
	h=To:Subject:From:Message-Id:Date; b=pngmM1FN3uYQ/90zL2JoiXWO+kAgB5L0ceoYJ1EOxjc3+2ztuh9Y5E3PSRZRMmwWbOv3OO13EDNoSMHtH7BJ878g7dnwq6kllcQPpeDZOedNn9vBGolwZLHBWxbYTeta+7mOC25HrG4d0vb/HeEJXg8naTs98o9Imh6dSwKi0X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+ITO01L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+ITO01L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CDCC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744976993;
	bh=Y2icXAV+XVdthmBuqWi571sGxZq/K3v0YGqilVicYaA=;
	h=To:Subject:From:Date:From;
	b=Y+ITO01LlO3COA8C6u4/tJyLcDVYuOJfH5HUk9yfo8LMSBWeNqGT09iEmOkj8sQ/N
	 4Mf6HlFu61CHQuFzrBElgVhfLDGLnIPqfVLWD0pRgLrOMV+ilH9vrnRnaQu9u0ONqI
	 6sRM6kzrYx7Bi5W5aQHUZcHblFGauCuCIcvKMnX3Z63HFxe9+YYe3TRTv8miZ9eV9y
	 uykgBGwu/LUN4aSZrkmtfxUDqMR3dEuDXOYw97DyUJow8xX4m8fFzpg2+VLjUjcCmF
	 Bs4RvBrdZpBjL+XzUxopTpYLyE7HLvpr7JLzjOnHCqQJ/dnbqFyL44q70i1u29tu0Z
	 k7LyBfB3uppow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497699358.26549.5843121125906552142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912182ae5bbc887816e02dc5d5d22444f1110e7a5eb248efe5954d88e0c5ef96
Date: Fri, 18 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744976993
