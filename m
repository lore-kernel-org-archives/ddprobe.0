Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11423E958F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770203034; cv=none; b=GfR3YeVMGppNVWPlOq1rpf5ndji6GMsH6quyVuF5tpexEZtR2YF3FCAZ9st8HXWHpC9do2/PkRcr0iMNESqzfBLReaSXXX0BojuNiSh9OGQVLl4+SRvTPUJ//yvPEkKA15t/PdN/sflB4WtcmNEuM/2nedwjqSHxuRPRZ7ITkVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770203034; c=relaxed/simple;
	bh=Q9dw8TqlqOn+GrpBAumw0OTPZ0rTpoR1+wRp7lQzehk=;
	h=To:Subject:From:Message-Id:Date; b=E835xMaxHv0yI5XbVMizeVy6V+MXxNAaTFmO32+NrklIUIKyHyocPAWxjNaPcW7/vr9+E/2WcuaLWe90Ma9nV7i/d9Ur748MQe+jV60nVJCvI94ZvZdkHCpRlOnsxNqqIweTHVDD5EXCYbnKMi+R6/Q5l+oUqiMHPsMPnPhuUe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSNeLPIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSNeLPIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5210C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770203033;
	bh=Q9dw8TqlqOn+GrpBAumw0OTPZ0rTpoR1+wRp7lQzehk=;
	h=To:Subject:From:Date:From;
	b=JSNeLPIaUqHqogkmv2P0/cVl89WxWePP9qNys1eLkz9yChj5GYdbOEu1X+2f9MlRf
	 Vy5wRRwYWsbB0mtNMronxa66HnXpa6S+yikXXF5GgZ3wc6dNE6rjYbHMPgLVB4XYR3
	 NS3B20n8uqNWCqNTBB2p0CPkUTtF5YJlJ1Y9ICi7RYMRbWUBArylQYMAlCSCZqBDEs
	 amOK8w+fScY5/7cfiB51LC4mm0EB6sVS7l2wCcmYtLgn4SvNlfnXjjNjfyC6Pxyanr
	 R/bEFBbWOHX6Nkk5WlUS9NPBi/fLdA2Aq9wdXCrNye2pMRIURrKXlsFqvBx9JfkiPp
	 d05GoqApvE1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C2E9537C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020303359.20078.4243475272296429043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e494e5c7ee4098a981fa4e84793a8d43c77e1f3c76965f58bebcd980e87b1bdd
Date: Wed, 04 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770203033
