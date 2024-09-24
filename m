Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A261AB534
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727190354; cv=none; b=W/zslp8A6MeV/MLEw+2x9/DrN4GJO7y3CvhanEgSBuF4Tf0sJ0djtKjS23ZK4TZp19QYTdsLnZ5hIIljJ+SEr77oDHGs0ZoLzyzpp8hMvux9RZWm2ead2j7CQMbb8w/j3OOsIaPDwJWRZPlYW2+T7Z1TWJrJaHEqbLg0Orq3AHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727190354; c=relaxed/simple;
	bh=vBrr3vOnUMFTuf2muf+lcQErH40IfDEoUUrH4TLBb2E=;
	h=To:Subject:From:Message-Id:Date; b=HPx41r0tyB0z9qHYd7CsLcDrNBVXcPJmIiK1FUyOhJwmyDUC4oyWyD6oiwLA0skGWOff4Puta6cAAuC3hhij7q9S2AHiKZy9wo4EtPWSI8u/Ke59mJo+SPvMcc2e0WgA31vv7H0UE9lsiiw1wTeezWW/oSLncBsBgJWDX5FyWfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kg8DXHm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kg8DXHm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A9C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727190353;
	bh=vBrr3vOnUMFTuf2muf+lcQErH40IfDEoUUrH4TLBb2E=;
	h=To:Subject:From:Date:From;
	b=Kg8DXHm/k/TnTh5cd2D8ohfQvlYPqAsEGeA1H+3XpURezgdR85ShfZeRuoC6uQ68L
	 tzzJCenPbq2WeRzIHDeDc1NhEUOGrA91O1mNz8j0Wjb5Twza1D7U7tV1MqxHuEBymu
	 qaXs1zDYswfl3SM3t9ktMpf+dmALStPFmNalexoy9o2siXFluC0OercI3D7499oFX9
	 T2sOxoGRIwjYNsJR179DavPeZzC27Wm9xcAR+SOydyupcjdIsF9P7iTSmOlKi33lJV
	 lqUFBD+c+dci9J3hpIOcdqBxtuLEWYq/rM4AWRxTIpIbBfs75HuW6afpYyfEBaAEMa
	 +YEcLQJ950ebQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144BCF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719035358.6070.4227339603867208369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51100978e9004318fbf945cf5d43dc9e87a01846bb494f4ffc5cb67344017900
Date: Tue, 24 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727190353
