Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543683AF65A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783543114; cv=none; b=EBTXjXrphP7sAtQSlhaqjoqUGPzBNqxOs0s1zt/Aq5ddam0GKufDvahi4AqfHZ7PuNHEG4cwzC/a4TqYVR67tLMvDhUjLFfIOXqsTqPnxmQm8kqJsy/AeKIVb7LQRoPRoi7a5tmrWAZxdaVKCVOe70Dz/+Fk5s7aktlReis6J9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783543114; c=relaxed/simple;
	bh=/qk8SKQe0Q5nVl1jXJaI8n5xuNk2IwaJp08SK4kUfSE=;
	h=To:Subject:From:Message-Id:Date; b=JK2Uz4noFISKxbUG2QOsnQFooGCyhL++aP9QOfki7LxW3VtMER8kdDQ96z0cWFKiAoyySi/Osm6l8oTO4wftdNSuXlT2TaBwxKLcuGgO5sYBmbx+eReeVAl9ajv/FOBR2mAmHijj434zIkwJrE4hrMTihPnilLfiDAm0TiXByeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWrNFBYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWrNFBYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB67AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783543113;
	bh=/qk8SKQe0Q5nVl1jXJaI8n5xuNk2IwaJp08SK4kUfSE=;
	h=To:Subject:From:Date:From;
	b=QWrNFBYFslJ5y8vjWGE8DrdcGS4y76YD2KbxvVHrIC5ZjBl+YdN5aDjiFQ6G5SHb/
	 00reUwrgWYlOPy1RZVMUZEeIXJ8VgJB7VOe7ystNuImsiwKxB36NrB619sD7i+jYZJ
	 MTem/z4EpS0GNimRDMlSzeymHYvqcird2qb/k+EEnuKRqzGQrFaOOoMHngi6rrCOLE
	 13NE5fFyDOcMirD/hNa1RPXHaPFP/fOzPX5aVmVrPGPitoJKkUWHG7IberMdaHeDQV
	 bZprwHny7GqMYSmk7/ek9OfYYcW6rpKg0fhZWi4SRxu7jOx7IjSOkhpX3YbCD6VMzU
	 3CB+F3MnZ2UNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9911C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354311368.22100.15978744947041802462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41dc5ebdb8e44116873b3aa2a98720101d26d18327a3c8f7752a456472852c63
Date: Wed, 08 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783543113
