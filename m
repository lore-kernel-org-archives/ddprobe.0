Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B710156257
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717152863; cv=none; b=UnhRZ+Qzh+mQax+fA7cCKhvqPhW+CHInt+fRPrwv4O9VYC/XuxR9aAjlkor7l7w2r5zZBa172IbckN0uq8TVc6+//TEOmcMUE0h2JJwmBUAw5EqkcuEJo1YFBTZgMT09rn1torXev6g+070uCEQTTqqhzyhBM60gZGcwPZUbnho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717152863; c=relaxed/simple;
	bh=2bdTw+PEYMLFvzoEgy3yABLpXmPVQSFJ+ucOeqnkSy0=;
	h=To:Subject:From:Message-Id:Date; b=Cf+YP/h3YGN+wn9GnDc8MtrY49dt9ZH1Xk8spznyqSd3iV2qlNFXKW5kIeaBdgdgk4TezzEXsvyj8swAt2K6QwzPoZfDuyP1emkN/yw7/gEjaXELIh/afvDsGxrf6okZil2bx/IZ8QaytzSo1YBSRpuU1N3PmaxcFublXwjwbLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlu3TeJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlu3TeJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE48AC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717152862;
	bh=2bdTw+PEYMLFvzoEgy3yABLpXmPVQSFJ+ucOeqnkSy0=;
	h=To:Subject:From:Date:From;
	b=dlu3TeJeybRwStpJVQjOyq0gSpvyYiCx2YkscIWHlwWhk91h3VzZDDdxdun9ceFuK
	 fktSl48beBxvXQKnijzrK88b11Hr2QVTD2V3mqbJNW4/VBtmjpBeWDs2MVdirIBuSM
	 84H8akOZhC8D0mNyevCodRZOB51yhsTc7ys56xEbvx0q8sryI3T+UBYmVOXhXaCSLi
	 Xxw5O8tCXG408eWO5RTbeGD8tuFuWP3k1iAaCgGNI2qFX/rp7OG8+RP19hlLQ1lOrk
	 Sfbb58+rfD3ekcIDaR1hqmSjbP09seDZ2gM6B/anLua1ZePu7coJ4u/NNJtUeUgElI
	 Zv7/NHJ0VaO2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC820C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715286276.30929.11371000344130438105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7129412b27e01936b4e0946ca547d122ebd6980a60c9c082b7cce1f4b18cc62f
Date: Fri, 31 May 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717152862
