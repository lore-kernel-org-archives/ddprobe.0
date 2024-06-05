Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66728153BC7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717619843; cv=none; b=MNW4VRoDwGpymbpxsp/1bCqHLOWip8OuEdUCIdS6Qy2Z42FsZKa+Omt1Qc/kYaMU3v87y5MXbBzcsZWRjZPfV040WZbYtBVhsQoPq1EcMosL1fHAgmJOWfZTfG+ZwDDDRm56c6NLPdjrpiSqPBvuq5M1YlHDGr5l+1I8gg5hGhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717619843; c=relaxed/simple;
	bh=L8wVtEq2fWZToayzW597K/DM8/RfnS7kwH/L0KklsnY=;
	h=To:Subject:From:Message-Id:Date; b=tJf9reBApJBzUyzXXdY9cchRpRFIrppNd/WRROKYu8biG/Y0fc7FHml78r9dnq0jIN4zSxSM5yHJndRnsbEeMpWcGWkf/zW0zuJEm0c6VSlSbKQOOzEd4twdlIA+1Yyx7EjSIu5A+S7Ir/RDNRHrp0nUWoOPpQuXdmYqFNuPtDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HInGcDWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HInGcDWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAFCC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717619842;
	bh=L8wVtEq2fWZToayzW597K/DM8/RfnS7kwH/L0KklsnY=;
	h=To:Subject:From:Date:From;
	b=HInGcDWs9p+ZtRlpPOOrCLoq5zNq9XDE77qz32GKmrZDE4W2/bUpoM2KdGNKmUI0/
	 54PvBr1KVZb3IaDyvPupYlLIz8CNxjMKsCigHOTuRCzoVtaMrkdwJspXCdXc6CMlKD
	 rins2cmhWBc2+xSVoaXkwHBcNLgSYNYaqundKsMYwiZuvbeDZ0ZuzfRRJJvAZEcLAC
	 6KljOUbS/CteDawF11YiB9N7J0rKqxPjswY69vp7/+sCRqhGNMeY4UfNmAOvo+q52Q
	 zP3JztB0sITF/D63hkW2K7iQK7R3ai3i3VarcZFHmTaGKoQ83V59QcP/dceszhen77
	 ClYxmBTCXnBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8451C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761984281.15614.16380111587953008390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dddaa97f536bf253c05092a35df686d030c43d982753eb6077cdc861d5f0dc1e
Date: Wed, 05 Jun 2024 20:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717619842
