Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A9F280A58
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767152034; cv=none; b=nVBL7k8UqIh44hfHg0LXs7XekhM2Lz8hk7mzB2eQ+n1bUutHnMshjq/gjw5gN97swUS7zIaGBMFYlLuKn9GhOXGm7JCyVffpqKpDxdSaVaDl1wf3SUB95H1WpPvdtm4Ng0LBGgLn0EOJPDHVEAwvPwG59D7ZLwRLbrxfGiAFXJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767152034; c=relaxed/simple;
	bh=lNHk//dvgAsZspQmaKHlId0S9LiEjaaCwRl/J3BGP5w=;
	h=To:Subject:From:Message-Id:Date; b=ivGXP+IbrWG6chusdrM1ffrjBJOFMJdD95NIrW0wbk3Z0qf7cO60MPXCarkmcA3poi+UA0XX9V94bt8d3kY05+Xmm/INIyLZYkWifyODSu+CEUzOll/36U6TrNRqk5BhNLvp+1NSjbePan9agXnToMm1MQH4jj9i1rgydJLSGX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5PWpzg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5PWpzg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767152033;
	bh=lNHk//dvgAsZspQmaKHlId0S9LiEjaaCwRl/J3BGP5w=;
	h=To:Subject:From:Date:From;
	b=j5PWpzg6ZFrR4sq1uVQlnOOo5ldDjeohw4Yo3r65bsIOli1Pw0Zkgv6+QoZsOi8o0
	 Dh/1ciXpy525S0XLx2kl6RtdsJlPtVJX7hgEqQ+z9bngW/DETWD+FmtW16JxDy2wpv
	 gjReH78UPqRUa5kecf3NLRRFf93thyaFwfaHCpUQSASMhUit1jlIlR4xVgsyOUdp8d
	 8xOEYYQKxDi0o4xIiZdYupczgIvivFOPsIEzUrtiBAqEPnNyEyezi7uAiQp7/pMXea
	 nRPpKK6ONPF2c5SiK412lX3jOUQOJ2ySndWiBYV2yxcsYSCazQtbssC0QJ37OeE2Ua
	 ZQ5ouSeoSFy4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979BDEE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715203358.1424.9772580791768300254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3156e75cef3c5822078e5f120196d002dccd7cf874d692e2f84a70d40943ec89
Date: Wed, 31 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767152033
