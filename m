Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D2321148D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737641154; cv=none; b=PBQ7ZHLYMIUJQBQ/1lLBD0f/ePbGm7IvdSifbC8nymXsaP5ugAXlnBCvG2n/cL699yAkXhkx4PIZeO1mvF4NHJteGrQGAtcrggrezySJSQseFTQtVc4xS5Cl+x6jdfqMJ9ejudHEwL6gfyxq+OAUSzVR/vENlCekHfDab5HQbVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737641154; c=relaxed/simple;
	bh=VF5TOc+ZPBtt2TwDxp58VKZsJyljydEo8/DGJoKBIEE=;
	h=To:Subject:From:Message-Id:Date; b=BjWdE/kp/JTKgeHSuNe5Ov1dom7BHU3Y1ttO5jkh66J7gTxAC1A/2vkz2ih/kZ2SDgBoBmMYoxjm1BhLDV44w1YeDud+ImzIxf9G+PPQlwGWmgsPKky2blIMq1eBCoX9CjKVq+wGhysQlhK64eHwesHL0UwKF9Lm1Iz3Htq5Ihs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VH/akaPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VH/akaPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC08DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737641153;
	bh=VF5TOc+ZPBtt2TwDxp58VKZsJyljydEo8/DGJoKBIEE=;
	h=To:Subject:From:Date:From;
	b=VH/akaPoUA4yyJen6xdziwJLOqo720TIaB3YALtMotKqRdoZyLDtaWUdQOiUgxzWW
	 I27fQZM1scz+UD7x/gcMZ9vavXPqTOrYwvwjQauEpLnNr693epvH/TfnVHfz/bzVCG
	 Bqd//BVLhfX+/CgNaMp1DDahQbCYSUa9AdXtuT1vRY94bFUW/PyHy3BmS5Xv79B3ab
	 sXEtr+Escx9DUgEboOJDWbieo6Lx2vFYV25aSxX6rB1WEeLCl1aYcab0jP4gqMkY4x
	 9mxCnIFQReCGtpOUtnO0JW7ay+PdYyZERwowqY0SMnfphmuc0l0n4iISntLUvs04dj
	 5/juR61keqo0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99029C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764115359.15681.15051487318677419891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534a9dae0d9ff2ad66846d3b29db3d7facab86db8507bbf1381418b14fcf23be
Date: Thu, 23 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737641153
