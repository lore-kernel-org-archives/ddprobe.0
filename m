Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175A7BA42
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757097594; cv=none; b=k1Y2x/7rgAXgWUeoEAMbunkf/kP8M9BXYUp8lNscti8Yj6L63JUmhqMFxmo224LvdOTNE+vyMmPeGwo2pnTjlas2OwxYDke4LgSZ7OE32SnwDE4Evahalzpb7QLgxAj2VRSXAUl1wfecXD8PU0rxsr6KhXXCIF+HI7UJDNDTBhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757097594; c=relaxed/simple;
	bh=pIvWxBjsYoFhBNm7dqUQJo7Qq8uEpMeTaCbDi7GLvRo=;
	h=To:Subject:From:Message-Id:Date; b=Rkqo899o1lo5Xh5+XUNJT0FtxHJfHlV+Fuvkce0KpxGmFtm8tkKuejM0vfnd7hmbiqoeIoiqzxyJbu10lHfv7b0yjVccd/6x98ub2dSkP3hgOWoMCD2GYofm7f97lelgYf+3A3qawoTcWkhg0QZt9EmQXbzrS+IUgxWLZx9Irxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ben+rx10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ben+rx10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A0C4CEFD
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757097593;
	bh=pIvWxBjsYoFhBNm7dqUQJo7Qq8uEpMeTaCbDi7GLvRo=;
	h=To:Subject:From:Date:From;
	b=Ben+rx10NcRXWAGiN8hSzv/R8Tdj+19wqlMM4KYGC8Uk5R3MXmCadsz+mHywHatDe
	 Iq81bfn+dXuFJXjRYB4sYa3QQofywMg6U1M+Y4ZLmq6XbQQAAOXgUw81rbbgGaiiVj
	 vSVsXzdM2Oz1QlSg0VI3JQxPi8LBAI8m4/+MgDJiIz+kfBN1Lb/5Sb7G3y4he7R0CX
	 12Hec6/dl8zQyWTNKDNw2AIAoDtzRvyve2g9dhgxWy2kOw+XZUfTh8jWdfZHkXSPC6
	 LhkcAml0Jq9Ucc6OW8fNiT6QfQ5mA6mis76uEc8/hQeabxjYJukSnYOHW9vLUOYy8S
	 PfvYV6U3BC21g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901EBCA1016
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709759358.21008.11090978929751512890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d9b2aa276b2cbcfcb885cbf27de286c8930bd1d551a91bdbdf4812c688f8db
Date: Fri, 05 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757097593
