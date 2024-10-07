Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428ED2572
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728266154; cv=none; b=e2cCsR7ebq/Am+XUc0QIvlZ8NmarF7SikeKscJynqbM+3UdbZQDAA5k4i7lTO9Hfa8+qCcxPVSmrN1/RKqfQ2f1ler5qzB2WiCLQXaaQV6r1C27AJc3VFW9qyVBc7ZISRp2iKbZFzM3USa2VNhcqj0JGnbldozPtDTYHXyy5qM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728266154; c=relaxed/simple;
	bh=Ai/IaXKvu7e+vTLS0sIldfNBBS8+2KY1Rr0rCnreO0g=;
	h=To:Subject:From:Message-Id:Date; b=oHgKqR9SVfObU1//jKshDznG4J8xbvcYudD4ZA06tCI6UlEAmb09uk1/zA332DZ8MkvXIlqyZZ+LH6oRxhmxCYuGy4myXvzS7tJq0MTntUK73G9Tx6XL1RwVgV2o+7eucdz8Jf+SXQFzD7LQmQ+HdkSARGWW+Z621FGE2uogcZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhizlxfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhizlxfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2610C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728266153;
	bh=Ai/IaXKvu7e+vTLS0sIldfNBBS8+2KY1Rr0rCnreO0g=;
	h=To:Subject:From:Date:From;
	b=FhizlxfU/h2uiV9TV84unxIU3KQYckUId+uMBFTdrvpeLTT5nMwYoWyc3mndS0I+G
	 6McrBrJfjg6RRK3gSj12k7V3/Xmm8tscmu7Ul64u9MMCN1j/WtvznFbFeY28XSEe4j
	 gSfrHygQUNuRJY00C00gQxWh/7KZV+RQ8UxScvOvpchHLV9YjPNeX5uKAPfS3EKOn2
	 2+iLYxwWhPE+3MU2dHNCqKy1FsjVdHeNZzX6kfiGdnOIRmqU3SaRrEdInZ2t6+8oDN
	 M9p/5nCT5EE3UG+YB9mEJ465Xzm3SvCGHBZ7ZXQ4VHlEeUSqN2uLpd7TBd6n+Kf3ED
	 acoNQeWpK/t0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCBFCFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826615364.7087.5112772068701089841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981d71b4522309339f2e3d9ff5fadcc3fbc1c0cfcdf3baeeef5ea5ae2f3722cc
Date: Mon, 07 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728266153
