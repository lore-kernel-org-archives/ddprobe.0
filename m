Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D6722CBD9
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771146894; cv=none; b=iLLHw4NFhxd8UUkH5gFTyYXIIz2x2qVOt63PHTEOC7BDcCAwTcpDG15Ni+J/nEiQkgiemDeWhIIiUcu5SwFsk786JB1qi2LQlCvfRTUpim2BHd2ShKTD6/NUDyy/CGgNrNPyYDb8QpVl48dGJF28axFAvky4niVRVn6rHY56524=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771146894; c=relaxed/simple;
	bh=QDvtLtifzP+JY8BXP2ePy+DEN2nShWy0V5Rl7FWKSlU=;
	h=To:Subject:From:Message-Id:Date; b=lGW9LknSZLOGCMTeWcUdfuMDmmPz3iNkXywqoBZ+aaRL3xtviV73YcXjlx8zElkKnROds2vUtFjokyRGsSZgC85bZ0hP5sPJOMBu5N2yt2orS+uM77N2Y3OFrKyqFFNc67ZUuO7SsuxWsJnT4btVr2VU7hmiY2SqE101mLwghx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdRMzbO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdRMzbO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6043C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771146893;
	bh=QDvtLtifzP+JY8BXP2ePy+DEN2nShWy0V5Rl7FWKSlU=;
	h=To:Subject:From:Date:From;
	b=sdRMzbO4e2iyv3ms6FmhrwzeWSOkenc9Mh5QO+8cTB7GtxGOi+eOKlJ799sZnOf1m
	 knud5DZ3/QTCKXzONGS3rDQNHxWZjvlw3Evi9jt93hgKChMt1LYjJIEAS5q6VVVox2
	 9zCXbMP8wXbZolQs426hx2hzGFso+UvwPvT0Il06Eyf7Jf5dvLcso3vWFItfm7DkWW
	 v16OsaS/3de6qV65Elm0xPFWb20UatX8qyfE96Yy2Tetq3jdQxgTc9lGmkhYAM2vXw
	 G1nTkGW9zqxknGgUbzjeJ/7nqcnllq7tgfRb0Dy6NZN2IXCANsc+0H8cY0G0EChrkZ
	 FRVRdrF6vbOEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9867EEF586F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114689360.1700.824252073572075172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460b60fdffef4a78e4e69a2c3d683d964d21f21e1105df4c08d3314e192b845b
Date: Sun, 15 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771146893
