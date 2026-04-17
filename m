Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5903531195C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776456454; cv=none; b=qQbiyZKVL401knJsgSiTQ5pqqSzfEGHQJA/RWLGnn3OUzwwxBzz9rCGoGXt8j/wH5/JqRaIPxQhB3E1XJBdDJ3h4sUEaUcSKg1J5qEMkxfX0okStcuR0JOv8TBBydaTjxLGRq1BSJ0pqwh6EVqmlD0QVuNI2YAyTpQfHBki0apA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776456454; c=relaxed/simple;
	bh=5xVZFsTApyy8ATOwF1qjINxx9xkZAkPyyVZz7T1UugM=;
	h=To:Subject:From:Message-Id:Date; b=Nz5u2DuXWtnkueqZG23s2fNJqmusPDBSwmYAvScY9vphiPNcerIS9nGl4xOmXksNPAxinUOQZZv+D2iJ5HeBvo1TBR9j5wXq/qysw/lZOISEhb8jy6e1uYDegJvkRSkWKQ9EH3FrLP/40/sPcTod4PRY3PYhPq0TIzyQCfmKmkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ygs/LAzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygs/LAzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B62C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776456453;
	bh=5xVZFsTApyy8ATOwF1qjINxx9xkZAkPyyVZz7T1UugM=;
	h=To:Subject:From:Date:From;
	b=Ygs/LAzNuf7WMKNg6RvUTXPtJqxzT1+2gUB+K5mERXmRdmDjOgnrFbFe+qvcDelx1
	 aWgM+r4MyxmPa8JC/fuYJ9Kle1qwICj7Sl7Ejg+REe34nYc2micODQSW8+S6EndH2c
	 UED02SkxMNfbA3Mn+RKiAAutGTrlUYasIR2t3PN4cF66DwbzbfYFN8u3RpZ3JbE3me
	 BodjeJB29K9Nvr77DFD6FbxJgszSvrmDGxgvseXR0rmaU69y4SZuD0BfCX0ARtld5h
	 NvxtNs8y+c8fGq81+/kDgVPbeZGPyRwx8q8lxY9TlS59KSOcxlf1MOeO9wM1M/7XGX
	 pohhpg8+FHD9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B2F99C60
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645645368.18289.3462163769920264045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5053717ddfd7cfa9ccd621d7acae3c9fcc0c98902c1b0af91479f088e07f584e
Date: Fri, 17 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776456453
