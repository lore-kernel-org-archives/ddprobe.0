Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BFE280325
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779003634; cv=none; b=ZZaiQZtniZVdhbQnWvZGOXHFDCdU8dvxltykQTKsU8rBGIKmCmu1tYKkXEy32qM4Gm6TtfUiHT0lvyfn+tvtDYkRNdJiNVvCDBvbw8tl+tSKOtGzZzQdCKXR6oslijZwUvwmICHb5ax4PEIEFmaPlntYWofN/R7xnNKm94OP4hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779003634; c=relaxed/simple;
	bh=c9uUB0p9RR5ifxwUkLuAdqPun8f07dzU9cGIoCh2454=;
	h=To:Subject:From:Message-Id:Date; b=HgwT5x1aejARhUtW1uW9e4F6ZGhOlpjoFi3NFAWhSseUbjxJlVfGBVvJAU0aZHkleNOxqX4xULr9zJrWp9wZ9EBqwpgUq37l8LC1Qs4338uD+TpgR3+90F3E1DRCB3XC89UJY+REsQ48q/LpgNgY6jYyhKpd/8B0O/1ovFo5hZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzdPbAkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzdPbAkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B990CC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779003633;
	bh=c9uUB0p9RR5ifxwUkLuAdqPun8f07dzU9cGIoCh2454=;
	h=To:Subject:From:Date:From;
	b=FzdPbAkNEr+LMXHX4QarJlm3iwAcckxu+wQcr4HToMLxmplvWmp5FUm7STmXVVvbB
	 /yj/CAWG7z/JSJP87JIE8bVO4MAVJ8gsBGSr+KB7AjBB4DW5dpgr9tmXiGhSqzb8I+
	 El+hd66e3vmJ7bZ+Hp40G//T22tzAo+1OlPCVqOeG1wOsf08qpbh6b8CnExXNPqM8W
	 4unTwDayXfil+DpSfPfyiX9zSnRQN/T4lKexD9VFP/eo/BnXO87KP1OTwdnYIiNFTH
	 t1pY+JfCGTfXlTkM46LzgjJsgSICbedXrCjr2RBir4XvjJKnuOZrU9Y4IQJGHgMSgg
	 UVX5B0oR0v1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACADCD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900363369.13237.7912358482540637271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b98ec9c2f9194d603181567110263224d84cf3031f2351098a454de61936be
Date: Sun, 17 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779003633
