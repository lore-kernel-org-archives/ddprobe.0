Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4476826562A
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754581196; cv=none; b=NOpYxEVuA/AcodFtkymxkBbGZ046kPyIIkyaNVWPTAeQd+nLJKZzZMXH6YmLVcmr9GTd69BPvGT2graXpsDGENkHyodqQ9wmv5D1430kLI2f4JV0avdeQGprRhJc0Om7NotX0b8Ty3TcXh+LOQBn2qmH3pRTriuucDGQ9kLaqLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754581196; c=relaxed/simple;
	bh=rRS4maPSb2bB5QRYDtTuswONI7hzM7Ud85zBoprb5ss=;
	h=To:Subject:From:Message-Id:Date; b=exdPghOk6KwbmAIPztRF7hcKOLnoz7So9+7qCeKgqnvdZcoQy+tT8juZJjiU0CLjiHAHSP3Z9bn6Dk4ZXhvTpQjIt2qPlF7ZrVwDBNEkjlXge9GMtBRo34ygJlX3t5He8+cmKkQz0NUz6qubZBvRZX+ya7rPhVx8MzB4BmuRGdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APjQj8MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APjQj8MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B8FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754581193;
	bh=rRS4maPSb2bB5QRYDtTuswONI7hzM7Ud85zBoprb5ss=;
	h=To:Subject:From:Date:From;
	b=APjQj8MX9WjDUpjXHONE1kPV6VWMM7Z2sqDKPvwWH5Fu3eoR9Kx/vZ33ukCkBWGDl
	 6TP3vMI3MPXzVGsZgihsXwtM0pB352Yxs+Uht/mrFDtLdOl3kdz65PvPyQJf8OKjf9
	 vZhL1DUmYnBWYfmZLsbx3w8Mx3kEbEhG6yzNFzRRtSe6EYqNg9PjUfSgmaQdjxDPYS
	 nVgLQkEzL0wOQt4CyTdGXzJtCvSi48YxUkUhAlY/0aXd5+Yi3GbZIM5Hl+uDc2CPsO
	 iVQ/tb+8ZIOYMrTj32f/UaODKxSemgberFM2DVytXLyk0g5BR8tmeWhVCgddYrGakU
	 l4NNmvHTwXd9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4140C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458119364.17069.4121395937288344974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00e483a6b0066ea6380cc8635e77f424246e01edec81a198ea6977771714b49
Date: Thu, 07 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754581193
