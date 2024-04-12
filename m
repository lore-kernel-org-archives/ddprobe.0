Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB1148FF8
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712938163; cv=none; b=nXpD/pB01SC/kj/i6oC3g9e7PuIEpeudwLjgIptboxUSXUo2tYtbQFy3VMWe4j0hvcHOcKWaDOfONIvn2qL0XC2jfBwT2v4iAHO37G7+oGCANUCju0JrWxDlWNOvrURZ6go7JGjwhY4HNp5K/+gT08yBLjprkD6B03v9UhBdozs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712938163; c=relaxed/simple;
	bh=N+oyr3No9pAsOo8eMUxlHQKHF3hdJX2vQi8ejlRG+AQ=;
	h=To:Subject:From:Message-Id:Date; b=nzOckgQfIdUFQtF5goM9FnPvxPEkIsrPdu+vTq42+NUGJV5n/xiSf5ITmLyYkPrtqOAbPhUNm1HwoCWd9kkbreVOhx48dkX1lXx5IbKqXOmSr9tzLHh3R+or95PNp4VbNV5YTYDK4BIVO5s3c9M2yt1QaLHG/YFoARccYhtbv8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7pDR7kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7pDR7kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB1AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712938162;
	bh=N+oyr3No9pAsOo8eMUxlHQKHF3hdJX2vQi8ejlRG+AQ=;
	h=To:Subject:From:Date:From;
	b=s7pDR7kwCsAjp5/vu8LUp3r02Ta3SxqceMbb7vvFF1R35IkOuuBHIdnmCXctEttjW
	 dthRWrei4riL9K80BCtcBznsBC+AR8dG68Pu1LQSGuVo16l5B35G65z3KhV+el/Fxf
	 LyP3O/dm+8MiLpGDH3koe4jpoylZWgSgvITGic90YyUDW/UBxD/lRdnaeXn3VUKPfu
	 U46jyZcvit4CAvh9eY3r07oyesPYpwbqbxidoaCQ2oqA2EwiWLXAaGzbgIdL4ErBWm
	 q/niEsyR0EiL9fk827xdIbTsOuKZHKVlJz6xGL4k6zQ0hJI/Y787EHKouQ2uepjFZR
	 BbnWK41IfVvNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEB0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 16:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293816277.2660.17454533202809053381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c3318bf8b51eea4659ece14a7996902325fe68860c9efe29f65e65600adfe1
Date: Fri, 12 Apr 2024 16:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712938162
