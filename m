Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAA35695
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754584794; cv=none; b=ASdEbC34Hmaq/bBAJ40EetprwLEu0+8iK7qx8gOWZpMmhnEXxFpHgENFpb0wdrQVJBCM92GokBFFFlGpBow8a6kigqzsrz6vECTedGOFkWMfG7YVINy1OcxEWpCNYoFkRs9MwAJt6xTRlwdV9UnOvZlVv5+TY6nEoDpb0v+gxdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754584794; c=relaxed/simple;
	bh=PZ58+LHrj9vG93xXdwc8HlgHjrMwgiaH27vZV10ix4E=;
	h=To:Subject:From:Message-Id:Date; b=VAPK+/dK7FD0GxYK0wkin1BEm5kMxUygB0bGpCOpgVWXy9AHqqmggW3CBd3xWvQMmGXTqwxskbj5fgN/IPJYWJ2H9OFW3KDylruE4Y0TDS9pfuDT8au3tP8OOkpWJAQPdAlxAGMm3Uaw+Tp08kL6qgzER5t5pq2RLDME1hnsLcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrP3A08H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrP3A08H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E8FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584793;
	bh=PZ58+LHrj9vG93xXdwc8HlgHjrMwgiaH27vZV10ix4E=;
	h=To:Subject:From:Date:From;
	b=jrP3A08HsDa1dsKWrJu8dHWNZrxV9CsX5skcxt9VelFfawjD4fgBvnBrfcbl27bHJ
	 cTJtqd+ELY+5jRzsOcXG8i0B5z0XxKdZaRP8Il9m7gMGYKrLU97zYjhmiAwMMSsBAk
	 WoWT9kPFc8M/yXFqjHLjtsEU31lpZFNSjWRRMsiFTqmH12Tu1DjF4C5Px82vybRU5Z
	 0DpOIjpzNSYsS3/WF1kBM+A0jUa5mozmHMClKUIsjJEKz6IK61vA/SUQvZy0tm0MQ0
	 KYFAWonI2urj+GmwbLF1qu09CEQAcMwNZ/yv4G56I+Gswbc4ozITf+2mZmF/zKxNH5
	 d5VhAm/8alWOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9356FC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458479359.8751.18235738839068459775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717379d56a11411a11e17f31073c4717df810cfe5a44fc299a18bed750fb507f
Date: Thu, 07 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754584793
