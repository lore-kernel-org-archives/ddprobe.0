Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBBD1D5AA7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728003354; cv=none; b=dBr/WFvaOVjyH4hVJ4CftiFma+iCKFJiTxyZfY+4RlrSlECkVySE/fdqd36beSJZicHnNLh4o11P8SYfiiDqXOT5JVT1e9G7srEKTj53WFFVpKonpffTE8Zd/VK/o5Z5xR8ZX+QtzCuZZ67DcZKCrtMBmcyjRdrAq2r6082wt2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728003354; c=relaxed/simple;
	bh=6EXsEyACh66CfuAlXyARKtNlduagaA4Ev6euD84hGp8=;
	h=To:Subject:From:Message-Id:Date; b=u9/u1EPjL0vS0homAWDbZ+Pn0Q2J6QSeFv4fhByoboMIHYdprjiJykMa07e9+jZkeu5sZ87ITv6dgFPUBDjjDKYDy8gxpABbvxv2loqFWUbEBJu13Q8HPqxQd9CmdYrKRYCyM9SJZFgIapQUTbTQf+Cuani5vohbEAvzgqBjZIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juIL/EDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juIL/EDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61E2C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728003353;
	bh=6EXsEyACh66CfuAlXyARKtNlduagaA4Ev6euD84hGp8=;
	h=To:Subject:From:Date:From;
	b=juIL/EDN5oDXRXgnlgFVc5y7jKLuZ04hTiLfMlVdrgijaI3grha3Lo7e7D6LsXnY1
	 TSrV/TcswRh2buZGWKrDB/xbRDAsSyYhyKyIePofvWsoK0dCkzldcLMxm1nS5o7q1A
	 zTwaQNVSPVH81lL0hdyR+PK3wX0nzS+ORj/HSx0c69izg0zZHtodq0LXig5vmSO1U+
	 2nioaMWMryU5ti8KUPYw7Ojzh8jQNPonjY85ENVsT8FaBh0/7PuJFToKrJG55QwmnX
	 Jj5Q6t9PvKir1tzlzlPHPF0TGykKx8LLaMV3sokkAftlHh+hThUVnnhCqJe5xusTYr
	 fvspqt8AWmSkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02B0CF34DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800335363.30979.9779870313928095127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac386124c0484735928aa688dc626391b5188f4a22b9ee3d6696909c4078c724
Date: Fri, 04 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728003353
