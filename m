Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B3317E9
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713672623; cv=none; b=NX5xLpA3Hieztis/dbuae8Iu67FNX4feFbDAiqCdMBnasejJmeDfBTHFf+5FrUFxaY16kyORqkUseQhe4xhyAnNlguSm6jBUkWf1RnMTxT1vDk/hNQDFbpfRwHYqOIyckOHzNEkqBjujTJ1qfQ33KUEcr3SuZA5rFSL1SAQe/6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713672623; c=relaxed/simple;
	bh=NgG4HsBXCksoF1bib1mW9LsSySUG0h4FAAO5ZrJAxFg=;
	h=To:Subject:From:Message-Id:Date; b=DTzLmiYymhhMoK4Xr1Qp+ACqZYtYIgNCXuTgdAJTAPLIn3SOsm2tMnN5LcM9OR7JN0DsbTJDFYlq+8np23iT9v3gHg+IsDLL44GvMWaTcaKZc2Wh9Tnu34fR8RYgxiPMpHkdWXHn+hs3cmOh5mQ/TfNG4VD9eUy8WtmIKnmVZp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSqW52e0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSqW52e0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00AC8C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713672623;
	bh=NgG4HsBXCksoF1bib1mW9LsSySUG0h4FAAO5ZrJAxFg=;
	h=To:Subject:From:Date:From;
	b=oSqW52e0/26JfgvkFkEUuMVFMhluM0x2GfJbZe2R4pCksd01sOSxxytGE01IAjuiZ
	 G6erbtHjuT9AEM0Numhx8Z5BoKLCqAj+zrINq3YblS3t//j9ta1miyR+IhR9w71IzT
	 +Co1dO3tEcXlzIWJbPqcYyzw98CDzMMEHxS1ZjbbkjTUDGw7ysdgbcgZ7QpfuUkY2F
	 CP0ONKjcanOpgKI8CTS1wE8dHP8VGjTZoiW4uczY5SEd2Fou7x9GFHe7RbNrGTERJz
	 uCirLewl4g9fKW7i4kNdah4EtRlDYGiJnl9ovDVgQ2uJxp1KHAdtcDTW33JvIgtHix
	 VEXsQzHmwkMTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4490C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367262284.423.9229029078098226530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58bd4f5fba483542b0e58632ca06b361810616b0b220a6f8b5b75f32bfe500f
Date: Sun, 21 Apr 2024 04:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713672622
