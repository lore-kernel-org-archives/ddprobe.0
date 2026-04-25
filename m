Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2B23939DA
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777111054; cv=none; b=LpDgwO6ToihWQFpuCpTrS1oPrd2A5GeNldVsuNHYQxUgn/ZOhzw0XUUOAXQiWW992smax9RdBGSv2GO3Bab2AaBM3986fQNViyCQBCplx0ig6oMaPJFODsoGMCUs+l4REEeasnly0/dmhWMrVrfShV0g/gP3FSmaQoMPNyjwICo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777111054; c=relaxed/simple;
	bh=1RMDqMg8RBcXsKrMSa8zSSqIKLMJ2q6XqLgafJfkkN8=;
	h=To:Subject:From:Message-Id:Date; b=GWMOYEAxT2kr6BhazW/6iRL8JTwKWYxPfHWB1I0NQOx+u8bGBs7QjLWRXZAZNAb3hLLsqB0EJZK+KSmcvC1/o4OcfYjlsEj/l3Rq19DajYwt+ZvTB90MSv73Rrvh2cdAd02nZOVUI+gqkQt2fuF/NtA+OPyd5eSj0At1nGrrob0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXJPdN2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXJPdN2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9387C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777111053;
	bh=1RMDqMg8RBcXsKrMSa8zSSqIKLMJ2q6XqLgafJfkkN8=;
	h=To:Subject:From:Date:From;
	b=RXJPdN2MDIDW4EAQU79v7NW9WTWaeVKfkIfugq7nHdgDsTSLq0o3iQGpUTIlrmyPb
	 9wGoVbY+CN8zVtpNfV7v5KTlr4CrAn7xECJ//nyiuRwWXqUocGIt9XDJf4n8K/URQ9
	 WswMhVELV0gDZ+ohGfji4mgSbGULrXbe3xtQNCEYb7vnkF2wHA8X6THDzUSqBFHHdk
	 QwCiACtJHqg6Xkry0qMMpQ7AKSkF+hKMdsBv6/v5d62WcMJ6xoXoZU/p/K8UQJcseg
	 1zNckNgYEED1J4UtWH/gQhioMqtRr4iTpYPGLCX5c8ywNrCf7JurjYNvnxhIC95mKL
	 a2LgpYrdcJb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA624FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711105368.10408.13873578806853374975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01e7a6e3b686f54449a6985087800f63af3ef3ecb8077cbdcff7715cb9b13e3
Date: Sat, 25 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777111053
