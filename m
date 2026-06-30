Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D8F40D58A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782791314; cv=none; b=VfksJwm2g8ERb0gmO+DYWdQVSTLVAbsQ4n/uHwk1HHVfWHKMD8NjPgMrHn9vGkq5P3oXPfzY52IhK+SiUSfji+RxlzsC0hGFoUc3klTat0Lb6A3oJ4drNo+wYunUywoNrZc5/3hRzO0sgeB2+cMFOzh+fip0VPg6Pmkasou8RdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782791314; c=relaxed/simple;
	bh=zn+uuLQ10MxQXUt4ztarxiL0cbdg/eb2+YGh7eJxT9k=;
	h=To:Subject:From:Message-Id:Date; b=RW5wi8g/jcEzzpw4d0fJlVmwgkzDgOVjMIJ2+mHh8erwkUZRIxyfu4oOSfOqAuU/9uuhdDT/xrm6ixyohkjDSefmY7BiN5rE18/UJrm4pXGqYdV610EEOZM4+T0jOiEPX2Vy33MLK28+Ip2AC/3oF2PXH0zVHh5bljIlvk7SwJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4SrHKbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4SrHKbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C2DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782791313;
	bh=zn+uuLQ10MxQXUt4ztarxiL0cbdg/eb2+YGh7eJxT9k=;
	h=To:Subject:From:Date:From;
	b=R4SrHKbBsx8Fx5kYh0TpNAzCg18f/ww2eBKOedG/AaEErZGXVl9CiHDn44TQNNcnP
	 LNv8arvdBH7w1IgSLdBaR9P/PAT/4H3SlelefAoR6f4+BmNwGfQYQnbl+8lRZhjeNS
	 gbdJpAs7JrhDMKGhzJDJ/QdmyHkQ48ClmJMbdzP1EREE9Asug0ZmRUKMKjzMCFPAqK
	 3dT8iI8A6WYY8V/kKg/M5D4HZqy/B9Vb20OUuxn9RoMI5JonV5rFNIT34Z9QX/zfB+
	 mdFBGnX1OntA/FlvOWqYoTp1/LzSWqFqCZWlbY3VDHWMdN0Dik3MmfWAEg4ImDDZeY
	 RDlXe+A0d+kmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AB3C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279131368.15339.15469934761667609283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a0280970a6bd0b1c4e564fe75557a410b8e545c67ec7015f808a0bc187ef02
Date: Tue, 30 Jun 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782791313
