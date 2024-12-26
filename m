Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461103C3C
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735223754; cv=none; b=Tl6uNTKnguJoLIIct7a8toSAnOcMSxb7d6SNbZtcKOdncXJvWaMoH530rvNRG8LDNeoMFDyz1vV3Ofx4fhxlsWHun162QgUffH0TeP2y3+jQe3agX4OejcPJvMm2nxZOKqPiHFcd5KXCOb7DZP07Nouw0a8hVA9SvM4hSmH/TiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735223754; c=relaxed/simple;
	bh=drxDZSc2Zdx8iUraIOzxJb0Ibds039O2FprAP45AeUI=;
	h=To:Subject:From:Message-Id:Date; b=j3cOb8fdKev5kOg8QLI9begaswU3IyhuQTRrwXv+3CgwnzQgywLBjfh8BTno1k7QeWWfYdm/UWMurbwTRtwpfXDAOHdqk4Wtwh3RMPldwzQScJQNxEtc7Fm13bsMD6DXVJwbAR0Ct/81bURDZP+0qpv4QNu29lyh9UNbaX648uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCNtbnfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCNtbnfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2136C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735223753;
	bh=drxDZSc2Zdx8iUraIOzxJb0Ibds039O2FprAP45AeUI=;
	h=To:Subject:From:Date:From;
	b=rCNtbnfAldtN5KjKawglCfPOeIET7tZRx3Dmk0B1V9i/+WtqAHQk/dZJpuCv+wtxT
	 Iiwmcq8afsVdFJUfTbXU1TTEZuhPNP7MtZ3YEbJzqmEjuedkrtSQMXFWIu36l5NKd3
	 8ew6i4XbMZjGCx5tcprLgemDuf6psWbGsKYj3hU8fDDOpU99FMqI5kAPgcbFkJFyFw
	 xvbJ8NS4FZhveBD85AwEMVc49491zK5YSMMluQywQvq6z6eipn8C0anTbtuhZpoo08
	 GiKBQ/renYLJwEaZiE10vA0MPP2s1aVXK88qcl40ER+ECgCc4vIUYcmULvec3t8+ba
	 gcbWwyr5fSl9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A25E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173522375364.15218.8675571145134246303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f68f71db2e7f1c71e06a191bf6c2be602baeaba2de5788dad184efb5ffba2f0
Date: Thu, 26 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735223753
