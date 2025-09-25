Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340B42EC568
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758814794; cv=none; b=PEIEWOOix9tWRqXBhrfL04W1H5RaglqEfPKxWTndcnSprMOt6PtuMi5lTcAZJlv8mDsRZIQReVSZ3d9wC2lx+UcsLJcJec3SbuY0GgBnHn59gmANHRSFbtbtSXhzLGQknOZpmjydlmQd3LzX6R+QG2UEBgtV2/vayzFVmdFyrrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758814794; c=relaxed/simple;
	bh=6BufNg0bjXD79Atw/WEaZ7sLvhsKpS/wyRrDjhBny5g=;
	h=To:Subject:From:Message-Id:Date; b=rP4QPXHscLkJ7qDkOqp089SHCu0SGPSrV6sPVB3vcr/BBfCXk5SlS1c582I7C2X6hRoHXM/ZC8WS9Dxnkl81FX0pc+j25tXrWfgYJOOxaJMRmRaoml7gQGfzs231hfySr8NG3+bCrSmNjTR/EKEsWxv7tds0QzkAigDL30sXpZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4Hdxa/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4Hdxa/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0113C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758814793;
	bh=6BufNg0bjXD79Atw/WEaZ7sLvhsKpS/wyRrDjhBny5g=;
	h=To:Subject:From:Date:From;
	b=T4Hdxa/bLOuALzi/t8FOjqMgyvDIvQ9zcJ53idlukfn6X2//0EidZFGPM0R/E8UDO
	 N8OZhlDf+eZkNQviZW/Mxg2JRYoKw3R6tmVx5Gu8mudfGsmHOnCEgl2lVFMXEBV8fP
	 lSPHQzLIX0ZGy7XwsZv9n4hMff8NvfX57Oq9nH1c+i2LwrhaN/ByuGPb1L8pr3cS53
	 gTkFLGFQ+INgpCLXAN+28Fsrw1ZJNdo9pHxrenTLRy6dTup5huCSAQ7cAOQhBPa+7U
	 P+VTxdrpabnzTjvEMnIlBRlSrXGd01k2wswLzpSO0U9CM5lRPwDcO6MJ6vtJ+bKVfX
	 u/+OEfX8OoS3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C90CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881479361.24695.9805236308304089830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e1aa391edc6b4a0ea26d7ddc4de5a525d57948a118c14446805840c3086411
Date: Thu, 25 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758814793
