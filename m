Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E1C1AE87F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720107323; cv=none; b=ebAMBwdfSpjDrAaTgNjcUUvcs40sD//UD9TBQ/wz+1RudY9cxZepUDmntQstE+CicM7uwhaNb//VItg5CAD8hvPdLXe6BeBKhxXZMgn4V8MjUkw4WkkIlVJL4MkgIkb5alO+94lCAL4FMxzcYHJFlHIiUrjMw1rj1kUDOhNajXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720107323; c=relaxed/simple;
	bh=JrBFBoPVjN8sstNbrC7EbANAvdBj56fXY2Qe/28xEJY=;
	h=To:Subject:From:Message-Id:Date; b=RM6VN902cqKG2wwl5oDI3m+Kd8mGVmcnJ9USrexw8MFBpupKGepWeD7oGXtHZUvKXjG1+Xe7Q4jTcwKQPVQGhnOiRs805voCoO8mzYlode8NiLnKo3gGqgIVOVrc9Jlx5/HGw8Ya4aAKYdR/u/MnmFppJIx6RiLEu91ePI5jjEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUKxaPqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUKxaPqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C3EC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720107322;
	bh=JrBFBoPVjN8sstNbrC7EbANAvdBj56fXY2Qe/28xEJY=;
	h=To:Subject:From:Date:From;
	b=cUKxaPqn98ANoJ3rc2vKes+a6hjFQhjAoKNu61Y+/FhKh/V3oNtVzWRtWzj7wTgzg
	 uBQa3l+r3dTNGNdE4UPkkB6IfCcn7teBak0MPvrpv1eBb7ONgFqg1Z2gTsyyimeyel
	 fbY61fZLTPvo+d7x3R6Gq0xDrgNw/3asI68cVCY1TVbe/8Mqb57zG1wqD4Fkb3rpz8
	 qPrYFCFFB/XIfus9Ra9Jhapwtb9ci5wxx/qjVL4aSP4+2MYBD/+etPoWQlcST9Lgbz
	 CfYPQBglEYy7yRL5vW9brF/pqdLHjVhwNr78V3Z33xK2+36gjwKB1nxUX9DTeRGJ1V
	 Pu9Htz0+uVz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A05C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 15:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010732279.27835.11368702151423120188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78d009fc942122779874380f7962864e8e6a9fa52cc5503f9a9f0b11c9ecba3
Date: Thu, 04 Jul 2024 15:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720107322
