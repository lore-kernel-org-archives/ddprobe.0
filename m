Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2099E38737D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769800434; cv=none; b=DQ0dL/sQx/KdMkgtIAYijLlviyvsruwirByQTKjzyAuOSTxtcPuYRBsbNPUyeMFmLsqVFb1wkwPZBDD6s8W4BlKUBi3HGiOZuIvzxnEepO+sR5Vh2aUU7uHwPJ0ra9WMW4lwv5KoCkkLEBHU11soMxoTZcCPDtnUUqPlYOUL+2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769800434; c=relaxed/simple;
	bh=0obddtXIJzo1+a20HPyLLzV24Ta3H6NDSM5cTv27lQY=;
	h=To:Subject:From:Message-Id:Date; b=vDFuHYaVmS0ESyDTkFow6Rwoa9y4i2/gi9mAY0z3fXVXSSSwl8BaFGb5T1+IxSm48GmEjiMdeQLhJGuITTdaFPNIF1vGxc8WGrYiWdzufuM0JgS3BlT5BMtB/PH0O0n8qTQGioDimruP+eoBSgPCNfkyXdiPFdJqLlsqI1ARQhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyEqupfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyEqupfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769800433;
	bh=0obddtXIJzo1+a20HPyLLzV24Ta3H6NDSM5cTv27lQY=;
	h=To:Subject:From:Date:From;
	b=OyEqupfI2jsoPFind4FlBcRSWdhPjv/qPIY8spW5OSaZDMnCRr3tzMzGHRQr/cFuT
	 H83QPqmlW+PIc3YiVW1t5r/GISG1wxsVsflNK1eJAEBvscyjdoeFgCdd1/tHEYmmXb
	 H41gNYNfcFyPm7NTD6GLnSvbvTPeiq83odRfQnEtd3Agh97wFo695ma/G0Ur2lf0JY
	 ZVde1bGCP8U8fpM8MrqHZH22/xQ9HXV526nFQ3BHjPfvtIh4gmfmK2jmqs4l9oj9/b
	 mTTW9jyE92qY4berB/lWI8zEf1K9zWXXsr95UJPftDTgCamxoGoBLL2OIW0gfCxP5W
	 SUcS8fjO+BM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303AE6BF0A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980043357.22211.11407776810292200584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d732cd497420153321318f85bd296b4d5b9905c61d1cc97448c3765aa630fc
Date: Fri, 30 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769800433
