Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2666A18FDC0
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723007154; cv=none; b=KNCnCTbLXycxJJrF9dmHW70L4N6akyEbjehtzlbQwi1gtDjDLChB1H5vrkc4OR7vvoczKj06VJRoEH/RZv/YedyhO3aRJ2QaQeIhlM3XYNUSwJs0fUqUSNgGoV2mLgwSkfFQAr0JfNtx3WKbb4cIfc5TGLBNcvd/f+KDaQ9xm0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723007154; c=relaxed/simple;
	bh=0EY2U2PBSWZI3SD6CK4puDyPd0TFqYdFIgBW7WfC8cs=;
	h=To:Subject:From:Message-Id:Date; b=c4h8r7CahekRIGnfRTBrtp5j0PqIZga16mZsVHh9lQ1//PsVLAj3lhKenbgk/L5WPNigl8Q/rwIgmqmnTkVXWgBJfvpbCSWeKq2EGOOoTzmCkzHYsuu3Of9MzajywFGwiG98DVlJXvKy+xRFVwdoRrONqcnGpK5/BHqKh8iEK7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJv0DTTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJv0DTTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D02C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723007153;
	bh=0EY2U2PBSWZI3SD6CK4puDyPd0TFqYdFIgBW7WfC8cs=;
	h=To:Subject:From:Date:From;
	b=XJv0DTTA1WMFZ9tCR7IW4zCec2VgKdqjPTVKZl2AT88AdpY77ewWthaqXn1RFp22+
	 cJzalTLuW5sEImgyXOWxQYyey2wlsMqRk35FjZofyuVNWqkjySwnhwf/A3tAGA2PlV
	 q2cnJyyCdUFHPq2kJlaNRpDX9CDHcUoFstYgmhtGomUkoEnT6yJ2aIO2kLlrp5gIg1
	 idIf6DXO5KvCGsv6d5ZGtQX/hC5+k2PP7EH4UkWi88j4e46qyP0TLHlOKpYfVk8GTz
	 K4c/NfIm5K5H6QYn+5h6MFpLNNsT7wAh7+Fde5b8ZNvOB7k1G6TAmM3UbvjAJfG4ZF
	 PAD/sRDpQUp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91403C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172300715358.16145.5981376959907499039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682d117aac02f478da7091055ef1586746eb886122de3bc88a900364f28b2621
Date: Wed, 07 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723007153
