Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3130830FC0F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779352834; cv=none; b=tCxMm7w0CnspuZipufgrLuf1HOq7anRAGpiXU3hUynqLNdAKYbrXMe+s1UcWGN5L6Ya3SpywMerFf4BSqe10j1E/UgA+tps3gYOSrJUyCYDc4GKEoSFuvdejH6Xa1eZcsbBp8PMCsGERPod2ciW40g6oj/wAithnT9hv35kkcH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779352834; c=relaxed/simple;
	bh=jYupSDyi2qNxiY6+ofldbVQauh2V76dwEf7V3InlJlg=;
	h=To:Subject:From:Message-Id:Date; b=Zkl8mGlbFPofh9HsYquvCi0jgFJcoyXMOXh939zhExiUZ6wc9o5EFILNFhnZRDo29CKIxzkCdbhlw0PDfzBthsOBlt24NKVlYq/m4hP3LsvXIAwqMwIrGoZaoW6YW27wYbPiiqsyyRLRyTTLZg39aXQDj7JkEj7/dLs/eRlTuW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzyB3iq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzyB3iq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DF8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779352833;
	bh=jYupSDyi2qNxiY6+ofldbVQauh2V76dwEf7V3InlJlg=;
	h=To:Subject:From:Date:From;
	b=EzyB3iq6YOGRt1DekUcJxnnDkKyLgUrSSeO0ftROyVpgNdI81RNcofdwT2ivt6Ei4
	 z88QQ8/l8pN9xvWtfI9X1EsgO3IvWOD8DJa79/9P7V9hZFiYUHyVuxraTgPnRxLneg
	 iduuYFEqmXYARQkAHr0mZ7xy1353COD4MRrigVPtTkdjZA6Ee4YBh9r/+yFUpz3v5x
	 118EfpXFf29FI1ySDkMZPKCVASN2Kde/3XF6QGjitPe6y4vzB2hQXn/jrk40RbBxgw
	 HwRKKudHwYYs3hqMbytImOP7qxSR3gXnZt1xWTFo3EGuJSfkXahKjj2lRdUGENAxDM
	 UP8zPDJCoJsRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C240DCD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935283378.7309.3196311786153999824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbc840f2c9bde3b8ea5a61cacf1da15cf591b89bbb77274f19dbae654ac9981
Date: Thu, 21 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779352833
