Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C263715E
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 10:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723373755; cv=none; b=V5qCGJkar9H+6KRlWwVjPyfpe9ebXU4LcPCDtAldw3yhoQUgnPGsrDQgUHUweHgYzMUTCDcyA9nRPXZWdCrpDMerF4TqNpQ1BFqop796e6JK7XVKZuHw0AcsqLP4Ga9J0zlf0E18lz0dqsLetyB6GG5/VX/LZvKtEvNGXOqax58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723373755; c=relaxed/simple;
	bh=0OIyoV/afWN152JV1MLfZZhT0nWouwWScEYv5RSzB/c=;
	h=To:Subject:From:Message-Id:Date; b=o1K4rONsXs7FQM816OFdUZPqXgEIEAGNFwOnISzW2OV73CAnjPhdeH9v5NLMkWGfd1zo6Y89t4Grh7ytMBnzVmU6hfrHAhJUNSg1WUpKSmg+3zwe4/ysS53xBhDs0cEKzEu+ZYzfrVyiN7X20DAbKZzn5Vv0Yp3L0eEC+naBTEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACWXYKUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACWXYKUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A49C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723373754;
	bh=0OIyoV/afWN152JV1MLfZZhT0nWouwWScEYv5RSzB/c=;
	h=To:Subject:From:Date:From;
	b=ACWXYKUqYpjOOYIsxvsCf5dMxywdc0FAX859DT51OvgMHXFO7yAuNqBuKT+qnOOKM
	 R56CiELh1ZQXyDa46Z1TY6/E/f03vqGr8obPX6s9qvkToGoaJ9Dy2PgzZSEQttNv92
	 mZLEnMamAKrq3Hkpxm4hBSAz0YAOFAaE5GxORP9N1r/wtvbjRTHYEoB+yj5yjcx3p6
	 Xq9bcaltjpD2YblJ1s4DvvyDnbOi8XGlowfBhr7EyMXiNCjcoNzReJbYAZYcZEHs2W
	 HXP3RZXEreX0ARwk/VgyPlMYZNDi4Jq+cEnLkRlWEqgTrZta9fwzRPIFvvL5bCjHrE
	 OvSj3eN5ziFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634AC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172337375358.8095.9218731852819741506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8623d6de22db294a8f47af04897dbc96df2992dea4e351ec964d18e96a2c79f1
Date: Sun, 11 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723373753
