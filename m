Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A35B321427
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755179994; cv=none; b=sedGHRIwJXjiSoow62QIVWSw5mG3tYmYonxid0rER61RyXlrOzoR+HGxH5gN2ZyhHWBE+29mM0QrtZ5sUyrex5iYwNmLaxHIf0ProoS9pwh7Vd55fZkNMFnFuABBRQVlKHaHyDf26gpQi2uaTnuUPBSiGzUFjEHdjLx31EYYgKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755179994; c=relaxed/simple;
	bh=gjGorZ6KCNsLo3TOSFiixLordeASzOxjyrBD2hnsjHo=;
	h=To:Subject:From:Message-Id:Date; b=NIfJH2rd324XjNKLwvY1BNE05pUZQFS9zkyJAWJtwvtqmTVnY3TMX3JgOlGBmLlDp8jCR1m2qcSALqByTAiSsL3gtDV2en5ThF7fXgOx2d/2JorUwv1I1Sr+olkGBIg+3X1h8qbJRtdbqxITkIMn7p1dUv09uRtt9BqrNKslD7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og4gVFoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og4gVFoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F707C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755179993;
	bh=gjGorZ6KCNsLo3TOSFiixLordeASzOxjyrBD2hnsjHo=;
	h=To:Subject:From:Date:From;
	b=Og4gVFoSPwE9TNA3OQAfJSPautc0ck8Wh2dxw1NNmNMb4/hBaRGI3k4gTkGqN4Scn
	 PSxqI17G6fTpUBGy5/QUK1Ov5K4uMpgYjmZ1HdfQdolCl8I6mmr6uvXlSQl9hKLd3k
	 XkmouXOcbVmvLP6miMfp5ihL5VfOOwzEJqb6EqaEoO3DZgkLICyC8QtCow3eT1U1GS
	 DLgWlvD84t2NCuXLfEbr2o9E6KWbaGXIvYmOksXrmBZOub5z57vF8xtwCWv2QYvsp8
	 DjBoqxE73bkfs8DddgzslLV2Pm6dxkK2zyl2owlVXh0h1th4FAlR4JpERMNaXQAFfE
	 b10SKw+pU85VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F8CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517999358.17248.13314085359671719247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2195b4167a806327abd838cc6414c8237ca50a8818955216d25d8ce9e4d19998
Date: Thu, 14 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755179993
