Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B753D8121
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780454074; cv=none; b=UshsYj+ddv1zVLEicV+925RnR9iextDNZdcaFAoPtv3GLArnm1GkbmBkG9GvdidK+Oe+L073pNvUvPm3v4ze7QcswUMYFJUoQlDcXNusxtt105Ntj6vAiiHItBMybDfvyMdvPKSTAcCqS4Xq4u02KELZn1e7KVTL5cku+cDkqX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780454074; c=relaxed/simple;
	bh=4Pa3IL4I09NZg3ZDbvuiCSbPlxLkZeClnBHtJBc/Vlc=;
	h=To:Subject:From:Message-Id:Date; b=ldDRE+VIhCVcLziiO51oDLTZpZca0NKbXlw+4EQp24n5+8R5iAdWAyTuhaIkumfJtidYeJz76z3g10UiePMtfZSnQ9n6fraacWCt+NjANx1N00QJJCjbFnPP24RYoh8+YxDDO/ZgH2PQ2YH9qSYR9NuLl3s5dO/JgsGGQVgdYp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnQpu35P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnQpu35P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF36DC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780454073;
	bh=4Pa3IL4I09NZg3ZDbvuiCSbPlxLkZeClnBHtJBc/Vlc=;
	h=To:Subject:From:Date:From;
	b=ZnQpu35PGp1cAQt99CLL1IZZENA0oFdhH8H5TeN7kXmat4fOjAbwRg/XiD71sXTlq
	 Kf5WgHeju8CMGQ/rEG35n0Cc1AspZLzxD9HeKrJ6GP1h75V1kO9o0YEa9UB41L+UFr
	 6w4TlnsXj0qcmRasKneINEGghdKdBqDLBZLdGCQJc3FJKovETJEvTEhjpcY3lgfqh0
	 uF3phLOLOgJOvah+R1i2rAkfdTfcu21gaVOvB1J0HQILkKRoKDTuj+UBFXGJPwsOGH
	 1rJm+QAywZ8Sc6WF1uivIj5y0AJC2FsZe90+hV9cCoZpVmbadOKbZHcuxWgb+PRURb
	 k8Vs3HNosZ0Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8236CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045407368.29200.12062841909330316838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d9cac10c0c2a29f8dc6329f1bd7324bd49017a61202a5a1785b7c53f0a9fb3
Date: Wed, 03 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780454073
