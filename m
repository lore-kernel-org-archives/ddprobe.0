Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122211DDF0
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791949834; cv=none; b=o51XgwFCvXdYbXtbo70eR5roPGFuySFr9V5ivlhwHLPOhAMws1jA+Iu10VF/ttDyFIv21B5xPjdaezQMGJZZrCTJ6GZQRS9mbVwdiYc/FXwLNXUKx9huwh6t8/UjHzypmSOQVhGDMI8uA5TNgK3pTgIr+dmxMh46820lscRCrvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791949834; c=relaxed/simple;
	bh=fdI81V3oWXi/EW49YUc8w6PQ6na20AJgC3bAtpJtwBM=;
	h=To:Subject:From:Message-Id:Date; b=Uhlt96my9RgKLkCUvIMMcGTJOSEN30sf4Iccin7fKK76jguq7feNBpgWzGCfNawoKGlznjkZJviDj8hMwmluzvxk0lhfRwCYJd9/b89U4BiTRtStfkuyNttJd9sWX6cagmIEQrk1IpHqLlYydbYj0F2AJ0usKOFRTp1CtEqJzGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjmNofRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjmNofRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4151C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791949833;
	bh=fdI81V3oWXi/EW49YUc8w6PQ6na20AJgC3bAtpJtwBM=;
	h=To:Subject:From:Date:From;
	b=kjmNofRfSnHwdR6a9AkG6BJAkzcWHkZcsx/b77Kk/9GLTGRdBF5vCpeVvtmEbQdDv
	 jw3IMYnNEiNL5b1hDsKzqGt0E/QWHzIOmfFFYs/CB3Iw05cXNfKDNlM8YXCkxhTqgA
	 BHJMUssZra2uTAjN9cVqTQiaoR2KXM18x30OL3MM4rXn4xlOCt3s3ZgPHu1Hj1PQjF
	 HY2ZR/E4DnXdxEdGCa28gFBFfkKnuUvS9MDxcNTtrhoDaDp4Ge7DW8gOfBSSO6yxYu
	 jSUFTcVA8dw7R8ogMsacDG2n//1CRuFJQkY8JMilBuDH2M5PCdSwtenHvVmTKIkdZ6
	 zw/hrxrvZMYng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6AECA9EBD
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194983370.25152.16090081867078284517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e76aa114f3612ef1440efa51786e9cc29e35764c5f3471bae2109134442925
Date: Wed, 14 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791949833
