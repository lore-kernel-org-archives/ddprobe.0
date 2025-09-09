Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4187B2D191F
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420394; cv=none; b=LItxlJ4SNBS9Q6N7yMxOT+U03zm/KTT1Lr/pqo3pVuPo1x9hfKohdgIjQOOyx8KTSUq5sC5pluHp5C7RPW/4MNoPJngH7efNIEOwsW4Z0n9p/lLu6IMbLfVe5yq5nlW/TXeQs2qzlfRbQATd0lkabDSp5p3niIhawDCEo84NpVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420394; c=relaxed/simple;
	bh=geyvYd9/OCd5uEMyt8ze3QFF/93b8dW1DGnJ7YbdC6U=;
	h=To:Subject:From:Message-Id:Date; b=CVQ/nacHzm5hkgwTi41pP8PPPOd/5Iuj/7pomaYhiwoqgI8YMIyL3O5m4tWwwv3bDB8ZEvTbGyocIYX21ThIF7p04CvFGwFijts9ntb1dJ0jcrEs35kKGDEh/2SK5dZBIv/k/O1Mk8g0soYxZUqoa4Nq36z97uiFS4y2p2bx11M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frTL2VNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frTL2VNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A350CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757420393;
	bh=geyvYd9/OCd5uEMyt8ze3QFF/93b8dW1DGnJ7YbdC6U=;
	h=To:Subject:From:Date:From;
	b=frTL2VNw3B2+63SmehF1N7LjhKJsrSnTDDI9WEvxMLS5O+yHvGB9TllqcXAlBoaNA
	 +nEq6Wc9/U7OV1oouQH5CrWPfYBImiVhSVfQLeo/Pf/kJNLhIYfcO03jWBQXE9k16J
	 Xfl/rWWdO7QNel2RaWRMSGkRZrTj8KFZPWd0aZnlfMk1MLl1lXJ2uI8Mjy6Z7IOHpW
	 Qyc2AhlsEgxbpFuakemfvj3lInpNV+UZi2hbO7fWIk/pSJtCVe1Yy4ah1AMIjI9+EK
	 VW9HSG9vGfel26I9Ge/9aAIEgidJ83svXpRZKsutxrsDf+INhOWaDFrFiFSgyPAD2h
	 SfB2r4HVoP78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D5CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742039357.22400.4052314984667519087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202ec0fd365652d6b30858a207d7d584c055bf446d01ccc6d0ee07d3af435b3c
Date: Tue, 09 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757420393
