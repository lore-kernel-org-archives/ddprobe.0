Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4198B433050
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784899834; cv=none; b=Uglqv0Kn+P35m1yzdHZa8FzGD4t0uKiBpdJNfYoBDYVRXlA/0BMot+hufajhLMls3MTHMzbD0e2V+FJoMd5e8QnFNhn+NUlrZM6EuhI0YDuHDNTPnAsoq//PKf0xto8U3JxZ2/ea0MODWExS0VYpHNR+iM9WD3ntUqP7NsZm48g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784899834; c=relaxed/simple;
	bh=c4H41zlzk8RUjjgl3gL/cHC0RHBnKlD4Gwfxr5//KY0=;
	h=To:Subject:From:Message-Id:Date; b=rab1qugdWUQUj4bPuzxKw5pD/R6IANr8x0t3N04x56MXNXDjMvunUj98OecDYwkHIlsiCjrJgYZve3qJJHvV79Gwyl4JIROkfPlFHGlzh665Aqve/UuPGkQgtlHepgIVPKKoUVsE9iF0dA+/M8TYtepExWuuUD4migJLwL4tXAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYrh8TID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYrh8TID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD18C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784899833;
	bh=c4H41zlzk8RUjjgl3gL/cHC0RHBnKlD4Gwfxr5//KY0=;
	h=To:Subject:From:Date:From;
	b=RYrh8TIDjB5P9p3fbrGhauHe4rNlTyxG1U97oLP/om6LWB/YIlY+e1nTFP4wMTD2L
	 SXlEiFBbUPL9l9IxVYmiwyIza9TzJW5RAPrER7OP6yS4LXbpnWcW87fhQIVYtIRtIE
	 qN1bJ+Q4KEzB2Fsu7cIJYZ5oiJ+Z0X14rvEWeAWZmg4DDMFjRYDGCxntMwgoNR21Ju
	 NfKTX7bYLN1++z+FtlyqpJh+g5udvnkmAt8ErtFuRbXy9OldCIbD3NI+R8P4Vn9CMG
	 IvRzgt5NIGqnXty/XyHXTeyI6x52yjE22ZbPb9aadSmlzsEKq6XMdENOv7k4TMEef+
	 MrfCgz9059exg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ABCC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489983368.20279.3319885876568807849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49c01243ed60fbeea51674fa6bdc5ae161c960b845bd38acd9c76a60eb355b9
Date: Fri, 24 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784899833
