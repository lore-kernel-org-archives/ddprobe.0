Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417084499B0
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783630714; cv=none; b=WWzPeYHIfIFp/YL7ycO6sXWExA6aXFSm6do00Ti8d4FaH00Okb1avt9N3Pi8g57KgmRdh11shrBfcvQtY3KLhYhClWZdY4HtD0BG1EImV31ibuljlUeQ1oFdwJmWjIg7FLKzkUcHn+qX7QtklXYI7fv5+36QUdzoGMGEV9pz2S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783630714; c=relaxed/simple;
	bh=plI/oXe/4HvCct//UaxYqY7ASBrPbeo5jqHvBpmknn0=;
	h=To:Subject:From:Message-Id:Date; b=HB0JTnOPB6qY5Gr3xmrR+aTnZsbh1GQVFBdO6tGQex5e/iQjlIf9ZGKDvbwjYsThpwcOe1w9b4PIFaIPZhvrevE3jKlM1jBbcf2KmsO1vosCOUEKpvSQbu/118QRSmyYWUhTZ4/etbB4t+lpcJ3c5BWpysHlV/oTRDNtnZYirf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuZ+z9EU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuZ+z9EU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01A5C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783630713;
	bh=plI/oXe/4HvCct//UaxYqY7ASBrPbeo5jqHvBpmknn0=;
	h=To:Subject:From:Date:From;
	b=FuZ+z9EU1Sq9fqLs7QRGd6DNd/R4+m67IdTb0Kz7KnkwdU2gVHNWTHVR6rcwG0jcn
	 u+4TYXFNOqiTuNKvBDqp5UpEpoi2AEXPui6ogFnxN36Y/lSaUA9wLlgmlzliAg4DGV
	 6kqpXvtwxGyEpxBAtAmxKfNq1ErZv+LPCihNvDl63udumI8Y1iNE986vsFbdts+L7m
	 Rx3PPR1q3imPqscv3CdmqrBZxp+tPqIvwuNUB4NMMqJSsDd91YwN2SrEYo76i0ZTsa
	 jgw3Rw1ZTOFTsyML/nUB/aPUzRv1rT/qEDaFTctrv2xShK18LDrLzh8/96D/eJm5aP
	 VJEpu7/vvjLow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE110C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363071368.20101.3261598476702971177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e112a813eb727c51db46ca593af10894884020b1852d0da6a5351bf04feca61
Date: Thu, 09 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783630713
