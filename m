Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3389F296BA5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768815234; cv=none; b=Q6Uz5lYEag1t5+Idlm5dWDHx6Avi5fp0ivkv/SASg7PdXN3kZTMw7kyQ68+ijr9Nqk2QHV78/riO3M+RJ0hHYutZg9f6YhCa3/zqTvc4YL3/RKFA6nQWiKgnJGGTVKpNqtfpvfK63Nk4q/e8w8m8hvzy42uFBJRBajV46ET8EYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768815234; c=relaxed/simple;
	bh=JAD0dyLxBYestR73tcDgotr2HeK3ctU6H3v9zjO2JuA=;
	h=To:Subject:From:Message-Id:Date; b=XQOmc+PMxRmNNn/CNQt+TRePAF/m6V2UMgSLQeS0oYpI3hg8V22R5m2YVv3SLC8HFI76826/cQM1pYtoFGXxwjdv6BaYxTIALV1oIN2HXj/QXNqj4WcRmDzOpagOtLNeA1Fa6JWs2bdqPXiJrhTHMHY6PMja42HLeHUxSIXU8Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5cQhGeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5cQhGeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EB7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768815233;
	bh=JAD0dyLxBYestR73tcDgotr2HeK3ctU6H3v9zjO2JuA=;
	h=To:Subject:From:Date:From;
	b=i5cQhGeKGdt07uF8l51P/slwCbJ5Ov4Ta2M9MYEBbkO4PPNPL/T7m4PP7BeAHNZqM
	 TRvTA3tkfay2o8QCOWNFfFacpZzD8Hs7R7LC1vnSMKtsBxBm6SvqkVFDKQNT2CCagS
	 88LHITElMZVNXWj/9sXxHKTJKne8EUs1AYcYTjYIEUQ3nvZr0FHmAiJR+vEUVoZlrk
	 rxuVDcIWSoF2P6Mi+6CRjhH43Twf059Xv7nva27v7QsE4mRpvgIq6zJmytCDwrMX6D
	 FRIo15J62drd27uOU+lbtd4lFFtRQIQ8GuLH+3KHx5nPxWe6KJ6H8stcgldwe9Ktb6
	 DH7tNrrhLe78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7C3CCF2D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881523363.9268.16240637283137178860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87bd04c65f3a85969bb3c05ab38a236dac1ea2331a71f126b44abff96e18b1c
Date: Mon, 19 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768815233
