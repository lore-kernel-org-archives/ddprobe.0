Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D45220FA81
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782954514; cv=none; b=lp2ldpa5M6yEw14/ackAblnT6XFzZDrBybLq4KUwLGE4w+aHqQcD3gfaoPxFGQzGivpum3tNVHeXFc4nqzX4x/+YJmt0SmToAtulAt45hASFKCg3+CQ3U7KuU34wzdcNingfISjrbN5cL4+pK2/DBBlJn2xLkdyAodLMVIb+Wa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782954514; c=relaxed/simple;
	bh=0n5KbYp41Xcy8jYeVWd3YBVMLuMjtTCyFz9vv508GPU=;
	h=To:Subject:From:Message-Id:Date; b=DvTs3W7WCluvdRdlrQ3N2Zc54OZBO2sJbRaJ/NZD6X9Bd9USpgbgbNq15/wJa1sAfJ0wxo0Cf45L7tI06JLSMsTPlB6rypQr0zklhTERG8zM4PxjLfj3Rf710oH26011bEYYE4merCn3uOVoeRrg44HCYiNFlsj0tY/rl9/pAjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0YAF31g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0YAF31g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D5CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782954513;
	bh=0n5KbYp41Xcy8jYeVWd3YBVMLuMjtTCyFz9vv508GPU=;
	h=To:Subject:From:Date:From;
	b=b0YAF31gNAMqSlQGCnWejNZNhFluKPJ5NrzII+mj2tveSj+oeq/KtMwS1JEk84PQf
	 uZ6sxVQPmPsydZMYke307eFnO/+GFja3Wnmb8UXa17fasCZQ4FsfiY5uDItlWdGNeu
	 gzpWIAR5ClVheyWtwxcjUOSBnLZRRpDB+GaDNMU/iBIJdDnopIlvAeGpyHz/TydNIy
	 1VAWabcHzhAx3zdUo6MMe+/KdPwX4mRkYq8ipLn8BQL2UaQkvBOA0BuLHYrJ1X20dp
	 /5qa9ZAAf/XsPgrhQ80xrrBK7LTmP7+SQ8wyLpMfKwE014Sa74wxuyYnPFSV3heY/F
	 baasr+VKB5XNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0EAC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295451368.7567.10529288828101559102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfd990c60e8e1b56fe349b5e3c2cd63447336d4961c45f5306b37f9a0399ef0
Date: Thu, 02 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782954513
