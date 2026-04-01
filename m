Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3755279917
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775006694; cv=none; b=MHa39cTEruHcWzODcmq2j93VIV589+xH4BfJ+43iZ/JTYyW2CFhLK7u/2OppDrP8oYh1dfyrQeBq86ogOToQnfBwCxDZHOdv/Rnr8Ly49IdYp31pdhX3Gs2hsZtV005XMc7d7QtV63KcIbMP6vWZs2aEb36093HZ4sCtvdq2vfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775006694; c=relaxed/simple;
	bh=ucwtmANyQ9kmrV5q5hA9sjdx32l7i4NiyPa4/mhaSJU=;
	h=To:Subject:From:Message-Id:Date; b=Qn0WZtecv/Y/sx9Dtdix6MxVB3LqeVvPI+U2Iwn2wMUR6xuIAMuCWNDpJViXg7lW3VsoFms8QY0LOUKoBurdQDWQLtTKWa6mIOSs6YG/npEmFd3UxXKBmYGQibOqSf3wxYXViMmWuCMFcv/Iz4jU5xIZmfcEpq+4sQpI2ofeedQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWaOrVhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWaOrVhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D2C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775006693;
	bh=ucwtmANyQ9kmrV5q5hA9sjdx32l7i4NiyPa4/mhaSJU=;
	h=To:Subject:From:Date:From;
	b=QWaOrVhEdDfnNzzdDL+uLrXQ1yb/NQVHSyqPdk9165xBXbXn9mQMcOgudhNFohMzd
	 d0oF8joe6mZioK99fdKnv4aPgH9GujFlaaHXY39sIhnb5MDA/PorjNLo39Xj9Ssp1o
	 YfU2EKqnSrQ9GrOQmt/5Y/RuGZ/+tiHxwSRJg8aHv/EgdA8eFCPPCG+gQfHJJwYYvk
	 v+bqX7lchcU2JC78FMyi9U8E+e/ZAJhJodr0yVbvDwHqoL2dinocDWXSrkewIRsNGD
	 2bP+opR0uuoLDdfeaR9QwC6J6HNXi6XkjbWUrjVGyrMMqXh9I7ANcIwp8PweTI/7EM
	 ICTdMcSx3/Lmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195210F9311
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500669358.27436.3424037314262300331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cf4c303555cca9755fe62d494cd5dc63b1e5e615985903ff98098342c16a97
Date: Wed, 01 Apr 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775006693
