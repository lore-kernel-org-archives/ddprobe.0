Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE2A38D
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769319834; cv=none; b=XtO/LNHv8rREgg+7vioRZj7Ak1p21MyXDummmUkss+aXrex2WO0OceYkVvNB/kbKgdO7vZ8yziVK8vkcLecXXe/hPC+tTf0KiRoRLZ8jps87DNVrAbgPWxmutSlSUsQCI5HbD6Q3KfFgimDFdQed0raRtQFqakZbZuRTZ3xoP+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769319834; c=relaxed/simple;
	bh=JfEFe6HhcIa/g+cP9W4V3qy01jqGLwRrl/Qwouq64FE=;
	h=To:Subject:From:Message-Id:Date; b=qHYHekXXzB/1CAImyB2euIRGACI0SBnq4dc44ZW2WWeCGN3oPO3QJWA4QhHgNJV3bJSQFxQgQ9vVfNAk1CCi8OGaCM7O08OUD6cL2yjeb9acDOCvkwuaVJpF+9h5lMGBMzkir2QgqwaGIz2R3iRupXIn81GObaJOIXcsXa6Kd7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIGaoNJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIGaoNJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5E6C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769319833;
	bh=JfEFe6HhcIa/g+cP9W4V3qy01jqGLwRrl/Qwouq64FE=;
	h=To:Subject:From:Date:From;
	b=EIGaoNJkYyg3s2wFFG32BcipoQ5kGdk6ZgR/VF26DKoJc6miVdUEuc2bQCzqeIiqV
	 vAcoB0BNAncfOFkFZlaNLcRerXku2nZp/BfmwPjpgZNCIJrkE0iH3w9PodL+MsVOke
	 odaHlbox0I6S/gWURRh9G/JlCnj8LEgfoFuw/zIMFsRb5Pmr/zVZdB1Ww9AN1CalJx
	 ixNNMyMBJ75EBp2mzs7F1Q32w3K9QBel+zLOOyZ0Fnf54RQSXlaqqdV967A7YdN9MY
	 6r6UuSnQuExrpyMULRzxINvvrCA67GovyAVWa1TmrmFcZcccJ7pFdr0lKp852xusin
	 YkdX54bPLIn/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9526AE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931983358.29606.12227352354394152777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f198f1bd01b571dd04eb57e87cf2e1e8419b18fd1cafba78a9df9e32961fd8e
Date: Sun, 25 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769319833
