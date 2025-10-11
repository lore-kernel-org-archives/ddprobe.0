Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F517597
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760152794; cv=none; b=naKh7Myv87vkWC6PEJBQJUVBIYkjYf4qkSKC8MkNUlIsPuxDPE4FcZCSdIyC51dQTFIo9CUOM5r1JFfiwju3a8OPerGWq4xNC7lWFTL0Vl+HxnDX1YNnmrAkMeWVWu8qZCVSCaoxIpn1JqwbpMIJDpeJ3pCKeU+vnsSiOxYIkUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760152794; c=relaxed/simple;
	bh=3tdtfXSW/iHkjkuIPP6n1RYT9rWMaqQhnZ1v8tWJ0+g=;
	h=To:Subject:From:Message-Id:Date; b=u0LHUHTq+smdh6N9d/YPbLNstan9V3x5J/tkvH2AuecJ32Cu3Z7UHmf7rqcCwHubS7gXhLvhiCmTFOi/I3htifQDpUXQXzLE8SmHiCBj9OZ71TvmsqHyOPKpt+35orKY1hqeb3z90s4ZU0N0RHVuBtioF50aeXKJe/ivJdqtJGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx93+RoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx93+RoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC64FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760152793;
	bh=3tdtfXSW/iHkjkuIPP6n1RYT9rWMaqQhnZ1v8tWJ0+g=;
	h=To:Subject:From:Date:From;
	b=tx93+RoZcGxTMtevt+HKH8zx9jguowq8axyiaXoLaxej475DgIygO/4Ga6SfDJpD0
	 Q+PEUpcyhy9l/VdKAKxbCchGxV5b2p16lzLXTmxnIeGoxfaLCwBu9jzlqPh5IL99N+
	 Z/i5CumuG71/WVAxzJt2l2WWenAe6wb5XHpuvY7DcrHRNblMGkWRRA79LixifpcHHU
	 O9/6qcGGy8OOeQSSQNp6hfywi6Yc9kPvInvF74xshyYwjIllN7/6Vyj5bE/TLnDxk9
	 dnAQNBk0tcleJtVCNbd2LCEQlH9Zzow+1YW2kNgmLEqfcufcyabxsZ+ImHyxUc0iam
	 okfACJkYnQFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB84CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015279358.7582.2374534498394623195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e36ef4df497c4e0235cf950c7dfa31bc5db0b33371574632dc73f045450c0a1
Date: Sat, 11 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760152793
