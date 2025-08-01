Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C2E2E36EA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754012994; cv=none; b=gUfqow3F+3+S6ohvsneIypngR+h6bNefo/Vf0wkPKcIyQot3JYmY4oxTT9MH6BRizGelGtMmSJdoh/6ZruOBOHj+Ze+vBTBvSWi7TmML0jDOQxif+H3uTc38XDjwxsHRuglYW86jyMZXNTalxZQsaxD78B4NBGel+G2JWS+27JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754012994; c=relaxed/simple;
	bh=ilD1yJ424sVFfMvwljHX9yhrYAbPQS3xp+vbgQg43kE=;
	h=To:Subject:From:Message-Id:Date; b=hj0+iKRQF1Xazzcyo1vsDkZwa+KaT3xsWLA8h1l+gnsfP2uKszf4Q9GyQtncf48eamSbiMBYAD1m2KWGfpAp9M7OLzudFhPYyKdZTvssiJ5WOzuFS8VMoVAhkRMkCv/zsryoldrIG2/eyD30YEgnrZNr+x1gFLOgRpX8C4j3BJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzoGPm08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzoGPm08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DA7C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754012993;
	bh=ilD1yJ424sVFfMvwljHX9yhrYAbPQS3xp+vbgQg43kE=;
	h=To:Subject:From:Date:From;
	b=mzoGPm08C42Uoy9l88DmamZx0cFmjT4qGKFLN8XPOuCnz9oK9QMJZqPfsKQPpY0KU
	 qWkf7m1goD16TLTqGR10i8piEUhFWnWQuC4hmIb2Skfr4NLwGSKAoBU4IvVcqpHp5P
	 oV9cQsigmFeeAa/eZt/ub7ZmW41HeztSsY15A8ZryxkDJr2MkxYQgNJrGDErsKMZ6a
	 HhCkkTEEFTxxNCxHucQDlxxGh53DWTsHGO6zA8LCljiqF1wEvSdgyrf55wvdguwcsg
	 WiWWAPW/TU05sDxiae3bX0xE1eDqMcFyoI3YExkTawwoF73rHXGQkUzKSkLo0UnDDc
	 uWKzpTpMfpQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96385C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401299359.8388.15273250936225684266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a2381cff4375a8da221f996f6d5cd626b241ccf9eea1e1b5629ee33888a86d
Date: Fri, 01 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754012993
