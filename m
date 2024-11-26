Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B7F18858E
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732648554; cv=none; b=P94kSpghULEgYJVK5hA9sXztPXwz9IXTpPQLDpKzU0/6qjzh0nYCMfTXIUd/V6Y3ppOnd6nznpaqM3SRP5cfBxpYYMCQVj7bZ21n8HxAWqLPZgyOvRIbflBvixOKOu5KeoO8fZ9aqUgjEc350hJAIdSFeYpLX6bQr3cUTwHMqzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732648554; c=relaxed/simple;
	bh=3PfrAPc8vQ3rJdvLy1Ww2KUnqzbrIurjbF9iQ9jDjGE=;
	h=To:Subject:From:Message-Id:Date; b=Xer/KtdChXMRku/odthc7ZJeNnnaF6pBaylL0WDvBN0SQ9MdmZxDO/yoxBnAIghinjyK+3B7hjVuizOfXdqtwdht4e+BAT1zjewCB700yrIdfddeUlvu9f8uaS6jtj5I1yFzuw4Bs9Jyie+ZLRiMbkk0ixKLve7tIYeUlBF6Rwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks+UUc9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks+UUc9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB386C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732648553;
	bh=3PfrAPc8vQ3rJdvLy1Ww2KUnqzbrIurjbF9iQ9jDjGE=;
	h=To:Subject:From:Date:From;
	b=ks+UUc9I5FHOVbTLaPWaXsQZjOE4uF4xA1benumBWRXj8KpyS8vYNNWqszLymCkMO
	 06rKmDs4FPV21n1ASzQGmjL+XFB8S8hvq1YcPtNQDD6Y7hT0vRcMybeUu+kYzjiEXt
	 wObq7BWHBAohKRfru4J/jEufdgvzcT1jbf7ppQkkDMioaxqL+y+7idkfbEIaENQDlD
	 wNaEbNqjMJSRw4D+3xhs05Q+Z2JTW4THoVFJdDDTzIO4wMTl/IMMji1yeWds5hsTFA
	 e9CYeYy+f3Y0vEc52FwaaMJM08xG5DBZajmoHw0GlTOICsvi9mK4ObvDHuwY6znVhy
	 y0g5MNmBEJ/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE31D6554C
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264855361.4585.5698040726579022170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef708ba2f6e6eb8a593a9b2eadf3fdc8de30799cf2a84dcc01c3a0d2802c6245
Date: Tue, 26 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732648553
