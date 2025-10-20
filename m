Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C4127AC48
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760977794; cv=none; b=DtLomuPi2YoZPX5+0sgV5iFRrq90Idz5kLscrrgQdKIIHxiGzAVw5NN8T1R7xH3BRShGva2f/MWIMBHDPCzBh+Skf+LSeOFIow3Zfk1wc/oSIYwo+ZYAN6lNhkw9NyQdB68ILKp6d1WujW9Usglp+Gfdv8bRCYEd2YdMASAzmis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760977794; c=relaxed/simple;
	bh=mYlJkopvTNm9lLOgq3oRGK7GXkhjuvkJFb7sBCt2U6I=;
	h=To:Subject:From:Message-Id:Date; b=BqFqH4+HMwe/YD1hEEdpNB7K+gn8fA7APO5qfHsE06+aSbTj2WETV9qkoGojRNYrTfrN11lueU7nvl7ScAILGGGImAlEHmmbayBKMJjY498/shkReDaPeeHl07wQrxBElGpLrF9YvUlFWrg0M6c+n7PwVROmlCmVC+qjDO5P2Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLPdS9Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLPdS9Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F8C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760977793;
	bh=mYlJkopvTNm9lLOgq3oRGK7GXkhjuvkJFb7sBCt2U6I=;
	h=To:Subject:From:Date:From;
	b=FLPdS9RcQFfPPuag+UZHm6nKLSQ+X2aTuXGsmo6GGVl3wSp9KqEJrYAlfmXGHYc3X
	 sv6nqcX8akwZvl8Wa8e7X5/KwMHVgj5WcosIQMIICluE/zYxbfQ+XVwvSB9LeWHV24
	 eOwtou5CaYnblkd8CsfqIl69qgi06dZeZ5x5bNLJR2DSZYlb9giLiMsTAmvqLKLUQ9
	 tdF619GGKPg9tbsX5C9JeY5klBnvwAS94udU5r7Pp4mVzYevB3qMjTvGcvKbcQwqby
	 ZfNH4r+Ra7bxaaemV3tuImUvMQQEZq/mMvt+iWXB3DPdEDl3RHB5HfMJ1NseAdU13x
	 2e5Nu+ZznNGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCFCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097779358.29803.15305616682664778312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0677e3dad99cb9432f90aef373b5433d6e6d538e8d7eeae75c8784d40da6893a
Date: Mon, 20 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760977793
