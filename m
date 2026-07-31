Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C1288C81
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785477034; cv=none; b=TZaaQXBneOXPW4h4x3CiAZ7V2GrXYA3UFiiMZeMFH3bs8c1p4f4P92tF5m+PCuSr9WSPFqlkObkPRdOdBGRVKRl0l8PZRBP5eHwM7EEa0v3oVMtKgM3t3N6tZR2b85MhA+u0lwfyj0aqRzBxWoZ4mc+5cOSYErZfm4X6fz2Q9qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785477034; c=relaxed/simple;
	bh=r1V8KCBMhhpcdyFkqYTa5pzd6o1Gz/nSrBwbGVzF+IU=;
	h=To:Subject:From:Message-Id:Date; b=kV/dt/JvM1fhsxQ0FPDJ/6fENSOwlfFWAlWB6gfGXUFc7TZaD6QOTtvo2vEbhm30nYmo4l6SrnM9+600uWXurUvE6Y2noIlRi9e0RaMAODvFXoeBreU+1gJU8GI/oyYV2fkPHrgnfV+2dLg9fLBnCqFAlkG6AUVWJWZID1qy9iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7Hg+P9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7Hg+P9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A9DC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785477033;
	bh=r1V8KCBMhhpcdyFkqYTa5pzd6o1Gz/nSrBwbGVzF+IU=;
	h=To:Subject:From:Date:From;
	b=C7Hg+P9Qj5fMOHe//DoInFeawGl/bb4r43XD5PYfpqq7eANrMl+BKfuPF0z7htHR7
	 5pCNjJa3tFouFRF7P7v93cQD5flyAz8S1pzZx0mVOtv7G3k8REnBeblW8nMWl1MI75
	 QiyuFqR/9QqbqSWJqHRJVYQjIJQp70OsK8PjGIaqjwlV84qA6gB+PFPaZeBFar/fw0
	 rQaUA/SB5vxgcfh1ZZGalw1FsFyRUE0PAFFRRMRUFFRe1DxslewasRE3zLKy0E59aM
	 GRyNgIIqma+fdh3cA+0eXI9v2WS4RjfEOBi+DFHpT7E9g1u0sDfpRFr/uK3qKNcKXU
	 o5UbZvIU6FmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F59C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547703372.12532.14128945330367828323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b750b523d89ba53ec758430426a778cd528f34ee65d93069a034672888fe781
Date: Fri, 31 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785477033
