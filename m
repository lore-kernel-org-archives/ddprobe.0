Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D39527A90E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752226794; cv=none; b=LzR0DVB2owaEGfqOTiOSLGhwdOAZPNCIP2qs90b4GuO6rtFBRQd7c6jXJe/Twu+6Kn6dUmR54EIPoEYmsBoicIOIcr8tbLV94Ci0qZQDK9LKUYgSn+NYesvDZnvg8LakaHU8vUcD7UTDIObgJGX2u3BVvVKZd9E4HEK1PQRnaCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752226794; c=relaxed/simple;
	bh=hrILDCNh929lZjvVZbGIs7v6KwV3Qs3Lw8/HIJHlLk0=;
	h=To:Subject:From:Message-Id:Date; b=PpbWM08s69G6GKsSheOfWfQgWymCmV61AKNxYft2/vRweeNLtyRyo7KbhbUEP/760JxbD0GULsCnX+OwBZa8yYx8o7aFTAZrwKSLJFmgm++Li0GDZTmv0FgUBGCmYB0s2Qjtlfmb4sHeWr1npj2S3VEOqBTUgGIWoh+li7SWfhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS+cnN6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS+cnN6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E797C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752226793;
	bh=hrILDCNh929lZjvVZbGIs7v6KwV3Qs3Lw8/HIJHlLk0=;
	h=To:Subject:From:Date:From;
	b=BS+cnN6PFKaI3NW7kcggx4HRDPvwzZP7BCah3p3gf9BFSBNEeaunm2yd7s1Cy3+lK
	 n97Y6y62xNN9YxHrt5odFTI/F1M55XUnpEFWKmAAtV7sxedD9S78wsKOI5Xp3P3xAo
	 bcRvi9l3Hbme4LKXwjmNZ8mqiv6yVOn9uFiiETkAo4Uz6EFXrvmKcNwdxRARK9ls9c
	 efNfoG8j28FTLG1oLYdUkQlacuwCNCS8GHUTQzRv4cZfecKBQA3dx52cKN8iyABJXk
	 8KQuPJeAGDtEhORMiiJ94+s/OJGeXgwbAnWPng+PvPhnhh55iNw09DqYfMbF8U9pCz
	 G8JcmI7xGKbiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905FBC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222679358.24960.10197822145715966371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0337aeffafed1b7748f8387a6fa617e504b4b89d659a0190eaa98796d5f8356e
Date: Fri, 11 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752226793
