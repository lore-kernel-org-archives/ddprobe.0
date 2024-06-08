Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532471B970
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717879043; cv=none; b=XjHL3EKa0m/TD13GvGubnAIlWTaOSdX+GPXF4xYLyIccoB2ybGHfNQdsBC2CCqm77ofHmiEKLLbVmFcVFXdIoDogy9WtdugA5UtbWnsTpY/K4f05jry2G6yUyp05jOTWW+DJ+JQGqqbprj7Y6quuBgJ8Al7ZuFwGqa+fffHXiRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717879043; c=relaxed/simple;
	bh=uS28TOFwfHalWrUS3Vwsx9y8qyjST+GrRLJX9bNpVps=;
	h=To:Subject:From:Message-Id:Date; b=ZO+qEGkvTXVFh9ZTbCl5B8/Lt1cU50UWj0Nu8sDOrQqUp6q1y479i/HqxZZUghn3MPkOk9SfePSfjwNKFfva6TPRvJIfN9LhFEG5DOWlkEI59daGW2gQz0M9Sq1SohfUQVmYLClRogY6+jr1RuA0d5weFaXsN457dWMf2D3X0KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyXtKICa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyXtKICa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95CDC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717879042;
	bh=uS28TOFwfHalWrUS3Vwsx9y8qyjST+GrRLJX9bNpVps=;
	h=To:Subject:From:Date:From;
	b=iyXtKICa7tMhQaGjTL4iTe9HjuUSPCr0gWb4payYg5eEzQdx1SAnNFuVp2+epUb0h
	 ya6NWnkOOXDMUUCh/bcZD/DbJsts0CAQVII5P01t+agp+L7+jlB2IX4+x16J6NVStA
	 +v/7iCEZoo5GtB1x0DRQMQS6d9kRmzObKWHchxLcDHCOI1GnmWPCmKkakZvsNpiflD
	 Tn2gr7NMMzlPfcZbgPa1YL2t5C3iHdDT3uyaSbAtpHDiaK8ds9EGo1KhzP9KLgwfy1
	 d9P9cdRYF1fjzZHht6tjNeNNOljJDJPLvWZGNkIWRZtgUpIDbGxzuOQ67cwtlOwmP6
	 BFZtYRD+7E2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B80C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787904275.22554.1637888096136869606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c61d9839a467bf79a2fc79ca80c8c8cde36b6227dfc6399ae73d5776eaf12e
Date: Sat, 08 Jun 2024 20:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717879042
