Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1AD5664
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721438754; cv=none; b=C1TcCS/Yk3W/P7ASrfDcWWJdG5D9FXiC9RUIV9iIZIBfeofKMgzk+/eH2GFOoU0sKP1ZcRF1/PIT3w/7jLkzLQgaJoNXONRcODxFzwEiCNFi6LLf8RP8DOpIFMa+WAYFFKkTi31atfvxgBmWWUUG5z3nu6vTZoXNE0T9t3YO18k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721438754; c=relaxed/simple;
	bh=efXsC9ABiwJ1kdYRys1nY9z+O4UXf0Y3aO8LX9rY/VI=;
	h=To:Subject:From:Message-Id:Date; b=hQIjszo6N3iUM8g4muWSNxpoSK9w18BRYV2P/AqBcIiQyJDUa+O0n6zcwulOnI2ZOs9KpH64oJV5CL5KcZTTlBaz+WpX+5AnJZLlypaDpOW5loMdrmi0tWRBCqkcFzDW5J1Pu83qhQsT3CSKNAY6BhTOij/FZ+x3JwJNwzcR38E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9lWhWoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9lWhWoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D3CC32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721438753;
	bh=efXsC9ABiwJ1kdYRys1nY9z+O4UXf0Y3aO8LX9rY/VI=;
	h=To:Subject:From:Date:From;
	b=Y9lWhWoyaE7sdDLUoa6dId+SWOq8pQK1N66RR1tJA4qu+letBj3EdZPZiDC0h6UjI
	 dfBim5uvPpPzxRb/6tqZkINkXhfwjItaa37D7WWqZz+Bh928ggZ8oL9uwQAOcgQmDx
	 txRfpk8PRqvWHK+j8RNGFLVUWxbvfwpwQM114DoH0NEYOBh4huPDd3Lsx2LPHdf1By
	 9XsyxaGgMSbvtRnsI6e47IPtGUKSlpYFEAxiFTsPh3CB8FQc8B6NUfNYUbt8krS5N+
	 memnRX7rxbS/94xdblfN20tt4BurIgN0raBp75SIB23HRfB0DTsTcxBAKGifBol1PQ
	 p71nmufCS5cvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D3C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143875358.24082.777084825384980559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0696e7721a84a0cca59b851505f9a178547422dfcce8efcf62dfa6ebadace4d
Date: Sat, 20 Jul 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721438753
