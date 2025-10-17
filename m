Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CD22494F0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760743794; cv=none; b=IQ72wsCqHd2cyUVcB6yI+jwgFSK6GudemH1JkcC2IQ0M9XKDuaTCxaG0OobMn+FMMNGQbkc9dOMeB1oaVafm7z3BH29m++P78ZDxmopElKSkmBUoyie/1kLsF0Nr9UKQeNDXTNWmiirseMyqWiAZBoir5rrk3S1Gjf0c9t25CAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760743794; c=relaxed/simple;
	bh=mo2hW61Zxis0oArhQBzy9sHUNQIDRZJaZtQEvmpMHLA=;
	h=To:Subject:From:Message-Id:Date; b=Ms+s8uQNLhFzclnkNtyplwHunO6LHBQMpDk1a6mNRSXbHv1Ys3r9PZWtjWsY9FdyZF+F1jqNNr7Rbzt3284i3OyUYsCLeh0rqEi4Yn3HfDwrkHQ+ibA7LaCjJQQZpPV8bnUc/89IVElUs/mRqoSuUZ6ZNrdlueVV1LwoEWHUQvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIALydyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIALydyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F546C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760743793;
	bh=mo2hW61Zxis0oArhQBzy9sHUNQIDRZJaZtQEvmpMHLA=;
	h=To:Subject:From:Date:From;
	b=tIALydyESYrMODHgXvYZJWGUaiCR7KOITc+IWQZVBRHAkYbw9cQXp/tvMDbjf4Osi
	 so5B060ZzPc7IemW4iZFn9uY/b40wyLCNeT2zBfHak7xjLpOhYD9Az0Mvd4ICwYzX2
	 raaAnZHA1lH1aEGPgaPY0aeTYWNT0TR2XE3NRNKIoyBVXNEV3VHoZ1JpukOMv4boFo
	 NmJ2WqWv0QuK3lDSRXCf60lyrvhm40KsivcUFzjPDVbK2rccwX5OqkE0YzbjuGZiAb
	 Bi4cHw65C4ACCA2DWMzEGvTxiLsxmpWT7dy63RTnShRGH4aUSELmlUGvnUEis9TYiW
	 5Oonf26gjxSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B5CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074379358.13026.8845709253396138650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeae5bf4948e3dd5c83b33d3535362d9a6579856032d0cea674bca1286963a11
Date: Fri, 17 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760743793
