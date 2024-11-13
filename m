Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E03482EB
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731474354; cv=none; b=BG2Amj5gjIPEevqDbkNnJ5jtzydUxGUOz+wEbgJn8xnco+mp70rQW76AzQ7PMJljsiACe7/FdsW0wA+7Q0mswdKOGDqQbR18L/hRmbYeb4nbaxDUGoCMSFOj1+/RYEfBlhjHN30ojCWy/Mcc9yICKnI/+q188PX+DtCeemhkWeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731474354; c=relaxed/simple;
	bh=Xf6A4EvEScPhGV96zjcj3RfRLPB/Y8W6Ldt8Vy3QLq4=;
	h=To:Subject:From:Message-Id:Date; b=oCjiLvGgQmjoqk2S/3JrYcYqCYpHvcXbRA/sDcgOA0VFkLTtHfzau0s/TyajKQ4gWb9U+NW1nG1hhGlS9MtywD9vSX/NMs1G8H0cIKWKIjOACN5F9wvwDj8z4rx+dxsuvUOxIotE5rck/p9rB/C4Tba3WMcsNvYVt1Wc4aA2MXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ3vA7yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ3vA7yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEC2C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731474353;
	bh=Xf6A4EvEScPhGV96zjcj3RfRLPB/Y8W6Ldt8Vy3QLq4=;
	h=To:Subject:From:Date:From;
	b=lZ3vA7yZ9sbQ4OAmNW9Prjj6jgtL22/wV6XPGsR1KShasFNFthSUITJ8R+Qif7fvT
	 xXe0d/xxcPAuJSDrzxptZINlnvLUjcqKjsl+opUOTLg2MYLwOcpMtNaCfkTGsOG40g
	 HuJqHDDu7WmBEXh0/wd+X4FNnCTCdG9CiDDkZV4cldkaSSXlFAb3iH3uEqANSVcP8E
	 TpYF6uVMfuokndK0aro/xqxFlo3kjVs04vO0z+ecegJSpOUwtnUQLov3hO/FvMfIwS
	 8XUQWqon4yFz3v+0TaRjt7EZEEqqU/4LZRP2weh+AF8p5TMf35Oa1DzqXgM7xs8iaP
	 PDQV0addmkOkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96345D41C02
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173147435360.8606.10752147260891621791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926b7a7eab786efdd2aa8e69158e49061bae06270c221b2baa905e7c02797add
Date: Wed, 13 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731474353
