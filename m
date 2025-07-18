Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A9218EA8
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752844194; cv=none; b=WdOwhfrJzsaGAqGxb4pzdvcAz0hWwT+tRuc9nELYRTaVNoADtUUAAXG6xzrzOFV6/vqztdrTxywMDd+WU7XS9IA+xc3iZaviq+w4ouyb/TD7RgCP7m+dSTzrTbM1AMguUV4UeupzGtP0SAZxMv+xsPqYGKhEWPUiTYJyc123J30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752844194; c=relaxed/simple;
	bh=znxU6HITMzi4Za0N4RJck5OlzdeMau8TrYouc8wT2LI=;
	h=To:Subject:From:Message-Id:Date; b=gSIriNWTwsdvE8KnJ9yN5Jlk5Rty7opLXwGh0nERXxRvnPI2zRjab/v309B0IhTY0xv38BBDQGDbpoWAbiWiRpCZ8ctU1wCOw2Exqg2iL4c9DorUDCMrSbKWNeHlfVRI8wIYv0SSUkC+1eYr33KKVdWDTRQel4oPyyFCquTuTbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOqxbalA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOqxbalA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A71C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752844193;
	bh=znxU6HITMzi4Za0N4RJck5OlzdeMau8TrYouc8wT2LI=;
	h=To:Subject:From:Date:From;
	b=iOqxbalA2deS3Ns0gDdB7eMyw3jrWfogkAtOFm8AQcqdzb+mVpr43WSqOriCwWJLx
	 ZHpCWz61wHQTzbxrGlHSS2elJoyFbfumCl+a/uEIO4wWzEpW51SKZ4AYEeKzu4Apl2
	 20QTK/qyxvUS9zxzTtk7GplqjpiA+n9fsYHsyxhSpjhm7LfsN9Tx2tFLtQs5t74Ez2
	 PLdq5Cg/JFZNxCNLqZjGoBtSrQzySJmlkx3XqPlyKyy+MMmut5Ul/gEZ+QygVVjb6j
	 qLa6771+oh2REYc/AnrkkENDYLmdo8H4EBToyZjPlr4ZR2oOgnC5sw/ZV2jQeL3f0G
	 MV66hkWIJOAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E915C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284419357.11952.5558883666681272116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b77aaf2051a336289bb9837c0119c66561b27118e1c81b6c3790c56cc3bee3
Date: Fri, 18 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752844193
