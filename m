Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CD130F529
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760682595; cv=none; b=opn/f4AXC2+16OBHcPlQ2vM2pHob+I0ekjX2TZCefVY9/C50kRBV2zh7Kkjl9J8qPqEMktCoJgLuxB+wRJwIryanSLK0gVZJ6sgsr1W8wGBiu72SAHSzhFrF5s8O+SW/bqcP42c3iFqEWjJfvtJ7UK223lXSMVLDUG/fPycEaZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760682595; c=relaxed/simple;
	bh=Jv/cREn6m2qP/9nZKkPDlD4VHrh/P2WO/JzuxHtYGe8=;
	h=To:Subject:From:Message-Id:Date; b=GAAAbCZIAw7z8DDx2FdRGLOQa1I9bQTYHMuz54TzPOuLTecCGmLzq9n9Kd092SqWrymRITIrLdPsJB0wsYXEVSCvuSpy2rhXcIP59iy5A2iVPbSurwg1WvG47pYj47sZpdCHiemF7n22kQeHKeSzQcUiF8keGyqHoAkgQbTQX68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef0xtol1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef0xtol1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E210C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760682593;
	bh=Jv/cREn6m2qP/9nZKkPDlD4VHrh/P2WO/JzuxHtYGe8=;
	h=To:Subject:From:Date:From;
	b=ef0xtol1xtvIoaVHLwIw3jq9Klh0+h8qfqbGN0+hAxf7uFXtx//UbvvYdaqd+SVpV
	 9UUU2+PMtja3OoYMML6Hf++2yUxu2rymoW8W+8U6ys3haVeBxzI4KG0Ov6W/5O/VHV
	 w4PKOa2QT8wFry/mv6B+QsgXPzC/d0mFI/xzCypUELjZTMZZ9yrPiQ5VH8Kmi06zOF
	 ie8uOhSKkZuGGk5UXxawc3iZKYGJTQWUV4OYzQWs0kQOzRrIjrhCgj6ZRRt6mF4Iht
	 2IWANzyIxF+mn7v5517jsqfPUUD+qYcSgAmxkGULUp6L9zqv+FPInOuovR9fVyPtag
	 2TDfxT169eRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B0CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068259357.14229.10962354214190572952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c9fffb700fa81f0ee7242aaaef9c01cd2b9804bb3b89d671c389d80656fd17
Date: Fri, 17 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760682593
