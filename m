Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D6931196D
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764454974; cv=none; b=mWmIgTrPTQZUHXnXreO0n4gc/Cg4S7q4OVw5JaJDrOYkV1QXiS3ex/CqCKBFlXGkoUk7FX/XzIRGdl274C7MUtYf6ImTPli3LlpydjT80t0vwMov8DkbJ6/jhbioSbNlGXUTr5hNe2YqyMHhelMQS7ukQQy8EE3a0gEK2UeDeJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764454974; c=relaxed/simple;
	bh=Do9bVHKC5w2C0G3quZeApP31KZYltluHmvYEYxHrmsE=;
	h=To:Subject:From:Message-Id:Date; b=Ov6RfvqheXMSLll/d5jyRoR3HbaHwIAbhrMjXdduxD/fdAq2ac6OSodWgbbzyrGAYwH1n1jyeftWxlXHsH2OygpZDjPXujwQAzSopfpadkFW5sKWdEzIIRPrCmCI3UGUgTSb1gnavH2OpKIBJbq9eqRP1Zuz9VSISohlFLeqbsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZX+FUV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZX+FUV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF12C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764454973;
	bh=Do9bVHKC5w2C0G3quZeApP31KZYltluHmvYEYxHrmsE=;
	h=To:Subject:From:Date:From;
	b=gZX+FUV0OruhJst2y0aYWBS6Yrg9qpQ7qmxAYKS+TGdj272g8zPwbSvfMrvwvwmCy
	 q41Ud0rD4exFvs48p5IjbC7Kv8843iOE0oVWw24I7DPWTai90zSEb5CXN7CyfFsrff
	 b/OU5Dx2OnYJ62nBPQMxEqmHwvnDc2zg3CH2+/zg7ZdjmwVgEI4bMzAeCFkhrhNgRG
	 Fh8wWFYe9nwIOqdTXftpxN+GFkYbJjQKVOagUBbVaZekDfSMr6tc1YrQM3CDoHu0wh
	 oxgYymX1ZEHngUQH2JV96AwiCPtrW/HuMkYfO7AsvsY48/ruJQY6gwBh2ma2B/6WJ4
	 hUWtpUfZLkaDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B08CCFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445497360.13129.15957299286804961205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69451ad25369c8945784f9384bb608978b22e25aa22f7a0c71988d2f265c0548
Date: Sat, 29 Nov 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764454973
