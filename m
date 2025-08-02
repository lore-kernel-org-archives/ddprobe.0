Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A7C19F48D
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754122194; cv=none; b=kYRDPxLKxssqOYRtbbllcd6jGkoF7w/xLzVRqbZlKR+NYJDDpwdjpsOhcqUjx7c0/FjW42f404aU6xtD6qrWA2VPvswZkhdJw/troyhdUHpKEdkPMI/tMurUX7KjuZLpDX2cySAP+MXJAyWBrKzSQQzkU08COsbEgAtZNYdFTi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754122194; c=relaxed/simple;
	bh=FB5sx29uATFQWx6JVrtzOPemmqDXPiC9aKdNM3/m4SI=;
	h=To:Subject:From:Message-Id:Date; b=eTjWLy+gIKqOmAtyzIdJcLGaABYUX2Azkvnr8ibT96lWn6fTwq1B+dDT/E2xLsgPHnyyYa7u9LRLTxS3KZ2CkdwDpW7nG5Q1fOHKg3L+E+kGrK5sCAWqeJUpDd915OWoJD++bKSUE9YmDH9ZfgE01IT8v7LnFmMIlrtsOiq5LhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJ2cXnZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJ2cXnZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B06C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754122193;
	bh=FB5sx29uATFQWx6JVrtzOPemmqDXPiC9aKdNM3/m4SI=;
	h=To:Subject:From:Date:From;
	b=UJ2cXnZA+re3ApACq2qLbweCK9N+wxXoEPbwCRx9FBzT4EHtBW3xsOt6nTVFG3XEX
	 kBw+35sCC6FpZOsUkSOV38GZrG52atUBJve9BzIqNAIletwS0fc/+OczZdC3u6mO78
	 rmUdwy/8EYBieeURqccBzG+dIBrui2dF3VVi+DYGh2vRrhJ0ne57WWqg+SMUpAaZhs
	 t/Xls6hQu+WxVufqlzimIf+TQ2rVFHidcePWDZyYt2M44ZqBBlhqOmcZKsSEmH4WJ9
	 9YaIKttJJvifz/lR+puB3507cU+R/IVySxH6emjpm/RrWde4cyCsA+kMblIM3Jdrma
	 we2yFACOyBaZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9467FC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412219357.16328.18228863821104429540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e517ff3a0b0bc364df23e2d35b1e12f6ef46e81f91a0d90bc70db433f43f000e
Date: Sat, 02 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754122193
