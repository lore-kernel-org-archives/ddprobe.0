Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2CB2063DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741169334; cv=none; b=XswmIaZD9nMIj3rZUs9EtHBdBBBY7/fQC5tLIlwaox75LBKwSAhQkVE7fZUje9MI3M2Kk5CwE7ghecw97/9ZeAsNuCa8rloxzRZ1qWw/WiVisHKFNtjvosQ1xEDwyQCALDtK6cJdgQ5CkW5ztvgqSdBaFW3qB/o0Xm/AzWYQMXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741169334; c=relaxed/simple;
	bh=lLfqWb/pQhfOZjelPjifw1+rGHzNNE039F1OAbFglqA=;
	h=To:Subject:From:Message-Id:Date; b=VCnQvWxIIWqmaGIRJbLclVuwOqTr+AZKusIoCYEZMnNa8PFYVnTlxk2e6dlpS3qKGMkVEC4XJUhBOcKYN5YpmZ5OijFzbhdBTY/U/tczwV2BddSHO2OlTBBnd6lWLSKeyn7ZBDMoegmZ/9qnMR/c7F4k98hCI9jox4wEft45SFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlSKn8R7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlSKn8R7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B971FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741169333;
	bh=lLfqWb/pQhfOZjelPjifw1+rGHzNNE039F1OAbFglqA=;
	h=To:Subject:From:Date:From;
	b=GlSKn8R7ZSVHTczJfEAFH0f4TJZsoMnMjtHK24eJMZ0+dwq59AF0phl1jAQgihwwW
	 Orj5cchkYuztxK6eubjLVj4KtMGexBTkVjzAaGLscnwK+QmHezzO7WIB6Z9Q/7NodL
	 Hn6Lg7n7kd0OZLGdPcc/J6xiOVw7VeAMbPzPj7ZbrjVY2DYmf9gWUfMqdisT88HKmK
	 uUCzetEJgOPMIM8NQ6QaosQTfX5zGjbln23LRWAnwyAjK+sqkYa4hJYPH7lFnSp4fm
	 F0pC+8SaaaAEOYKSFgXudGDpyK4hgjZD3E4+B+wwt17WksF44RirJq17wI5mmCmLOB
	 3px1xbs1FLxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E3CC282D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174116933365.26712.13449013736612274834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1616194d8e60a2da3decb90b7827987160ceaa2eaee41be98387bd0107e12e80
Date: Wed, 05 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741169333
