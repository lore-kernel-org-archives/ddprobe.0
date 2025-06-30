Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287B04A23
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751320196; cv=none; b=JjtxTCwdlLgex0MUWwnUqXbglXiIlggK+dchEl8quVrkZkenlvOkhiuyycAnt5Vem9gDOnfK3/e1xCnO+zl/6Z5c2tN1cSt2Y3dADq49V6jmbOfXSlwspnVSrsw8xOcn4pZ7tG5MMSYLOBvFsBXbUB8+jC7RO5SS3CJp0Dsxc9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751320196; c=relaxed/simple;
	bh=Pc71T/N7JZprfvUeE4IXhJzL0M9pREkiA9czIqzlfIY=;
	h=To:Subject:From:Message-Id:Date; b=Nh+NdvsUsNtYFBMsy68G+l4WGE/Qk1C2916PRWy7CE9KU19VIHDCygbeOdYcTlGq1EN2KP+lzUxDWmmP4Cm73X9uez1hHCi8j7snhviVKons4GuTBZkjRJjscSfJs1l9y6zm9ADIeI8clO9I7s3JCJ3uH7JzMTIVKausWa7kPs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhOkjLpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhOkjLpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1897C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751320193;
	bh=Pc71T/N7JZprfvUeE4IXhJzL0M9pREkiA9czIqzlfIY=;
	h=To:Subject:From:Date:From;
	b=NhOkjLpAayr4gBstu2bp7bZAbfzssLJtPtD7bdaOVHCtTGNYEpIuy+5MvaZ+/kzzM
	 mFA9ToVz1SkEUThgmv/vIwBfxQN9h+T16znOn7+jRUU6mAFeZuWelHrhifKdbPpLP4
	 RNj+98cr3MRdQMELVdlP11UVv4oeihA6SAoNl+/UKR2rBrHZ+v8ls3EQtETY3+uty1
	 yxXGA4Ik9bjtoCdaj/nW04uLnKu9h2KYZP9KsyUPqUd5vdzfKGDvqrzYGT4sfAsRo3
	 QVT+girInql6yF36VIcmmFr+02hYMkGWiZWppi8Dx5Key1LJR7bQhD+gX1SMWHWpOZ
	 EJFr0ufFoyBRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63CC8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132019357.19554.11104490541156903892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2273e82382cb7d7ba63bec68ba372c6cf700eb55eb2f3e66e10f2ffdde4a6adc
Date: Mon, 30 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751320193
