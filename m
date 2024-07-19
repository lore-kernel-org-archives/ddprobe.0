Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E713236
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721362554; cv=none; b=XetEdF+iODD45xLufaD6Z9xCsbUTuaD87TjxdT+Dewxd7jwjuwWoAM35tblMC19McVLMAroq7vms+bvHyRRqBkKEs/Zk3TxDmj7vq/mrP8PwtoDVL/z9AQsC9VT1NaVwy8+3xAXxMl4U22bVCOumqPNz+sTD68yYYlQPfeZAXHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721362554; c=relaxed/simple;
	bh=JCvvtEe6R569x23WE4RyRTC4HM5MQn9vOMdpmmHnrOA=;
	h=To:Subject:From:Message-Id:Date; b=SbJ5lqhyNOK3Mu31ShuLnIvrRalH367k9MBjeiwYo3d7FmjUZJbEa9Q4WtZFrjq14oushbVRTARsb7oTbcDGgIoX60rsvyTh+yJeog2ymcpVw1wsj0Tedh1vwsl/81lVCJ8P0I4E31G/9j7bd1P7NydAFfcrDD92y+97QVSLbjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bvo5Ia2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bvo5Ia2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAF5C4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721362553;
	bh=JCvvtEe6R569x23WE4RyRTC4HM5MQn9vOMdpmmHnrOA=;
	h=To:Subject:From:Date:From;
	b=Bvo5Ia2cS2yjMoPBMSuKjlK17brvHHtp4jllOaX9Uwruua+t4/0CZJo9xE61NZogG
	 doDurdgjD7SgLSrVGD6bVinKJ+tvdi+y8cm1k1zXoa7XgkVb3a3xhTqNRPdPX/ddKc
	 GMGCQC4zuJ0QyVbhiAb/94hORYBVrnum+YlJ0UrmeuSW266G+lP1t8j1NpwD/l4+Bj
	 3u585qYOQARlsFmhgYijpcx9sZjx4pl6fcNFUCx3WtO50CW8VP90im2grp5Qebjn3f
	 Pdmv7RXvG8iZa6dmg9XSjKjanZPVJTEqQmtQdEt/rZ5XrCS3MmMI07v0kn0j8NTlVa
	 7w13CerBRLA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FCC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136255359.4985.17398750408959849032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f35e75c04bf5858c05654c1e7048d617270eabd391be557b675ee660f3c9de
Date: Fri, 19 Jul 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721362553
