Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2271DF748
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746640193; cv=none; b=NS0c5pq9q+Ua0egWx2q1atRbSlzALcUhrhzF27djEiiW6JZwUf+3OzxNJVxhnAUMLTg/A6qkx/xpqyhVXziSg+m4B9grjhdI5kfbHfKo+QufWREDgjXuIKIsgwI3l2OoHWSje0UYEPkV3Bf6229eQ9ImNZCRk49HHks7IrEKoi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746640193; c=relaxed/simple;
	bh=PCg+bqddQk00LHpQopubGWfhFEXT8OR6PRVWLJYE6OQ=;
	h=To:Subject:From:Message-Id:Date; b=Iq/TxIAMSc3mB6Fsm1Azwc9TZ1VCAtSlayFq9da0cqZBqP3OcE/awaZ1uhwd33mgkMekNQ0OvN6uXqJG1dFVfNwzApU1QZMLk58nlxQtCc0Uhu1tPmYCzXL0+ItkhY8PDnCrFj89mJGkbkbXikzoIf9TshFyhYZI4aTyPWvgKsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sem7asFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sem7asFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71CFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746640193;
	bh=PCg+bqddQk00LHpQopubGWfhFEXT8OR6PRVWLJYE6OQ=;
	h=To:Subject:From:Date:From;
	b=sem7asFRwtzEv2ZZh8vWdI6yoQYQaO6iIAcRLhySzR0Cg9PqF9/KBLE6kdzZBCN1/
	 XSvsh3/LEqySDKLjjz9wT+15/xJWSpzrY+7PkGW0A9qDpLMZ2jdoJ7PPSW+PNpoP3o
	 0WYRRwdptz/2+y7ivwXUvP6iSQjQhy2wnVDvK2NjQo+xH72osj6IPCP2ZeVKm6LNNv
	 47J57jxUHMqTpgkrXhFYsFlmMrm0QNdv0gsoNBBpI4/1rNUu7b/Vz/dWpsAJHqdN7S
	 t0UdL4e6+nbxunj08sHj4WmPY71qlBtO3xahh8iNDslHyRyTvtJK1pr3GCC+pu71Vd
	 y7nxoCGon9rSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975ABC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664019358.16868.6152967605927455796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e87bf5818b0281d12b5f3e15f952077d73017cf9f4aee62771ea3cc33e991b
Date: Wed, 07 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746640193
