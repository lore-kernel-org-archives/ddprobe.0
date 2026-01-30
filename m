Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1774913B58A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769735034; cv=none; b=iNstUHkmixVm4x+Ub6qsjArIzTlgQMuXhL9E28FVYe1XOTsuvonFCO2iU8E7Iwu03/vEC0aNdKygo02BjJPjWfEPVUmwFl4r5IM7YaFSEpRoTLiK8WjC2pPWgiy8zC97cOuudg6i4zrkXSzbpbEFktKMAqZjN5+1h3HzZa9cYQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769735034; c=relaxed/simple;
	bh=eFBI46Mb3j/EWsJzU0OrtGqtEFl6/rAcrFO8vLMcU4I=;
	h=To:Subject:From:Message-Id:Date; b=W5jh23TpQPX9wgaAAS11aPclT0Kg8OCtv5cSZd9v6uoHTSyTkn81nxZGmRfWHdu41Q8UXAnHr+qD63/fwgJBCINZ82RUvGrOGsFPJ8PBLORvIX/LqhJwJVs5TLcXqMryIanUTGAC1Ih6a6hK76cKHVPirgGMphaM36XxGKQ4tSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpaxf0KN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpaxf0KN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6293C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769735033;
	bh=eFBI46Mb3j/EWsJzU0OrtGqtEFl6/rAcrFO8vLMcU4I=;
	h=To:Subject:From:Date:From;
	b=fpaxf0KNRXgeTnRXHBsqlL2GATRgAAt1ntEBj8wgaJSm8xbnLkxEsl4XkxnjRko2x
	 dITvKsbR6LZFT8ql3fm6O5DhDUNWeg3RNwiZK451b6K1SxSoGV08vmUyJqZ8VNpJtC
	 jca2EAq7CVcSwSGiBNdTKBNMdadIuT1Pnx/tlEdd+K09NL1/8dZPjHEC1YaIzlYT+1
	 gc+mCj/kV65TQueWirhbyY3RphsTVEPL41ryjEIfqOTPrVzvM04Z3dt45zNbj9YShG
	 /2aF75Asz6qJonCUeTdVqXTK4mGpmUkajscEEJaTO7Je6iDrStxaytVCUCyHa3t9zc
	 8Ia5JvxEnBv3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568DD73E85
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973503357.12580.1267497254589186859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d640e2f27d6402bf984669f9daaf618e55d876b1c79caa67c804433e899d55
Date: Fri, 30 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769735033
