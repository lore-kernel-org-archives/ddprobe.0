Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA8A2376FF
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739824734; cv=none; b=MSztO2I66SAEmEvZLsbNZ/4YY1DB7kl3tOLbpeXXcLRp3InXBgYs3u5+A0ge23MT+c/tOSy/KB61MUMH76Db/5/ueoixtgIJHcFA+7lNT/M6T1OKOKzzmZFtc9YhDNUp22Q8b1YrwakZS8Qc3/j1xEx0xy43N4yGyVjhjArkchQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739824734; c=relaxed/simple;
	bh=hHd8cXesEgljG2URZE5UB2OHa0sjcRePs5V+viEF7pI=;
	h=To:Subject:From:Message-Id:Date; b=rRO63pF5UlYwKYmo7tXFxpU2VhpQ/o8My1C6uYJExC3MxqD4WWKDWwXX7k38msDBMF6opmrMm27nAjnnOuxSY4zoImATxMqnp3Z4vUToIiItsFTyNw/ZpxIdSXf1doYx6rHisX+HUIW7/jelSm0tap7A+aPhRfKcp5AqsY43JCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkLIX1nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkLIX1nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC315C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739824733;
	bh=hHd8cXesEgljG2URZE5UB2OHa0sjcRePs5V+viEF7pI=;
	h=To:Subject:From:Date:From;
	b=OkLIX1nG8UQ+Z61BfUcUlH5QzDQ+bRVOaSrusPvY+7NAF64Oy7b1x2oVYLgIouNJ/
	 5jT1juOKK1qwM7psoU30R2xX7QrOvjfabntBIQMrKa4Ppz/l2/W0IaLP4zR6+Akqtl
	 92zu6eoeyj+0aTBX2cqieJp44RzduMQD+8o36+us71UJWFEHuUN1LgrNeV5JrNn8be
	 Sc7aqRhIjhAmMSmIawhU+PDHIwQfyCU0+f1bkNp+GneqetXSTvpkQylsomXKG11FHQ
	 DV4TvLE4IQknPgiLDlAFREqGgHJs2WNv2ph/NZchB5Lb3wU37bPEEoQeJNVdrHIZHQ
	 gLDxDnvHsZ/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DF2C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982473361.24369.5078870422696503089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fd0f8d0ca57a532b4ae6df56173419246e9e7d0db891ba8b665eb824f67bc6
Date: Mon, 17 Feb 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739824733
