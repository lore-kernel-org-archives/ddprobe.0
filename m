Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171026C398
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751374194; cv=none; b=LMjFubN0EXjnvbyH2w0O1QzxQBZKUsPrqgP3NbKepIt8+CSgm3WH+I3FBt9GcF/8ULmmQXwaB0UZSf3C26Ct5J9JUknumc2wvLE+hW6GWDGwNPSkazhRrqCD5lbD2EmCsFnhIG225u2ciroV3FPh3f6rBqNlz6N+g0PuchebqmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751374194; c=relaxed/simple;
	bh=LtqLsJmdpBO7NLHSGFepw145tt4RoszB0G2wrLJoGUw=;
	h=To:Subject:From:Message-Id:Date; b=NbibHoaUi9gO/BIXAdJAoeTW5ipQMugn6vOMbVB6UgL2XvYDhHVjc35B7OMQB6VYh9fyz+Uk/f+1+9cMt2OJqlH74KTIZku2G/HtL7um2Up+wJdRomuYpyyXCHVJ2D4XCMuPQXnlf2hKrg8XKUdSjq4dbL8l4JMOGV0FIBW63F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poRzHA9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poRzHA9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F08C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751374193;
	bh=LtqLsJmdpBO7NLHSGFepw145tt4RoszB0G2wrLJoGUw=;
	h=To:Subject:From:Date:From;
	b=poRzHA9DLI3DLNsVS6pYd824oQ/xd68ZC2lCf48/APr14vqP+WJh9lowwU8bjuxNi
	 vHcUfOw2dEJGoKGN0lzvIqT7lz3xh/f1ACV4HS0Vc5IPl3ZirnqROiJs34dmIpN02v
	 cCswxTLPVTt/DPwGLPy+vhYBHPor7iEkcG0GsLJZievblfXSCk62oEhUcPaJQfZrz+
	 hJfYIJUEIC7jCJNoG8ravGgRT5AhWtyIUM/BMViR+RHM45FKWgsi+5PpLosmfkkZ0T
	 NwQz1cPrwoLlmhb4sUZOsFDeQOL0c3z1/3Cu2hMwOoELbtq3AXK70RJamsoqsfgTRE
	 Q/hfz5c78haUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E98DC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137419357.1147.15355424205755965226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff3eef6b52c29985af60a47dcbb341de61770612fef84c90d0730ee399336e2
Date: Tue, 01 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751374193
