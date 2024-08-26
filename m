Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CDF623
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724631955; cv=none; b=E//v82dQIapro75dBCgevWqlTnT5Yu95ggysWHQaug5ravouq5LWXFZYk+id57YJ39vc2DJbO25iPlwEsstGLM37l5+RH+pvP/nybUQo9wUg8dTQuJC6FVEYss0NSeqyAq7c6bWOSiHun1LOtdBN2LOEv3nQEX0GHYyr7RfCjSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724631955; c=relaxed/simple;
	bh=RBwbrSeAstyJlPiFMGVb6VhLzeHt4Zai3nkjPcFnS0c=;
	h=To:Subject:From:Message-Id:Date; b=VTVo2Ny44VuOZbi5dRRVSxkzOqKevpP/Us/DzRSCfYIqnQ7Xg16UIAvDlUk26MJxbK5FUn88avWZS0VDJvfvO670Etjf/9lQ4RqJWmD+l0VdP3GFnba4/K638GM9goIHmY95nIJwRmOAmq5OqJrZ7Swa0+PguFYzNBX+UFzLvnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdhyXutE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdhyXutE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3925C32782
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724631953;
	bh=RBwbrSeAstyJlPiFMGVb6VhLzeHt4Zai3nkjPcFnS0c=;
	h=To:Subject:From:Date:From;
	b=bdhyXutElQqY+XhT4A6owtaA2k7j/+n5YU1tP6MsH2Zb38T19h0xS3y7NImo9RXBG
	 s56FPGPcF9Oiqs/L7/4tO2xeORSZ3GkWrzpKCjHH4GTtvD02RQ1bAYpEeEogA+cJYN
	 QOmy7ZwmhUUiEhJnpxQiqi9SO7rbLYTgnqMKzI2YPXmTU90ehYOv+6zypyW6kvaTDY
	 XRUOpRr9oowDTWOYp+g9q1dUDgDDEuJLKI7EF3nCHCQd29deB1Ow3t5qH9WD+XKwdh
	 mV5S6yH+ZTBU9xqhLpFtbF++vcE9ZJhgjs7+9c9BJR8fiv6cM/J+Q3ZBvxL4IR26fK
	 11aGhSAtrkgeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9DC5320E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463195358.29999.1194060095798713079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73444a674d756abcb48889e3326217a495e381e3d763ed600af35a5725a8ca8a
Date: Mon, 26 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724631953
