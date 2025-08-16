Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2DC3EA8D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755313194; cv=none; b=OyDFUYNIGN0w4JxuUj6Rx42w6/DsdNOJiMeEQPdsUObhLa8fVU20ylHkAKQrt0WWVmlPx5F3wZZSYoJKiYKa7hUncrFw3m7eQGcas9e80/ApCzu0a7ULJxgrAQzk6vG5ecXUMnTC1p9SUz2zEoFcDwxumCbHsKpk06baJ59ousI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755313194; c=relaxed/simple;
	bh=nM/3M/WcTUuAL2OKx3fbQP/cYQwCRf1IZfs7bcoV91w=;
	h=To:Subject:From:Message-Id:Date; b=LzwZURSIIP/9Xc1GuEOcxz4h8RVOkchfiUsSHcocUZG0ez2KGZfLwrQItw/t+7SpJkcHsw99HchE9ezVXP8ZrYKdCD3ORk1X0jLR5cP/eMYj9dAKHIl/TrnTFhJ2HGnfxFTgdQKD98Aaa+HoyRJ1UPyCLqsw6dqE7qrWb/y8qXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHKp1iX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHKp1iX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A66C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755313193;
	bh=nM/3M/WcTUuAL2OKx3fbQP/cYQwCRf1IZfs7bcoV91w=;
	h=To:Subject:From:Date:From;
	b=NHKp1iX5DsVVvWSFJXYTpyLGQLIHw9/QeEeHRj9Mu3wV8uPJ4+Q2UFeuUwoNrlXU9
	 An0Nh88WVgxsZjc+SzQCHxxfHPQ1ep1fXCeruO2fdEJLYk6VyXrP7uFirN8NvQ/VLO
	 R5o/SGS9dtFxPcCgjwgWg6Qpu5FocvuQICOfCdcSit3yib4q6FxjT9k5IdfZolVqew
	 2W7U6Fjh60CrY57yFMs/oH9zZOS+NdAiPshleoZ2/XrHUT52dHJNhhQOd2vpW3gEuh
	 d1Wku3TuV8epDSwLysr7/mW3VWaj50hIPATSykrQdHvGwMDWGrb/ont7PXGstmApFi
	 vQq5m8FLjvoWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193DCA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531319357.10955.5484717447482286285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf2caaec3bf3a9d77e3a4091ae9b2aa73d92a1572f68550abd8ef58ae9b1e01
Date: Sat, 16 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755313193
