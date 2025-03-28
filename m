Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6923313C8F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743133194; cv=none; b=oCIOfmpdIzZXqN9iXJ4G+ck74Dh0sJdkynXXgmxetA9XUtwtyt1csRdIq9775QQR1bUkzrtEk9yDYiSP4bRcb61nWaTK8ufWj62tAQqQiSoPX5VKmcUIKnTb0Cax9qRpS/onMsWXZUUtT2TpktTHQ7mywtDMZpCwpzW2U4NQqeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743133194; c=relaxed/simple;
	bh=yPFsyw3gjjKBNCH1Ay4240t9Eznz23wBPuO7V4TLzkg=;
	h=To:Subject:From:Message-Id:Date; b=KEI96bCvoHBsFehwnCVeJZq7SDBLdWfxVSzfX1hrh5t5eThMoChFDmg4/1CUCqtA7dCaw9NOiG6P+h3ni/+TQvmHxm8VzPiUvaiUSNNotPIZY0wq3SD9Wpcf2ldNR3T2agJUQW9NsRMycXKkVQ/bzT8BLz1wGP2pcSFtse9fN54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3rzp/U9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3rzp/U9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2716C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743133193;
	bh=yPFsyw3gjjKBNCH1Ay4240t9Eznz23wBPuO7V4TLzkg=;
	h=To:Subject:From:Date:From;
	b=B3rzp/U91BGHXDP2drCmXsvBu5UUyulaTaoH24aNuvqf1baeGjLHXkIyIoiI88IJP
	 hmU0NO0tY8/B9svxmkUiKra8Ke876udNpf3DVBIp3Eik8hPz5l3oSDmknDBEioSQ4M
	 7KhnqU1eTsUCva1e5SiS+oR3pRPELUT6lmgHvJxd6lLFbgAoM9n7qwUqSc3S/DouaO
	 s9DS1MXG8z+sTxf6WPfbWRvm/B75mRSjx6bqvnAVaeEuCqrtVS6vxuTNraSdTD+uLJ
	 DpClzjmYfG+PUTspWOGJBoBZe4DkT95b4SYjOtg3VfnhxwcKodibndPzlLgnsvTvw3
	 WI0Hrn0QvbOaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4585C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313319372.19348.90588941034726467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e83ae3a6361465e4d5e68a54c96eb45128ab8704e4e1261f1c506cca7f7d674
Date: Fri, 28 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743133193
