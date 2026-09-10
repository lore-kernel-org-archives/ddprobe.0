Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7C93AE1A8
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789014634; cv=none; b=j1oskMA5MBwFjS/Azwgxkd1jjdJ/7OoByry+DNd46Pfh0g8qCUDXeHvMKBYFjhtUsvy+95kO/7q9kYY0fNLZE0Oge8ZzySBxoz6MgK3YkaagdFiZdcForj5jXXicnNoK6AVC/wspoDhTBaYC4m78Jmb/LlcBO2w9RN6lJN3wUvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789014634; c=relaxed/simple;
	bh=b5tAIAU1wZregU+oI1LmDf3nnWkf9M2Bzmb+eOyvsYM=;
	h=To:Subject:From:Message-Id:Date; b=G54HY9ioPJ5dNISSrzv1vEm6fpI1wQCMXXYoOLNxoivloI7gMxKZdgnkMg+k+Wt/EKp6SbaAlhUhUHCHefyZyfWPaz8qSODVGKFCoYst47guglttpYqvcjF1OfP/0Z+w/3EleDRfgdQCV4HAYnSnegwKyyzQ17odi/ydpyDXx5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqvki1KN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqvki1KN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84FDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789014633;
	bh=b5tAIAU1wZregU+oI1LmDf3nnWkf9M2Bzmb+eOyvsYM=;
	h=To:Subject:From:Date:From;
	b=Pqvki1KNyYuxR7jXHOKmkNU8syxOPFLdaoB0rt0I30BTltXToz06iNFrXDjzsjhUG
	 0NuePiBiyPtwUcqxO0eRb4tFfd5IJ2vUZCiSs4NMKvoKg+OMHBvXHucFi3YnGUetwi
	 fN2ktnTeDBUiyLmvKIyqrgE2G4jdaywm584pYvwsXbynHVkccAtm0PP5JZRKbknBWK
	 +nPksHXcPbVFKO5ZGRdszsl17lIx1fenuSCYZApkj9yfMbEZvIuyH+IBN61oTgAXD0
	 I1lbNsy8hi6OmDPHVZssN/OYDN5JatRMenBFJRHfUcTXPKIxt/jY+L5NFjBaHkSW01
	 MRe+Xs3h15EhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B025AC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901463369.16911.15450546094444236752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21cae98989bc1dbfa8e58f81bd1833d65d5907f5bc5d8158323daf9b5814c2d6
Date: Thu, 10 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789014633
