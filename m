Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC901E0DE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787796034; cv=none; b=pmYoaQZr2HKm1Hfeo2boZa9wU7gPEVGslQrZhE8ybsgrWQjKgy3t8Tayk0nDT+RNkozD7U1TYXd4I5CtLOK/JiYguLpAwjUODGoptrU1ykvvd14ronKJjCp5j1iejePLDBPe/GCPdu/wh+FFk1l0YlGs+sLqfZ0TsZFG7sU7vZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787796034; c=relaxed/simple;
	bh=6sztzyfXHKv+UxDJKmwGO3PCPpJEYJgqOZ+rXfFs2Us=;
	h=To:Subject:From:Message-Id:Date; b=js4b6bOVLmQTaEwJjZyftAzoUvsxq0DUnReUCGimIo4uhJjEJ+aDg9cuvpT45gfufvqfbB0GksZjJ56bLQ4lEZ9EMSfV+plxJEOr0jEA5VRkV4rYuETCJCqKy8hV6adQ/qoBF2daPLX3AzeCZwYXaifjTGnZ6BsAImr43JVPwfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j82O3g4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j82O3g4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A17C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787796033;
	bh=6sztzyfXHKv+UxDJKmwGO3PCPpJEYJgqOZ+rXfFs2Us=;
	h=To:Subject:From:Date:From;
	b=j82O3g4c9RBlQfjQAJdVSam0/NLlpDev056JUQENoYFYhBFDMBUlnM0reUdYiaFyk
	 Xp0D7qjhlDuguXSQEjofxtIgmMqlx0G6GV6msPYuh1YfyiVEaag3Qpviz9PvWG4Voq
	 OwDkgG6zkMKb1iJ84knO2i5BOggbu0EcOs8YPJBd0XKWv29CkBJY3Z1gLOYzOUZswc
	 CTs5R0TjT9d7BBWMrK+jVZU7PR7jcwAtNfH4Em40lR6vSHlDFms/JTRhk1WVSpmR5J
	 obHgrIUsH+2IniRbxzQP4h3wf+PD8lxgsAcG3C/bVtmrhWysV7NtY/fPEfy5P2lrDC
	 RANxwE/x18v7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0CEC61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779603368.6882.10507890143652984754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3793bd5af50c5e13b2e7256cca22b3aad52a553f33a9ca6fe965daaed73ec4
Date: Thu, 27 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787796033
