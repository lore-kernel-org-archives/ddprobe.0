Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC38B1BDFC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705569497; cv=none; b=fq4bUBBj89aQaeu9zGV7ArjjyNQp/z0aHx/VB3r4haI+WoFSZdlmwJKP6kV/xZgKlYPRB3Kp2l+LuWz16HquKBCEzx3XU2ORAnFfU4pAjhKxi9Xt5zfKghKi7a7MKZLZ4dGCr91uTw27yas+Rtgc36V5oAQYGovs3MvdZaA1X/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705569497; c=relaxed/simple;
	bh=LIWCcE8l7m/ntRwrLgJMOl3w6GFK/IwGn65MjI80N9k=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=OXJsnMHYJejtUGjoYbqXch0VP1KY54g6dZrN6wHeVOt4ACwbSGAG804xp74jSDrBlzH003m3uqiA1L98Hm8uwePeozaMZotc9uin3lLclKT/dh+RddA28V8Blt2eTihQuPZr5uon15GQ0nrf7DlptLyU+aLJ8t9XVif/+dX21JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXFNv1+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXFNv1+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DA0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705569496;
	bh=LIWCcE8l7m/ntRwrLgJMOl3w6GFK/IwGn65MjI80N9k=;
	h=To:Subject:From:Date:From;
	b=CXFNv1+pwmgYWGW9ioItF5mI4rgEXwSJxO3FbdWKKCPHdy7Pr5m+E5UI4emvxeo0N
	 N+DjQmFBjVYrtQz3KAD5pfA4dHTl19kxTxJRGorYwxs6+rE9JN2YnRFGyilFliQLWr
	 h6h8lb3Ae/OsRRpqbbmwT2z29CNZdVj8ExIbQTYcc93/kfU4HLqvUemDvH4V8XQTWe
	 Lar5ZOwym9vWOzNyKNYdle/K+yEHG2FoTNJaIqYcfqu410eJ8YHfgadVxoD5GuZAXd
	 1m6bRhsImmgo6vbUh0l7UlnwNH45yZiePZMiW+NFA6jF3BAqo1XQUNYkfN8H+YPQJB
	 hDLZWTAn4ycsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF4BC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170556949637.29972.17536404119632573774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fea00686dd3eb53b821416491c117860cc5d96ce7b5caaa6cb31fdea40962a
Date: Thu, 18 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705569496
