Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A52638E8C4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782715114; cv=none; b=Fg3sOgeqdlk5zX7SEvZkkpwoJsMgqGU0PXW3nWOVrhP71RAb8IvAsF3hYNSTCrA7sU0mj2fUSxjnRNGnUp2fRpbwIBQ6KhLKHHrF4IV85+SgJ9HBSM9qqiOsF/i209QevE6fpG0MJRXO9kK7/RJLzYRr/2t+dAG08PXFedo/ZDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782715114; c=relaxed/simple;
	bh=oCGjg3OKIw0CSu0wvPdIxG3ti3MFbjOykX7nd2lNxoU=;
	h=To:Subject:From:Message-Id:Date; b=LMEFpgKsIAf2V1+O+eAQaXH8sQYNkkGlDxi1mF/oyifx0KZY0PWsesn+iuV9AxQfCuJyWFqDv+dhL/UDLShpwTRYz7lCszEt1dsNUWMii595dn3WBpst8MyYoDok062YMjtK8qkwbZz+vAP4n4lgYpqdbGa9Neh7REher3NN7NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idr5vMPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idr5vMPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF94EC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782715113;
	bh=oCGjg3OKIw0CSu0wvPdIxG3ti3MFbjOykX7nd2lNxoU=;
	h=To:Subject:From:Date:From;
	b=idr5vMPa78ROcUvg6EoVcTZL8NFB4gsscWiWMCOmcbF/uAOSP+OypxXXn1I1AabBU
	 9Vdadrgl9iEkAfeOKzxBLZ1khdsq2kbW2wzOSV3HKF02MTwVy9yOFHdBMM3fhZ0+r4
	 ggscU8Tv+Im/9htIvf4WgYces+Ph9x9VnQX0KDA9FOZ9kF6b5s7mRaY7x8th3lFEGx
	 CnlCoccSOaTG4DIaVFFmiGxIjC8kD9hwt/5rZ60/WbMvMv+5xUkFz/iRn1w9/+fYcr
	 MjMjYyWFRdV8Jv1FspA6b8P/BCHU0IY3Fl16hG6a9qGUgfVH54Rp8JHQStDNlkCW3P
	 rehmBhVYMXm3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42ABC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271511372.1472.9176697669606350585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5012e04d423b7c948c6e78aeb42f14b03796db0fbbc95a16b7088ee562a0ce39
Date: Mon, 29 Jun 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782715113
