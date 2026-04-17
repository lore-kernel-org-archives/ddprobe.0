Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22892277035
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776422854; cv=none; b=qRVoMxJzw6JdIlkIr/WxHelwkWcXQAJ4JjevCNzhhWQYZys49cafXEAu1V1ucVaxO+/x3dggLCQuv2XOBQjEq2vNKONPkLtFidq3PlYd/6CpWvHX/fuJfKH1IwMf8ifDZyDsvewyf881nBmndXsP/d1H9oIGqg55dnZeRln1sKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776422854; c=relaxed/simple;
	bh=BjATFpJ0wkczpH/EA8ap4jrXswzAAWzRZRjeRdVXjSA=;
	h=To:Subject:From:Message-Id:Date; b=dZaC1Vum+HfwhThl8oSSiHmog4/3JcNSohIs6if4+pduNnZPZP1vFkKFYkcucH2F1o7Ako0ZiiMGENDCcKnrjXek0FJURBvVg0k/NwujU55OyVrdF698Q3MQIwTNga9Jud5Vv5SKC9LQYVyBUj4PgGI0NL74teHtecxfe+PptxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbkzLFkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbkzLFkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9182C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776422853;
	bh=BjATFpJ0wkczpH/EA8ap4jrXswzAAWzRZRjeRdVXjSA=;
	h=To:Subject:From:Date:From;
	b=fbkzLFkg9GP1gfs/R4X0DzWJtoXNMcdkDmqpJw4FOIenmLGmga3GYNjqQ2Ha62eem
	 KeObhdz5PXIQCYNBbQbs1h/h1L6eiSgEZ866gm8yt1PwFsd2UZPHC/X6L5/nYt609a
	 uxa1vv6v8uY7lmBdf2YBVcy5Eez0dCQI0GF9K4FwvM0t9/Fp9QmUHCCKBGXt1rYbxY
	 ZMZac4q+3rfxEHbRxPC4SATIK/DIWGs/VU/riR0yur9Pi/r6IatOiZKKAFR1UomJdE
	 OmngPU0F/8mPLFRvIujFjEXutYu02gkaYjb3tBbamR+OmR13pLQ3fPt+tr409s3Pi4
	 lqWRDk+Pdsprw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A969AF4368B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642285368.8305.12890509741351766849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ae5d892d9af986031f1a216469301c04148a7be6f7ff1b292dde3063c8c52a
Date: Fri, 17 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776422853
