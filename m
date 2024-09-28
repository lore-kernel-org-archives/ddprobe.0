Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C70F17DFE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727523354; cv=none; b=HsFFhfJ9cvIpcQ5focUFYgrYJMIg9KpSH8qqW+4rg38yI3BqeXCG8CC0XpAHmCfjdM8+kYpIuPxmbIpZDbrE5XVQRx03UVjbllrvW8hgu++BlozoxRezndutUpf6fdGFYAcjuAAOvblS93fgQvz16ZQDciGEqEEBofFJ4/MuDjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727523354; c=relaxed/simple;
	bh=JP3RlWLdeVxfX/Pl2dn4cld+TgLFNc73AGDUtd8tS6w=;
	h=To:Subject:From:Message-Id:Date; b=KLhfaSs7T+Y+DBGCABMv8e2MWXCOAcmmsEZpreNfmPygrH+9tGSnTv7uMDZrer0fG4iYWL80sSypck+fN7yT0lHmFr64tEnCj8IgSjrWTsb75mme4pkUvwHAzM2Ztl4e6+ytWMo9CZWvle8fSbVhxL8EU7mF6ieAuO8g80PrIP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLdxmD1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLdxmD1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E4EC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727523353;
	bh=JP3RlWLdeVxfX/Pl2dn4cld+TgLFNc73AGDUtd8tS6w=;
	h=To:Subject:From:Date:From;
	b=LLdxmD1sV6lrCuIN5zz8TWq1r/VhEywwz6vVux4ZHU2Mba0Y2+SYIv4oz/SmufL8S
	 eUa2oG/DKha5sGMk1o9dlRK8ujqUxqrIVR8hHCIyHf2MM7UWdywkdaCotYNmClaef3
	 MgMjETJ5S8l5LtFyd66bQhM2P8aMpo3YpANFAiY8LkfZFslrq8EKkxpg/AiX+hMiIB
	 t8fkbj2cbvfDKjM47FEJiWYMDMfGXldHbNDUnHODG/onxIqQ8NtSN2A++iRKnRPUHL
	 NWHu/mrMGKcvgvBnoi3+oj7akUlIplAfYr8o5nyuVcWwGDHn59HuqRXFuifNxONZrQ
	 0Mnip8cqQNVPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC7CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752335359.18166.9436427945125611319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a618333e820b6b9f11d423f37dc91918001daa670f26c3c1215093af48f675e3
Date: Sat, 28 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727523353
