Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2896D492519
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780522474; cv=none; b=ns14KJpX8DMgWl6mS0QgK8oWmvHFhQAXAptlprx+Cpcd1lmhYbRLPVi/u7IP4hlm+XSBc3MvlWamV6iBYVYcpp9sjx3DJ2jTHCq3UGEDnKFDTKNg3CZEg7f1/7gpBb9iF0GXL/epb8tFBEmTXMW/i0SKuvg4Jr47y+PFaEZ62PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780522474; c=relaxed/simple;
	bh=o4pyKsiCRGrmQbQCq1eJNbKEyBBRTCAb/RD5bUVxV5E=;
	h=To:Subject:From:Message-Id:Date; b=QEBZD5KsQshQSIcgeAABUj2TPh3z+im6oHih2wGmzagy+kTaA52RE2xqwOQGiELbwH5k/+nuYSu9Pqjf7fNH7Pyjj/rwai34SiO6+4bnecf1o+mfiWrY8Pxk+gvxwlifo4EXCXHvaNSPB4rbbeD3C8rYoEWmHWJrEzYp5EeScKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Suc4Z3H2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Suc4Z3H2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61CAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780522473;
	bh=o4pyKsiCRGrmQbQCq1eJNbKEyBBRTCAb/RD5bUVxV5E=;
	h=To:Subject:From:Date:From;
	b=Suc4Z3H2pMgSacmsg6v+SarK4zIZiLtFsXseha9brLltj9oZI3IycVAn0mqgCF6is
	 rGH96+XHvV/F+guACb5hHko2S6Yh6ZZ2tMdc8XX0NuzbipMkoB8RY7HiqUdBwhpaOL
	 CLPHweECq73nYZX+UazzRXNSnk6AfILoR3xb6AWfhAjVT7roWUqj+sIlB6qhI2CBdS
	 6h9DGKNRmuR5Jg+6gP+HP87E8nGPia/w7wesuIrfB+Bz3OORPJEvbbjD6wgYOON6J2
	 TcsMwzYYBOcPw69dTPdhxTs8ioJ4tarS2rSN/3Qag2bal7XU95GytZbZAx47/gJdks
	 h5fqfFlL8BK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF303CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052247368.15059.1710595882435012887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57f9291582a23d8de5515c15d8ca1214917aa601d4bda574c280985be413c63
Date: Wed, 03 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780522473
