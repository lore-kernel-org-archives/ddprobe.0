Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684544A1D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737933354; cv=none; b=mTfap604SNP4H1S88vKk5vkTMm20DvK/oPVkRg2KyP1JQ5EEWc9L7m8VbCVUC+30T6Yvt200SFP70BDRGQmZ98neF7IjvxxxwBjNLDcBtKe7kS0DxkENov105kT2gEpaPKQ7+nmra7BnlVBhq0ZAwmygl8O8zsWQe9OoYsy2kHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737933354; c=relaxed/simple;
	bh=S6SwmQjVWKJSu0Jk2TN1cKSLNs1AIWM0R4+4kY4cGBY=;
	h=To:Subject:From:Message-Id:Date; b=m6QBP4rZvJBAIXV+F+gDYiAujoX3OWgH513k45CX6cfBuIyYCAeYucr9RMTZlkjOVS0bIMtVTCaSJ4paFDaXLcdeqTraO4idaiFzo06WTSEbo3Kxp2qdQp+FMYIHnYbeTe6tBDV86t5IwLjJcbY/SB8EDj/gKjAXTGDVRprrvh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijawX7n8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijawX7n8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2479C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737933353;
	bh=S6SwmQjVWKJSu0Jk2TN1cKSLNs1AIWM0R4+4kY4cGBY=;
	h=To:Subject:From:Date:From;
	b=ijawX7n89zkXqe0sKDowisZkJ4TAh6TXEdvmikQenD4V0aHR02DWoIBD2hrOsMTUp
	 vNtAxe2IGBCxAKYFSUw0yxwuEseAcOirM6/5zno6ymjzSZW7q27u3NY01gWZJCQqnv
	 anqTHrQuqpd2CilRhAQRmRsEEle+jk0kex5cT26bjhDo54lbz+9lsFlyiWaEbdj8c1
	 hdxbiKFbCG940iZEdCydrVsCKz6xLwvXs6rh1nKL31ERqwxuStaT+7IfgTYD0bz+Nw
	 QfX4D0gLYwjtv50hACsRdvi7/bqaeqatsIbf7V6RnVPU7Ahs01B4lkuyXTnSRIwWbl
	 /RA5V91uX8FSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E0FC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793335357.10830.7914479398563520776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c00ada1e4fb91272a9adabb59d28e572e6769fc2e0c21af8c566cad036ee3a0
Date: Sun, 26 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737933353
