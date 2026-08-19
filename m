Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DF14078EA
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787167234; cv=none; b=il7VU1GC/VA7b3GHLYXo4TvuVhQ9+OZMB6WzfMDCM72CLPziGn6WveXGpyQWUrMNt6D6TLGclgQz6oX8dOMPE5CSIVWyJViRuIMulajnte14Fvw2vRypKasLIdN8HrTHU5xDLLBw3wb8tudEu5BuV60yvxz2EOOvu565gRBkeyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787167234; c=relaxed/simple;
	bh=9xTstGYvGpY2CGY28LXp5rMoFu5fjhEKC8pgaC9bV+E=;
	h=To:Subject:From:Message-Id:Date; b=UaqSf1BSHSoIU5Gzl9sjt/QASZmiH/1qFIqkfddHGKNpgKiTNn9O+gJBlw9moJZBn2z/ujQbw68muTYA3HTYYTSa1b85BHicTnKk7m+d3WqKxkYGePMkKy/WW/sM987edC8wEvU87oGtAPGD9IYvqYqp/v1U4ExVUVT9a2g1urs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Km76Y9qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Km76Y9qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4230C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787167233;
	bh=9xTstGYvGpY2CGY28LXp5rMoFu5fjhEKC8pgaC9bV+E=;
	h=To:Subject:From:Date:From;
	b=Km76Y9qTdmlnIur97BdMGeO9H8Vj5D+Pefr4/qvawwP8H2oSpJzw561tIZPXbY4Go
	 lm/8KncQlLBzQXV1O9h8QbhQ+EKlQrt9O1y5giPzvg9prR6Jfn+/mFFB4udxVC/Wlg
	 1yQ9ECHj6JOht42W4aamqrtmbn5L3x7TFQWMBI4u1qi1h6srEpIIPI+dCELZPiA4DJ
	 JOAHWxiK6RNi481YZMQlynfvPDZXfQkdSR6J11PYObtfv+DzEUXAHttgM2y2Q68EFd
	 F0ZalVI7INDOPPtglmirErQF55ITRYUBkbE/Nt2GZudFVOpZWPK7KNFEsy4qjZTn1T
	 3eCYgF3Ry9bLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF1C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716723369.11182.15860603512441671458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5846861c764683bc9d7e9c34306a3124770879d421804d47e7875b8d09c23b4d
Date: Wed, 19 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787167233
