Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561F23783AE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787804434; cv=none; b=eo8328qn5xAC6Qt5UovR7rZNK6SOiGeNFoKn9h7frOW62IZo/NQBeEd3IdM2JNZZjnQm7529WgS7nLJD5b8AHlpbA4I//wH1HoILveS2dSWXT1yjEIsuNsA5+OV7WOrNODP6hlgMqBU6DdpC8EJ7Bt1Sfo7LhF88OWmU9zYFvVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787804434; c=relaxed/simple;
	bh=FG3/mkstCaxvQz8Z1d38yeXwkbKG297RprenX2TBVUY=;
	h=To:Subject:From:Message-Id:Date; b=Le+HXeST/r4GX+zSq0yKavel5Hqf+wSjYAnNepSg/KSUWugtpJDZzhAh1L4UKxRuVwbmU0lZE4KP50zGxFWLqtyj8zE+ih24/llvsLIduMtojgaeOWKW+pQu/GT91O/nz99iJevqf4E2sdo8JqFaQLICGKbZ6BuGIt4W48wRGdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK6TsK+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK6TsK+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D585BC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787804433;
	bh=FG3/mkstCaxvQz8Z1d38yeXwkbKG297RprenX2TBVUY=;
	h=To:Subject:From:Date:From;
	b=OK6TsK+dtJvyZYy2xWBAUYG4gyKLBnC/WWsURZomixtBWcrMqq8zrtPBYJuBeZ4IF
	 Al+ei4b08y4g0+GfrwTyJKX7uqdppi3eAGbFvinzjMo8dyklWRnub2TuIGUlE09ias
	 3BnfPezpO383gnBN+HBFOHOP/UijxPblQeLfabyytMjl2xbaV85sbkNejb3t+f0UJs
	 hEEY+RBhaBpTNH9s0vtSkuELzmYexeGkO85i4Xgv+za57IXnt+xetnZ+OVYgMp6MEu
	 GPK/rMAKP1ABXsnYmamO3Ta1faGqXTYLIIS4sbR+q16ylJPn2b/mX9DHhrn8YoXyif
	 jQO1JMpUunCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9CBC5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780443369.4478.12496883083376520500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa59a56f971959fb99af046af4389435e840ebb831726aefd0fbb366e277769
Date: Thu, 27 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787804433
