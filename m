Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7E412E7E
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751086194; cv=none; b=pHAS1V2jFCv3jTALbZV0h9gLyo4NwQbBKW/bv9kqWl4DfMaDq5kdv4MhGkaGIdhvek34hUw4KeuTscdO/Jhuoccgo4ubNy1QpVJJK6NXzA/Rhgsr7kBL4j8tU76Q8M0IwK4PMkxcxLkiDuyd4TI9IbYEqZdD8Qkf1CvSjT1v79k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751086194; c=relaxed/simple;
	bh=YbwfkaPoTZl74F/rd1MqgQgA+40q8ErqnX6G1sZ63PQ=;
	h=To:Subject:From:Message-Id:Date; b=GnnMBx+WaowD5yTVKcCfMwefUqR5n0mdMYPtwfoTsgUkqnCrr133a+At3ppf9Z5EP1XnoAeq14FluULOkE8Ii+fItOYtHZ+NrOR5wjkftQyXCLTOAfHAYqRK+PG3110yL6TGtpK5UTl5qP0PM7FnkFwUsOKUCq0tXn9+TSHd+6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/wNYlEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/wNYlEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC612C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751086193;
	bh=YbwfkaPoTZl74F/rd1MqgQgA+40q8ErqnX6G1sZ63PQ=;
	h=To:Subject:From:Date:From;
	b=O/wNYlEGryCmtrUg3AboLmOErl/ae6/iCt7aGHkmHLaAS/MAGUxfKTZH6G2ZjUG10
	 wNo3fiSspPXouSJDNsZUPqlwwa42yKW7XmNoneQBmwlCjOGhphmF/COMgw6yvl5Lf1
	 2Xhlda8ZC5GqzbT+BjkUd0CLxz9DWsYf22P7uJ+YcgZDhbxpRUBwCcvgpTdQl6Z9ua
	 +/nhAPr0kIjCWD3/3rQ37MaThEKq21WbjppyU8LJRXcuaPefGOtBE3WeniVFTTL1oV
	 p0Kwgzkw7gEScpT13E4MtDWZlgWqb0y75jqK9zoHZzw2rjsPIeuPMPw+8fluYxsN0g
	 0BJvcc7y2pi0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DF9C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108619358.3507.13587712732179004388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5f317e2156e560b6db9029f25f327d95a9741ed2d14f9990004a108e260f18
Date: Sat, 28 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751086193
