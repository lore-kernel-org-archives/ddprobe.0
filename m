Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACDD279DC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717731443; cv=none; b=lw0ph5MfygarSQVyInyQihy5cgXXmYnmKuFzqqbzk8a4m4Ju0ItVDegkcQgqYan/wM2xvSxPIeGJZxsmMYY1/ordEnKSmpO3ySgshOPP2iQJPe5auObECeQZUNASRmViu+2NKTwU9NEHc46/QuQDuC4mDMdIgcVtJO59rgUeQbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717731443; c=relaxed/simple;
	bh=2fF+IFUs6JwW5M6sVm7/bSYCmviHzKvQWvVqs3ITcEs=;
	h=To:Subject:From:Message-Id:Date; b=nFNsjnvlHO2eW8NGekc1uohYwy8BJQzhazwoauLqIqIDg4pXb3wYRiU45gf8SW97VaHSbRoDuVTpOMcl3EnuoqZm9AUuGVPatfSwIrCVeJ7BDfA7pJOIBFBcgTFMCFlMiT958EslfE6yCMA47kIBm4HXLK/oUcLEsb5h9z3fFks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rfja+tz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rfja+tz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01D6EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717731443;
	bh=2fF+IFUs6JwW5M6sVm7/bSYCmviHzKvQWvVqs3ITcEs=;
	h=To:Subject:From:Date:From;
	b=Rfja+tz1+ibvx4xL6N+FI+2wsRyz/CpDq3jRkJN0mincMvd3VUU0sAXCZssY1t6hR
	 en+rIuNKiAIk9aziJ8PEO37ulqLt1MzX2+PSYyKG6drFW4sJxWBhNWcZyWMUc/RvAk
	 +WAiARDd0vI/vnNsM/kIKfXUb4u+JQUwOgWcTB6KuyFhwE0WJrp21UAYPF7WF0xuFC
	 QkMobnmrVghQur8huEjcKJBbf+RrMjyAjDrmjj0xoI4yY4JIwUb8RN6FtVlwbv+PWc
	 hV+CDlc3K9sbX34wmk99IPQu/0Fp4FXSx1gsQ1n1lj4q0tjzhAusMG2FetnIbGVvnT
	 BVzc/so4NvzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E05C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773144284.23447.17713862929935581355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967834c9301aeb9c49707818596476b4b32c65c9f04fdf0a662f1d9c1bf0afb9
Date: Fri, 07 Jun 2024 03:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717731442
