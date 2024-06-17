Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BE616E867
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718653103; cv=none; b=vBshy1nDohFL2QlIe4cPDCUZLstPWRl3mVuiMFL5bxXCo/HsJO/DFCuFPr9DJwsXOd4oqAI9bF4rxP5J0G5gA4y6zP4Pl1IvharOVtoI8eaB62LkKk3lLi+LSJcpaLmbmt9n4eCPC7md0NeJ4Ib3mWpiqX/lEZAhBN+Zoivy9yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718653103; c=relaxed/simple;
	bh=43Z/tEDGVnljl+zJJsmqBQdrIKwiwbHSImhoriifJ/U=;
	h=To:Subject:From:Message-Id:Date; b=jXRN8axPYX2JdXFmYRZ+PZNveYmEW+48XGvCPUCnvrafyHddgrHhfhnOXjnv+MHeKq92fEqilnkD/EwJ2JBx+vCPLG1OtpIaApLPJOAWzXoZ6OjSQokysuRO6eAraPrEYSDTR1sd6EiHG1P3BBFQeTi6Bn9FSapSUWhprjnDg6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLiGMqXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLiGMqXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA842C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718653102;
	bh=43Z/tEDGVnljl+zJJsmqBQdrIKwiwbHSImhoriifJ/U=;
	h=To:Subject:From:Date:From;
	b=HLiGMqXccQU0cS6z8LKV+RumsKHMFx97B/5ZIZjeXeWf2AGrxsq4rzFkTVnwALDUz
	 /uVnlMkPOda9XYDJ5usa8Eu6WbGEWZnnUdsAsl5vdU6pFVO5ip9WnzBEUxm1aSyZiD
	 Juh6H0Xt4LRfrbPjORkl0uaykLeFbEBHT32TzXDYn8H0ISC8S75S4zLpWJIrSsmoxa
	 G8AsHrmlRgs4eYadw0cIHcpui1iqqozRLVNwyd53c0mq7uVHOrqTuQQBlakOg3bIB9
	 h57d0YKz+MPVmHIYNcXUHJKoayTbwDsV1KE4dInUC8I1yMe64/2IXyNf+qR19o9ljR
	 7UG44mo26vmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21D9C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865310278.8016.9932946126963586001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1e68a7ba01fd02762a9d6f465fdcdeceaf1aa5709f479bd81a5348afed72a2
Date: Mon, 17 Jun 2024 19:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718653102
