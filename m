Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8B814A62A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715261543; cv=none; b=VdxQ8ysjj+h9Z3cu3tuNMtmcby9B1z/p/mnOvdlKacgoVx6N/RowizOH6SqSyk6qVjgKNNH1m9zhaDiSFtSTqmo3U3ChEEMnYtnFPk4hL/KmJLuZ1z876tlAXsOnkb9IRH2OvDpmlYWTR/KMv88eqteRoAPlmUBHTO/knsrZVzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715261543; c=relaxed/simple;
	bh=PDZbSku+SGBQFFXAMItCUqqRN3B8pa3VkGWZC4a/AlU=;
	h=To:Subject:From:Message-Id:Date; b=VsZnfbaomPPh0JjTVIgyvXToAuEs3lQNlHGcRr7o2mg7mdzDAJ45WXeML6D64G2XmzSuj3dR9DK5GVdMRGxeIW2JxaQpSoVsI20FgA/largiw1WCj6ova5/3g4xgdi/Vu7rfLIorqzsZIABs/FZrOt5IBS6nA8cU4Pib8hhneco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGljlMK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGljlMK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34EAC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715261542;
	bh=PDZbSku+SGBQFFXAMItCUqqRN3B8pa3VkGWZC4a/AlU=;
	h=To:Subject:From:Date:From;
	b=XGljlMK4EBrpe89mQSwTWm7naf3rSCmZNxlyMUxfOvdxQmaOzjqMC0FnNzQGkGd8w
	 o5bSA8WyMpRFHQSIaEjByZEF1GLDHW1yM5VFmLL6SHQO2xjLQejhbYm67gFd7pbDKB
	 8egXKIu0nD4fCJz7OMuIqxepT0NJQfw7jGZFou0Xqg22iiaLLv8ZI6TZT11/DLQOtq
	 u0DFHzH6IESNvBPYCmSeAAsyk1cko/LBiJF7oo19TqhPNdxT3HkVeYh0szu9HqO7jR
	 EKs5KZuvaMIT23JXf8YYyp2/886+8OEtkwyp7sHdFEbVFBa3m6pLE99rGtaOQwM9mN
	 MZ7ALmEk9UzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF862C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526154277.11825.17760824215742502253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fe58bfe974e3fd482766e88f9e31c47f0f2911e28f0854b64dab32341a6a03
Date: Thu, 09 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715261542
