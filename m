Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED5B76048
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726035954; cv=none; b=cy+AImdW63Hb8JB4bVxNwKBn0XFAwj8H1ziJw+waktbWb0muqfWfd8WFcw2crdzkPxNuUN9yep8pqNZ66pLUrQ3aeSPKFipm8FGKojQMvvQzgEmOs1afaeI4l4qvI78x+yJ/R+M+aVsC2ET7SCHDgPQnVKiDWe75RBpApZt05h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726035954; c=relaxed/simple;
	bh=IIUEpK0qckBsAwQMuOTzbL+hQC0ranPpFv5O/8lLS6I=;
	h=To:Subject:From:Message-Id:Date; b=LjV1X5Y1TJsQlyFhDizl7GnT9U94CpyqigNLyZb7oFWPSS++5IdW/p0jnI857VPQuCdw4EU1d5PrNFQy+u7r7J7Hx4PTcaqMcYz4abOMY701wadXF0vYvCcsVFKWcY67cDZ1JOJRl7G0gPavaZPTuVdDE1AOlDno77jV0pH42Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds71pOXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds71pOXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51F1C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726035953;
	bh=IIUEpK0qckBsAwQMuOTzbL+hQC0ranPpFv5O/8lLS6I=;
	h=To:Subject:From:Date:From;
	b=ds71pOXbsn1KVrAtt68HfGmqW5Vf346km+QWOZx2CM4k8C0RrqFxrP/hri6unmerG
	 5+zCIVEQk2CUyPT06GmadzspdXcsUkc5mQ9AhPWyXv13Xd8DydWFNAw2NNhO/YmaJV
	 qe/GJrgIWsMYXmqkG6G0UeRmZolL4yEaL1tF7BDkiOP3wYg+IId5iAE0FQrsJwIrRV
	 GGs/KWIhS6WI5ty34C7FUKToGAXNKpPQ002J/Xtlq5y8xcynOTDQCBh2rTilemGCGN
	 a9ZI5yDVuW9CHiPo2xdjQL2EUKm2kayTO/3NXOQe7Z4bQ/DvTjhIpyKS+HKIBPgwOB
	 CL6kzTnej6zsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92427EE01F3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172603595358.634.8172145206836465136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a5322ea6347eff460f114820565a3d79e95a0c7b46eb03799820cbe5b516be
Date: Wed, 11 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726035953
