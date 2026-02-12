Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7C43502BE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770902694; cv=none; b=XfaXBkVuk+SZSujZaeMXO3iXZW5ZYyH2bFPJkB9EuDPNIQDEC/qLWUBluYqnn4aDWREDYPNaOzGlb1xOCQQncpTE842bEeUuNQ7hmmhzKgQHHc3x7/p9stRi4G383SEJ4WjX/Wola5W5LPoE28nHgBygFLstqA4WOZQOUvdF1lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770902694; c=relaxed/simple;
	bh=Ac/cgXgcQz2aNlkQG80TXu2J8fN0iGuEgRGzXrZetJI=;
	h=To:Subject:From:Message-Id:Date; b=pfExwEVOzldrquszDJeSTPh4k965x6SVfAQrBK4AP1yqtP2sQv17nguxHk987Y8Yfh44OSK+6niLkj7a7k0sk+EMY/pDqU3z1e/BZ+RqDc2WMUXWO61mkY5nw8MfxsDjG41DfBZXy+6T8RJPFsezoMui2s2DwErFrTOT7Y23/nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gICaSFmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gICaSFmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF561C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770902693;
	bh=Ac/cgXgcQz2aNlkQG80TXu2J8fN0iGuEgRGzXrZetJI=;
	h=To:Subject:From:Date:From;
	b=gICaSFmMqJSgtl4BF8trp4snzbkbZ2ED/PNf+QU3gjJq1UdH2VYG29AmqQliciCx3
	 nsoYBwsWap2XpyCiRZTts8it3qW/fkhaaRkb5OyNVtLCIWlS7XmnW1BXW6eHCAMAjN
	 9biPCByV58r9kdsyErLxRMMwbW3skm/k+aUnPQJU/RB2BtOKtLlHrhDI789K/YJWM2
	 MYxK+vs+oKv57CJK8/UqzPWWsbgerc5nEf+++GMZ69cxl+cFsamYA+AjRnLBwEHyU2
	 zWvHvyN+KMh2zg7YWhhyZEIyMZsk0ijXUXAPNuTPnaaIeBx4xcFzH5h7Na9SBhEmvz
	 BLst5PJwcrO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2A6EE3683
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090269361.26055.4345811801594950027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23490e4988fa93e26b927cf67003b94afeee8ec02c9b3d2c6f7eb34e616fbbc6
Date: Thu, 12 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770902693
