Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0900527FB05
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771439694; cv=none; b=qhg1WwhrIyy2j6mJ9YVx7AYT8MKAbayc85BRlKkou9wQ2EDeNd7fDFoH9WRmuhWjJyDvbZdBfFcPWGh0AR1rp95idyTNpamoRKfHa2rtrqJLT7rU2od4FNoT7RkrhJS7GRhsybUGrBIgCbBiGGcL58qNdz1NmI/27yi/nhMGSGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771439694; c=relaxed/simple;
	bh=ZgItr7GZOF3BvEhUwhU0m9iAhPBx935NIC7ZZ6z9Gaw=;
	h=To:Subject:From:Message-Id:Date; b=HdUuOQa82Q97TakqDh1arTruCVaH2VbBDaXK8PxGiz/m2Y+NxBCUvcqR6C5LVjl+S11E2MUkmEJ9gg7bwmuJLY/DeuGbWKJ0KhaYAf7Vf+4sAzCKx6rftFtVRSdycVLVuHVuDE57mkh4po5pKqTtVa+mIw2KmUIkBmdJp0gyNUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7PDHXRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7PDHXRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF52C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771439693;
	bh=ZgItr7GZOF3BvEhUwhU0m9iAhPBx935NIC7ZZ6z9Gaw=;
	h=To:Subject:From:Date:From;
	b=G7PDHXRcl1cBs0TjcMKfG30pZZmKxvFxFLYh092q3Wp+PQKmzBbu4Kfbtlr/iegc1
	 drRDuMPqduItRZuVNSj009z5zcU/T1sm6iPRaTTuE7XDVMdK9dc+lWUA+Ep2EYn7/2
	 k6dvBgPoYn1/hnAEp4Hrjo5TBE1IcbtgPdiVACN9QUOPbzGwNyml0C1SejOXNyjhLq
	 wn5VfNjmqUXbQKzdeTPM4F8cbOVeSfT3LwONB24xoktc8ovuTDDtmbT6v88tOsS8CM
	 oSB9CyxOdD4qYdZGyFDIoCiE8tWsDaj3ozoreFG54nyzWoA/i9gpY5E+2CL/5TxVm0
	 Laqq6ZUFZc9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973E7E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143969360.23164.17441049588129777437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b111aa5fec290eecc4ce2bb3699f54437ae48ac2433fdf774642569c74f87a2
Date: Wed, 18 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771439693
