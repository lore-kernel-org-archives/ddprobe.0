Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172B136D51B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764508374; cv=none; b=ooMcsqjMEM6VsEtAjziDerG8CXtXTMcK9S4f8RHfnXU1L4PrEpLzgPfFlM87K82oNFiDJppl74ecB6ELB0Wh/gdOUXhCeE7Ep2b84FXV+85hTDpKRuocgWXJ7CKPhCJdW2BaXCeLDMqEy5+mvA/UlbK8XiGvIJIAkT6umTr8pLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764508374; c=relaxed/simple;
	bh=d2f9URHFk15+62/HNnGRukapfRSiiyDdH+jUJzDgQF8=;
	h=To:Subject:From:Message-Id:Date; b=qGUV1zLIFH7teVrK6ggcbKjYKSvQjtJIn+exECUlCETimW0VuQHabS70O9rCf4noLsGOVhmm/QaCEiyQRf2LN7Lx+fuAf0Z49Put1bB5Q+Dn2DeUaM9Q8Y4LbOQwJB+2fpoDzfWixU1GxoZoHamcq9Gu0mWQjxbnOD7szEBtcao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poZOqfm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poZOqfm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEEC113D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764508373;
	bh=d2f9URHFk15+62/HNnGRukapfRSiiyDdH+jUJzDgQF8=;
	h=To:Subject:From:Date:From;
	b=poZOqfm3G6Yg6S3GA1CaPpMnmndVNhogNMLl+wley/zKiWsFaYiwXZpVYTsdqsOzY
	 /kwWGxkWPLRN1dea3LnJnYiId3Y9IyuQalQ51orm23ZgD+huni8jKjD+hiaexOzj9b
	 He46YTAkt5Nq2PKHEJgIFkSj+njXizj1JGvOJR19y373QL08adpUT7qp3QFpbjavuD
	 IUgiM1JyfhI0eSm3txmnekXc06Vo49aKAuXIrmQPFvxla2q6QYUTnt2IAHl4dN9efc
	 5g32Y8oXHFu0JPv7XKr+gN1DcbpEYSyAp2o/Gp29Wd9vYi6ouBVOfOznbFbC3uSuDU
	 VWr8CHtyGHr4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9249FCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450837359.10731.4461503915968109156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ef65c69259460be6728905061fdc9584e883cc00146c31c8c67150d72738ae
Date: Sun, 30 Nov 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764508373
