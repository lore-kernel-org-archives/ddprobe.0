Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E275F36494E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776947254; cv=none; b=B9x9++Vw62756asuunngyizZoDr1QfSAkl9Q3VGb548hpFFwxnDHoQTzKqbjnvChZYDPdJktCVHMzflEihiKuTXL6FvCeoV7R2iaUiTJYRTc17dNxdg5XSSrnVhcqi6YmzbNpvLqMswVfh3zO8aEAIgYDCSpvde1nEC1V1quz2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776947254; c=relaxed/simple;
	bh=safpuRpnv7Flj2aeCJZHws+jZW6/fSbIhlyWc5LWR7k=;
	h=To:Subject:From:Message-Id:Date; b=SQEpAhEtPo2DkwAaoiHGXpW5+3H9cbD6y0LkuKae+D/EydiTtTXrHPoaoq2zMIXSww8vNj2sDYaBX4//6i9jAYH//6f/gnLa48Z62DK46P/ZK39MLiWELJOIFkc7Q7DcCORoodzzTks3PR3RI7gCQLuzZARL+imwbQHUCTh1dHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tq/oXY6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tq/oXY6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B870BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776947253;
	bh=safpuRpnv7Flj2aeCJZHws+jZW6/fSbIhlyWc5LWR7k=;
	h=To:Subject:From:Date:From;
	b=tq/oXY6hFAru/fR7G4qwf45zpgYo9QhZkhQDCTx+i5xjSvK392OWbuF+fuqQ8OEKJ
	 G8LLese6iM16dJUVgH+QU3QnHd10LNGyuJMzPyOTja4HctlCmHIlLt4Q3buHQiBUpc
	 utVgspYmLknKBzZxONs6HFCsdMILIZKs6GrCTvzMYpyNnkfbwXxekHLWuqVvxe/wci
	 pkqu70T04SDLLeWAxMnst+JoQO2/n7otBZR4czG4yT+kC/VVCGGzbRP2MHKxL0g11F
	 COy8pG3FK58gAu6ewZEP8Ifan9bPn72VSlZr69dLGW1QUdHyt13tvJXSc5MF9daeJI
	 eu+hD34S6ny1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CFF589AE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694725368.32351.142305239839019860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be78b73203b14ec29c1f3aaeb8c441b19c07a1b85e6d044881375cf15c224f7d
Date: Thu, 23 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776947253
