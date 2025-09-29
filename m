Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DC22FFF9C
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759144794; cv=none; b=kGhPieBCx/DtrSioKQkegDKlQDo1L5RlxjsiiHSXjKKGZM4hCLzM7UhwieZrKdnGo6AN4TYvpCicqjkCEGQ97DA1AvHW5U90o9WdNoB02ky2aZsuHfDeT2EhzbiUMLBZLbAMrgvskyVs11QLfouYCF9KaasDducp6juiGR8eKEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759144794; c=relaxed/simple;
	bh=N3BS3jZYc+y8ktjD/EdFf0deBB5GObQoIOBDDg8FXWk=;
	h=To:Subject:From:Message-Id:Date; b=lbt/n0ZONXsB5+BPM0rrh12VielWxY7pJkFbi5kMCwf5hGplPiquvTmFOPI3mjfHY4upXKOX3jYysCrWC35LPvJ5SI5LThhv2wvM5a/MB58oLdGG2yIo4NJgv16n8bhF3BA8ldfGRPBuExKwUTXH+L6kLHDOS01IuvYkjGNdwZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clrBpKTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clrBpKTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB801C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759144793;
	bh=N3BS3jZYc+y8ktjD/EdFf0deBB5GObQoIOBDDg8FXWk=;
	h=To:Subject:From:Date:From;
	b=clrBpKTRm6Sz5Fcu7ikP6QXrQrVuOrVLbSCxtrxKgPCI6UBItrz82iHsnKmL9VeNs
	 +MYGsBzwTkub7FFignO2ght2k/CiWcAJvBNkjfP8qw6KOjbCtbei3lqnjUGRdNgdxx
	 tdI7JGsaRFy408MYkL+WQTQYr1H0LZrufsmzkRVowPEiyjH/HjCewJvYqs3VoHri5+
	 OPB09urZMuBvLPpie/DGDi3T5ToBsAt9AUp+EkOVakYi7HcTjuuSgFvv9YWGd1ZjK0
	 hZHGLXYzyJX368fRFrhfDxTTmwArGyEvX/8HPlzQwvU34W30VqWb6JBVrKWAkArh4e
	 SKYZtNgIpfEmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C16CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914479360.26309.3625027957324806568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f104a212c7b8b28b241c648d67d187a688335326c08eb1d8e1f7ec84b354a867
Date: Mon, 29 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759144793
