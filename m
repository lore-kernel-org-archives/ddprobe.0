Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C653B8D7D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765724574; cv=none; b=GtlJ0YJEVyyMpBkE4CtC8rZnPCzmb+eGxm86Z5yT8qlczlDz5R9KP/tKyfrhIUDfV17oGYOaQvm/UTdkd88Vp0YuiO3I3IWnr6F4Ha97h1PmXmNacwUng0rJbebZi4Phm8D/+A4UlNBoQiE+6iOfvzkSYmVdR2KAmjK2O7R9ryk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765724574; c=relaxed/simple;
	bh=58+j8it88litNSE8aUlFKgGtS648N2xntPcw+5nmh50=;
	h=To:Subject:From:Message-Id:Date; b=qQ8eIAlReE9Ci4fhhUdUI0WY4GWFtUQayb/B4ykk2e1mFDUiEWih91NLEJFmUGTCpwcx0bjUDeQYv/XlC2eTG9tZ3DIjZif1oBWvGujXNynfBHIwFfQGWpXQ6lgFDWP/cMBpX9lce2jB3Wa8Q4VdXoT1jfkzFsjiJTgvgwl+nJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biQgB0Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biQgB0Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB05C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765724573;
	bh=58+j8it88litNSE8aUlFKgGtS648N2xntPcw+5nmh50=;
	h=To:Subject:From:Date:From;
	b=biQgB0Zawj0VdQtGLwf76syrOPqKmctC7UIrD6bpCCTU0hEVYjgWLiIGZdHNrF+1C
	 /DB7FFOTB+kFmojAsRPBLkbWIfJ1ySj+ETsoKcEVxYionRYN5E+m3kwFP4wl1HEVPH
	 73iN1ZGbbWZ8Sqsxu7unYwH9134ToTJ6vt0AipVwRhhmzaooHYJJ+Hgd65s7Se6FHk
	 C39+VB2XVHiIkm46bHRKKWV5gjNJA9K/bsxLBPzNoHitcLbgusIZWwv2t4KYNWwPPe
	 fiX8BmC/ABSByZju7YiuRU743c9Z8jsPX2muyIIMS6WfxlwabiqMh9/v2Ig2oWhoft
	 NBlqjLfvxjv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977B9D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572457358.7372.5690957784023769358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9099711440fb0650e41aa5c8448b2d1e6507c87fa84e32df97c7cfff089b105d
Date: Sun, 14 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765724573
