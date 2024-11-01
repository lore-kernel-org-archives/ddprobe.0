Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11620374D1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730502954; cv=none; b=DCNi2mCtkjgjSXDKvON1EBwbkK2vg6aDnBoARq+BCUThxkhbc5DaZIMLiFyY0JPYkICxk8cjC8yIbb55K2RIVwGBLHWpBycb22AuhqDONq6usY+yeysmrcaVCPiM7TeMr221Ncr9ShwoC8dvhHAiT+opphaj3gp8ui5OnHrsTaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730502954; c=relaxed/simple;
	bh=2dAXufzmV6PlkaVEbUTym7WlqnNUbVj7xnZ6B9LGRUU=;
	h=To:Subject:From:Message-Id:Date; b=g+nutOBdAdyV7vg3b/pG6D5HeZnIqptCkTWbWhY0CAtDyVyXhQ1zs4GpSIQaTDVrHqsExcIk1EvyteoGEqo7XJr+a+cZK7xia6LRJtwztiCnWr7MEODg3hN+oSRD46FKmoAp3pOGCQNdD2URTKwmO8XGcxso6V5JrDbpCaO1QTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqwwMPUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqwwMPUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7499C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730502953;
	bh=2dAXufzmV6PlkaVEbUTym7WlqnNUbVj7xnZ6B9LGRUU=;
	h=To:Subject:From:Date:From;
	b=EqwwMPUFWGgxiEZnms2955Podooi0z+0aKD4x+mnKe7uFRLMt8CcW6bv5Xk0Refvq
	 OIkoLSf/Eoebk+EgLpoh7T8FU8DRMVXvJd/GNzk51jATGXdXnnlBPKH/a588ALLSaV
	 9BKWKPCZ3z0i5Xb26RNtHlZtqfRdRBjDAXfmh4WJYUv+IaTpPVQslOgFxzh09PwcDK
	 X7qcYEHJ2qC0gbhCKHStkdyuoCPC2yfV7mZNvqBTxMgX8yVDIzxeptgnJYncG6W2aH
	 6lyEtzu1N1Ygm0qKBsNrR4lId2Nd5j/w2V7Q5t+xOegaDIedxZ2OF41QDTeewz/+qE
	 QUQFsskDspuEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F1E6F095
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173050295358.26631.6302795694302093150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c61ab713ac7e1380ea6389df916210df41b982f89501704d0aa80c61cfbdf2
Date: Fri, 01 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730502953
