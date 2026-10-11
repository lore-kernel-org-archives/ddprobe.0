Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B5A27467F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791688834; cv=none; b=P+ymUvoXxyCj+n8WlcY1Iee0Y2s3talF97EvCVlSWgMOP2ilRld0gyLkbxWm+Z4fPxShme/5WIzryFnV2jqmwiV5wFy/xKIutCKcWs2/8oZueyVjLGB8cg6ZVsaYiKvvmtTYMeIN/OZIXPy0kff1KCOQb7jtWXebWrD9f5FhLOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791688834; c=relaxed/simple;
	bh=HM4n9GyUdRSuDz9lb/QtHC1IWNZ8uHLY5rXPZq9xjkA=;
	h=To:Subject:From:Message-Id:Date; b=J0+4Lz+8sM1pdagRIReEAqYvreysLKSh4iMfoqo95fHPKAbC7cHI/btp+2ud9eeZmp6TEzfCBMPl6aVeLPjOA3ArsTsWjlicUe43wGMYLfx+bsDYq5hTkI5WSBnmPYU3ZqUgP/XsSNvVmm0nZVZT8nclxRXB2adQrWpmEZgQZso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyjgnBUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyjgnBUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8152C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791688833;
	bh=HM4n9GyUdRSuDz9lb/QtHC1IWNZ8uHLY5rXPZq9xjkA=;
	h=To:Subject:From:Date:From;
	b=jyjgnBUiaCJD8mgm1SXVOSLLRI27leuZcAolMPSk0ouFBAuIBMNOWADhmhckAYoHb
	 /WcXA3pEoQvtw4EPdFQyljBmbsZyz+SjY30azwbchJs6myfS5rZKXeFhaiPiiLBxuM
	 iQgX/mvr8wmwlWhU12WjaqGV5sU4P5VX3+OdEvJeEYP4PQyDOwgZz8Z9iZTTkdzAWZ
	 uEoUCrCUECPySvDBZUoHkSwAOY5p4qbnu3CvwET+ckvdlW5tIH2WjTkhXAC6lZgeK8
	 19UBRKMCXKnJQhq8cW2uZVi6Y4MkSlnJFG/qvCv8LgZd8M/YQwfFK/lhqJtdo9mWVd
	 qVSZrteSgT7Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACED5CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168883368.14716.4820773298321768671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a953c027052c9c5c9020f4080b3f17d11195a421ddcfb5e068dfa26f3f1acf9
Date: Sun, 11 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791688833
