Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F0143F4A7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784021914; cv=none; b=Dl7YE+AzXxD3b168ITaFQZhToKlhOG9CLazSvgbD06Fh1VJBwX6s7hq8Kw7SSOh/LTB3rrVA8xzPspEthXQPw/kVB2WjyIVFgGY7ovcIgmT3L+BEPHoBkw1Txh++dGAFGbh0x9Cie0dyNGxJ4U4Oc/qVm1zk/FjtaWY2OUHvgbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784021914; c=relaxed/simple;
	bh=Trow59gKKIgwEwmh14bt2cxNCnesd8ZBTqtN/8VpGkk=;
	h=To:Subject:From:Message-Id:Date; b=VPZH0Z9M4PHLpFowqLyxkEUgysFoAdA9DMWq6hBq1j50QSgmifGFtNpe2EjWgXgTuDwOxbuNkoUR+HdsXC/5FQNmFab9nLIa0moAtGtaKm6lPBWFZ7k3P62mCRcML46gZWl0Vc5JeCDD9q8rtm7G+HQSz4yPtVhH43R6xqXonRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og1qKK/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og1qKK/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC339C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784021913;
	bh=Trow59gKKIgwEwmh14bt2cxNCnesd8ZBTqtN/8VpGkk=;
	h=To:Subject:From:Date:From;
	b=og1qKK/1CLEPppbjlYbU7LnQQtHUGm2Y05y/X9fgtk5JRHN6rixvzSK53j2I4FJ8i
	 rkjd417Vi9pQVmXviaYtLaj/lMEBPC1IVq6rNE7flDtK+7PB253HmDnaHneWTp43w5
	 UaqVKjxXRDjNKHWB640Fh/37X3V+xvGOhDBjcdjcVJyxRDqdBQIEqCWMdILacvrFgj
	 4Q8jGwXz1SGRWdudgipw6fVEyDJFu1Q4paUcSFY9a6WSiXEcNFvDxMxCrgZO8fqmha
	 Mfjf97MhPcuc1HLV7pkFTfCeYASWmdHzWZPKLl4+gtqIyFSJUpu+ho4gYOGBxs7TnG
	 tNDs2ptmEvYyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A4FC44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402191368.11196.11913161574196258998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cda711855cc6633ffaaa95c5b0eafb13891f94f309f2096464026b93cd7a8a5
Date: Tue, 14 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784021913
