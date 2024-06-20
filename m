Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3D71EA71
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718861963; cv=none; b=pYQZ0gckrjf/S1Jq/5UL3jFjUZ+u1swLgNQlQ3KafpuP4lXsL4sMLC7ocOxVPko+vgGZomfniYqwdMdK7FY+g82ZYeHIJMvA5AhR6XN56H5BLvhhnswQ2N5h2UMYF7xQEaJVoIntX44tHZ8/Yq564+jOKMPe+SIkxzxrOfHLJKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718861963; c=relaxed/simple;
	bh=pb47WOp3V81F17Cae3Lb0hV6oP+FQ0TjmRIj7y5e7mQ=;
	h=To:Subject:From:Message-Id:Date; b=roHyS86MTpZF67OiLu2dR/bFGmpDjGbpbJgBak0FMSY9wf3rWNauJhIQ6aqTxEhtMDn5WvKcjylFk9z5+ftPoOIhSQvzQMdTMA1tI8xy7mUriGPniNssHtmKg2RQF8o5ZMMkWhMdnWAXewYNhQ5e+AO39qNFFkrh+FaAfFTw62w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6C7QvNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6C7QvNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B02C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718861962;
	bh=pb47WOp3V81F17Cae3Lb0hV6oP+FQ0TjmRIj7y5e7mQ=;
	h=To:Subject:From:Date:From;
	b=V6C7QvNQCTPr/b5Zl7fvnNJjIdGw3c2CYzZB33zQMNFLpPPwV/7vQ8baiMDOCOuW7
	 eyC0DikGikYy3Sg4MYZvtPqvB8PGNRTcWCXYsuzEiIoHBDxeFJLH2glI9/8S/RQ/5L
	 zrBs3gY4GIj3cXGQf4K/7X/zWIENcsGNLraD+g1qA5tMI/h5GcWxeByoEdnngKOBAa
	 giPCMkq7FmmEmE0zIgP3K5hnz0GFVruPSaK1rVnoi24Jc3MCC0M4iF908s/pgAf3mu
	 Pusw1PZ8uZiSTrSPNh0Co2ni4ORnE2XISeUKJ+9FYZq2aMmFb0o7MiLeLwYgnDsNMg
	 k1Ev5SA/Xxctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7B6C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886196277.23427.17843533064214903198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf60a9b2ac3641a7532c46d4083ca99e2fb74a655afa761b524143b8d839a02
Date: Thu, 20 Jun 2024 05:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718861962
