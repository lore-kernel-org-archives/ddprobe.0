Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFF056748
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707434896; cv=none; b=uVAjWj1oZ1d3iOQs/WeYyOfzLXetdzas5H6A1BE5f2cz/8re/R17dIQEbcA7+mXNdqs2G4GVovRWlsWW5RxtZjHk/DMTbYz6Mg6xRyQ9MSSOvMZg1cb4B05f0neX8OQF2N6UEqzcG45QP2hiYcaEvqe7sApeQdDhIe+wGkxRuLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707434896; c=relaxed/simple;
	bh=h6INHJ6A+hu7Wi7X7aOqTzMDfRphnSah8ZF+stboC9w=;
	h=To:Subject:From:Message-Id:Date; b=dyufbCuVjNj+43WhPCSqUTWBpS+8PrlHyKg1kJwpdoi0fzNfZy47utSCSnHJNkdGf75yG4c2Ca20gDNxQUvuFJUgwv9OuFi7V75ykwdNLGKpO6bV6gR2Ix31Xodt6aFILLD6pC6/iFLr2C60TWhCwdrXJdb5pyKYL+QZe6fwmEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQfIU5Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQfIU5Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A20FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707434896;
	bh=h6INHJ6A+hu7Wi7X7aOqTzMDfRphnSah8ZF+stboC9w=;
	h=To:Subject:From:Date:From;
	b=RQfIU5WsawJ2fcbUnq3qlYXRNzpnnoaYmLa7r6/PuxtqzKZEqrRHC3MgHn9nvkdmW
	 HB+5mTqsqs2LETNhP0bD4SCjLl47R+BZEo88fdaJzmn5KFOgYTfttzmRZ72jhLPwaP
	 i2B87vGgltjdCHeX0cIoEkkVX1mEuIx9JIOCt2seJ4/1b+eDAfC70kJSZSDGWnr/8j
	 yUcXXCDRSQxqI13f0SW77hQGxKg17RVMHdYL+YN4W/fA2B6L0HTEyeXmpngbRLk1Ja
	 e5Ui8jsiVf3Npqah92RleSIHdN32p3tg9ovLaVAt6k5H28Lu7uzDILHhrQ2ZkEvepV
	 +x6dDR0dEQQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDFCC48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170743489638.3093.7741247879922486757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977f91119fa5a17cc70c47915a6ffb1721a53141ee96b7bae04de697c7ea98b6
Date: Thu, 08 Feb 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707434896
