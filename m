Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7F535AC14
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785478834; cv=none; b=UwLn3fi9ZTbVGwFAi82UKJf3DltSBYrqmCdR488D5jSQcR9VcHcaFFoAX7kgaunHnYBAEpvhyri1NTzRaMCItUhFdTeqbh9xzyVaug1z5tqf+DxEDf9C34IMT5L15u/yZvDIpnNENzQPYubEbEkpzpYh79IuHmiWoNRpsol/Gao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785478834; c=relaxed/simple;
	bh=3suWTgINjMAW4j8hk31JxJfN90MbNTvRUeVFhYXyiLE=;
	h=To:Subject:From:Message-Id:Date; b=jQ+aUGslJoGFWwysZ0BbSKEE4lE7Hbp12bwRJXpp9a9hjD6Ec7QxQYIFasz3Rpw7T/WmzdDyiuu4rytnpqTwCJTR6lrivCxkTZ+ABCZqJUhphEsdUPLOeRSBdygzgPlwnRwsBSh0kvNBk+WL1IFuNUtm96QMfMcyeTl2bxhQWyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGTFKdQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGTFKdQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785478833;
	bh=3suWTgINjMAW4j8hk31JxJfN90MbNTvRUeVFhYXyiLE=;
	h=To:Subject:From:Date:From;
	b=rGTFKdQ4WrFrHm2++OTN14Phr0uOhjjKGIaBaCGKbES6UwQowlpFWJ7HUUqblhY8d
	 In8xUCLDEKsmKAPAPEJOqn7qiPvdNmru803jHf0ndyutlRuArBhCDxbXgQSPBhreuS
	 umulVycWM/jKlxPPEgfJgaDMSXI6/0iZz2xzbo108WTrSJtS+bbK6fTcKx+ygyldJu
	 30uqrht6Bh5TKhCjIwti5vHMmgNyQiYWIAqNagnqygQDXwinCurziYIYYUmfWePh0v
	 5NCP+bGWIHPqNw/Hy6E5iuoxHQ62ln3XH1qwVO6z7cnuMxLstwWV38t3cty4oRYGUz
	 QFJnmah1vDmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF9DC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547883369.12404.16188192625473826027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec14e2eed70b70851d6eaea4a8a14b22143914683e91c708cb40d7de519e84b3
Date: Fri, 31 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785478833
