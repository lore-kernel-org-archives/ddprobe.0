Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152F379FE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736312154; cv=none; b=enrfdxI/4F1r+LPt80VhUFRHiG3IjWaqg67VWamIBwaq7cPm3i+bHtswmKhl2SawqHh1ESvyrPqg3ocV6jEsCbuqpU9TL4F7xZ94UAnqiMonmtCj8+icRoqLEF8K+otem0/+2EAJWem4v3TjZqaxrsw053vDy06Kh0J/FlgIaX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736312154; c=relaxed/simple;
	bh=xJwSNVwfcm4eZLrHyD19MzEzmxkSWtTie/U235uadG4=;
	h=To:Subject:From:Message-Id:Date; b=fZaoSdXAT+QANH+CKsB7oztHMQbF38zPQtMYhOXS9oEXS6L/mphK83VYQyvyV24urE9rvS7ob7ThViuoKb+JToiY8iJAi5WCAiZnTBuo9EcVlvs/R0BMLhjJ/XJ41O8YeQfViBSax/+BOSiVVUkOiR0m+tEsTzqMryOntcsUZGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4cRPcLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4cRPcLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FFC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736312153;
	bh=xJwSNVwfcm4eZLrHyD19MzEzmxkSWtTie/U235uadG4=;
	h=To:Subject:From:Date:From;
	b=i4cRPcLsjipQ0G6hdk8NjeV6MRNOPGqGcgmlDZd//YYKJNR+zNXjteHhMg//Fs5VB
	 zwB/LjTSoPi2i+LvlJd8ffrcl342Q88Hi1yENulOxaUAs3cBVUFqZs+cBIujfFrmlv
	 FwstNG6dux/6qtGrac2jUZ6GHqyfIpd1+u1gxEn0q/pfSOEJ6dVrN8cXGXE9+VQYLb
	 mO8ZihB9cKKUWLH8OU6qfTKKRrJf4Bx6c0o6I4svE0nbBJdJ35lnlBTohvdNRjT8eT
	 NItOjN4WEbiGFPHjis95hBQfyr6un2YDCvObffG7K73bzK8ZwxP7tQXMe4fosprazR
	 L74JJV2FS66Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94875E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631215358.16748.4410252893561703840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7902f01102bce99ce06ef12ec9fa47aa04b25dadae7ccf0dcebaab904ed0ba62
Date: Wed, 08 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736312153
