Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5326239A04F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788382234; cv=none; b=hrT/lhVfvVhOp+xmYIA5KJDZJ9V3RaoXfTapxR7uUhSUgKM1dvIjM8wrI2HhpD1GPrkh+lBQ/hchnpwhHqilobz9FUTnTFht8zdAl17zCca7669iraMSWWv8CehqnHQUkh5Lz1cPk7cSLaJgSGfkbbQZhmNlrgCVKBox2DegM1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788382234; c=relaxed/simple;
	bh=f/e/b/uSA65SxBiRVSZQYy2R15F6oPcFpRdG5cohhBU=;
	h=To:Subject:From:Message-Id:Date; b=fBMoadv77eYuiO/RyAHLxAf/m2XpOktrV03QpfldrBP7MykZ2jmBNkirDRq66sCA5V70TqCPLzkj5nu8pWWwv9EuM0F4GqoVKLaITHIF/qUXvGNBugKUvqORptmIRvpmjrUDyBm4YoJ/bjUTbxgumCUJR8Y65y2jIEWVnsbf/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlNoiv2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlNoiv2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD242C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788382233;
	bh=f/e/b/uSA65SxBiRVSZQYy2R15F6oPcFpRdG5cohhBU=;
	h=To:Subject:From:Date:From;
	b=FlNoiv2LrXNdqkVWjpUdVg5uBaONlQAmB2BBpKop9c2yOM4KbymVXntuUxjjCb71o
	 2QMvGzHWBwuFaDwv0PxsCQkdx3mPotuZLQYxJRJ/k4kdzVRbH5iNzb8j7XNILQMM23
	 UztziR/Qrz7ZjTwnMTdDOIxF2AS77+yd9NEaDJRqv5Je3uQKaeD/2aZ5tY6dnWxaRt
	 2HlzWmU/SH1KSL7YRoNRPkeURxwlkyxAC6PIQIXDkSlXuNr0YwcH3UvLUw3YdBGqpF
	 GRW5rmDtU+MfgYyb3E6VpTBmgoNfZ6u2vjw8q/UODEsnbTl6BoGx/CPGe9Ggvpduba
	 5LDCj62EdSWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE30C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838223369.13164.11835095265428037626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7fe68f0522e9f0e3cdcdbdea6071905e7353818a2d1c587e5cc27b5c790f2f1
Date: Wed, 02 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788382233
