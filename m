Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0196885923
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710964097; cv=none; b=NXlTTbuKzo2XIDNuP9+JXnsdbMKsHhQoBvvxy5yXkb51yAPvpTA/TW1oMwomw7ivAMATsVFlIrpzJupXZl4GRqqRRaDO1DNonwvWrSV/F93SSyZzBrIEhOo2Rxz/aCOUACFMqBAgoLX9AM4LaTQ5A71W2gflRwDIJJZwTdNVHCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710964097; c=relaxed/simple;
	bh=abCb8wmKs+EwebtNLxW/IC1HnXlNKOB8omroUd3ZvSg=;
	h=To:Subject:From:Message-Id:Date; b=Lz1Ss3NDw/Yd15cFN+wN+QKwBeXaW3d5bFlymYnvuW6KgNIcOJHP9RCgIVzvC4qersLww6wcxoXcOV/8H0jGbuY6IMo1QbYq2cXnRYiwlhSRePM33rNkpO75uXpNVPh/cUMS3+g/8GEKILOGcBscGu6iPH+/3Hn3i6AuleE7y5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIAwGFKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIAwGFKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC28C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710964096;
	bh=abCb8wmKs+EwebtNLxW/IC1HnXlNKOB8omroUd3ZvSg=;
	h=To:Subject:From:Date:From;
	b=FIAwGFKrqsWEYnS2M0s3ybbFgYhoQcKQkuF8PID4oH3B5QM8gYojLwuvrxgFQA/iw
	 hpXSDmPA+CHgo/XDfHLypkGRt1WcHxe6RzWq5qMWLVmb6l5PppZiVPLfo2AIFhOAtH
	 Ugjjibcw4A0fkJjAHRYUl63uG9jxqFzsvtuvwPDh6sR0SQZUTuG6Ty2Ppz+dlc+w7/
	 22dnyaico5Mqt+AYKJnR+if1E9oA4Hyglso4GtvgJnRYDyHcA6TwPq1OzSozSh+rUv
	 FQUbK88LyT392uFWo5SsbnBPQxfcxdO+x+y18TYdFMqHO/U6rqd0gb+GTlbvQpWIau
	 CPjBmw+g0Sltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F430C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171096409638.20731.17630972405643343656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3e5d25a879feb2397215766e0f739961a0b3a5a366dd2bc141689d366c9234
Date: Wed, 20 Mar 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710964096
