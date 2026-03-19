Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CBC31A04D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773957894; cv=none; b=biRFEOPFCNfbcjuBXApq/ncRV5Y1wf+JR/hdrfka0mJKd2hTN+tFoiPxcnnYSngblJJlyd3QIJS4Ykefit0jeVlPUMP/eI4qev4mCQY1hi5bxhptYCh+HSvIOtBA3t084wDEgSG5REGmgU4LjUTiE2PYgBUHS8da9QS+66anMRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773957894; c=relaxed/simple;
	bh=INZOrErJ1s3wktXlPeTluN1dUCy+1sJmCiw3QDIRuOQ=;
	h=To:Subject:From:Message-Id:Date; b=mSDs3ea34fxpGUK/I2YvMOIgWotVi4ITPPsx2an9pUKMtKjWWFDe3fVLTi1exuncEmN+D5AK9RP1azIL9kE++tfKp7OoqbJSny5yeZn1ykqEuuf/j9IfX8O8H6ShFMMqAZdm51goqYtsLrgC6qeZkTpMKaQoNMoWQWXVBybXSb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aG5Rux10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aG5Rux10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77D9C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773957893;
	bh=INZOrErJ1s3wktXlPeTluN1dUCy+1sJmCiw3QDIRuOQ=;
	h=To:Subject:From:Date:From;
	b=aG5Rux10XnMJe6GBtArjpIimzyTV7AbXXhbCaRsmy3K9j/MF16QRH+vwYaLIkVUno
	 HErbe0TPAyRawX/9dq9ZL43VVLPkny7dR1ppcvI48bOPgI7HnjeLHNECKV6kPMpfkj
	 lOUjnE37S9vcT5n+x71c9NBY614AXt/+5WP7YL0WxtcqyYG5ipiJmugwLBigk74pQ5
	 OMJlHx34mPhI7Ypln7LW9tc/0XyFc9EIwsYNrua7tb4TIgPRUAdrhyeAARX/Pk+Aef
	 GM4kPvnG2pgB6TSXLzXdnVBQehKRdVCFVTXv/rVoS0FxD0Gjp5QbxbPirZxWbRG1cJ
	 oRTpNq+wXIWKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927701091916
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395789357.20190.11083055351702703186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2831146a3d8f2c54e432d70c39bdbfa552f3f7b43f61f754de90e4670a5f640b
Date: Thu, 19 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773957893
