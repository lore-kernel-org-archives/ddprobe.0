Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC93157490
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727427954; cv=none; b=I/KJZ1w7jU31iCTtilJ8BGYMGP9jacVXDWrcdMwC35znkk4J2GeS/MGFc4LjLTBQ63hzJYpuPwtMp2d8/1DZvppxX00DJfNPCWJ0ciSNkYDRvupbl3n+/fwVAuKuOV029OEUrdFqd+uZBqLju1QrrxX9cBHHX++QyEHPYkimL+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727427954; c=relaxed/simple;
	bh=nP0MFz7AJxqvKWBYPn0RDPuRC+OhmuTwBQ3o6teeYC4=;
	h=To:Subject:From:Message-Id:Date; b=VujxeU9LVTV6IID5HW86+EaC/GuTVbRWXJ4gasx4UT4Q+d1s3TlFaR104G+n0Ho1bm5w8wwIuugMeVyq+wqvRydE9VAg8ayxTNJ3BicfLYqy89UhI+qvj8x8rJ9zO+ZAry9+6lUklSfLJ6w0TNjq22d6Vf2GdaFWIoNXJe6kSgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEoQbAVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEoQbAVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB88C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727427953;
	bh=nP0MFz7AJxqvKWBYPn0RDPuRC+OhmuTwBQ3o6teeYC4=;
	h=To:Subject:From:Date:From;
	b=iEoQbAVtoI11NBL6wNvkFhPtOlAogWWkpbheE7Q9IMNZUfBbQ7/RijN1bnQvEMLz1
	 j6INeEdPaDnzpU0cAmKr5XkvFnzr1mJY1V/UTydtyTNWaHgoxNGAQENABsv+WquHwz
	 8FjSC0OfcBkMLDNDIHkxdtX/T2fWvZFFLDqqXv8KtkR2Cs/utSJsDKbILxrytC0JdR
	 WYkHK4CgPajCHPJljAXN6XUsgccVI+3pqckM/E90W3KOj7O+M5GHcXcl//6sCy5sBI
	 pg+7MJcJdVUdvfpBZjsk3BmRm1o0jQc8w4aMaYb0ZSwRk9/Mog18i0arbkBj9O3AYq
	 ArSNGd3aUdpyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B29ACEBF86
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742795362.2169.12975276084856984232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11967db88b8cd727b0860262adfb981355c4bd0ea01a3884396ca9ef4c0a6e8
Date: Fri, 27 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727427953
