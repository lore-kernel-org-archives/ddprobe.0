Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4338C21504F
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744996794; cv=none; b=bhbKRkrZp6mljhKbUxBNlshMZAsGu4BI4lb4NOrK1Dw34f0tMj4wErBRMDZNcjkVP2iV3toSSuNOZP1fv/QhJIyoaX6YJ9iAm8ad56MgJg35R8ZO61GVD1fh5jMJfVWcFA94kOyLIg/ymEVdM3/s3Y/4KgNVnumIxEdAcol25t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744996794; c=relaxed/simple;
	bh=hY1iAC3U6LwBez7Ss+caM9bs4IFbIicE5LL1aYYUBAU=;
	h=To:Subject:From:Message-Id:Date; b=TEpXqbtmh0cbXbY5YojaVRnMpJaDgiZ6ncMdVCMyQc0uNley+vtF56Vknrqf75KRAb5QFRvdl7Fv9Ig7Wae3emPk2QqJHC1QXHytrQ4C2LcG+x77Cco4IPfrXwjKdrb2w/Rm/yXLB7xXRX24qeoH1U1l6gscb15ovVO3zhNC9os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJIutV6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJIutV6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08EFC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744996793;
	bh=hY1iAC3U6LwBez7Ss+caM9bs4IFbIicE5LL1aYYUBAU=;
	h=To:Subject:From:Date:From;
	b=hJIutV6hnxnkyYji0ihL9MmITfozDQV3Cbyj06CioZocaBcis69VU11xxenoViaWt
	 gRvnM8cpawPWEpK6UKg1zKWF9uKzQlD1xgpmWZNpAoYpecovA+tex1evLCsh5m6/IE
	 +iHlAgCSIqWhyQWhJvCT8u9x/eGiIYdSXR1mRisoIipXi+Jth4loZtSYMXmrRSoBl5
	 hkFEbd+JAtmFeVPOBNByJj8nhktg1EQyKsaiFFyO4vTuEE8BJDz2DOhmKVR3mXahDi
	 93mlDHXtEUNt/UwYbs1YR2WGfpnDpm/g+sUFjQfFnkbfxOj/uAwTj1OCXa9GKSPoNo
	 IDGn1+cCICKCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA7C369CA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499679360.32068.5168123485092786303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fb065490a2273bb20aa1f0c0657f4c7d62eb4bbc2c5b1c4b7a9ed7359e9fcc
Date: Fri, 18 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744996793
