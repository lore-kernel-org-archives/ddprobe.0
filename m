Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0CC35C68C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792360234; cv=none; b=iu4XmAf36Nr4KkV7Mx4uxGlauVk9CMkHOzN/T9t4UeIz73dsJ+Dv1H1aIQhkFE15axZlQPNA9ibC7E64ePS3E9L1xxaEE9xJOyGAwRERHJf635jfEFSAA1QfpvGNYuWw9B+05LFsgGhacKnQwUtD+Va91PhRDZwChO/J42/JMVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792360234; c=relaxed/simple;
	bh=0bGEZYS/nKUknzlLMPH9BK/AGPcY9lJfu7aP0dGlrc4=;
	h=To:Subject:From:Message-Id:Date; b=np20yn9qW2eguQeZx4raFiascWPP2DsW5fxIcEG3EPBwvD5/YAAfsMAxt4a3+YTTnvEis3r98H/sBbQX5pF77/d+kD6AfbUod0dIy6EmBtr/PQ39zeRFfiWq3aeeKvpWl6UfBAG1PwTtu9Z+/1m5A/o0qyUK9mNJ8eZO/+7ZTVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnOHI8kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnOHI8kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1668C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792360233;
	bh=0bGEZYS/nKUknzlLMPH9BK/AGPcY9lJfu7aP0dGlrc4=;
	h=To:Subject:From:Date:From;
	b=rnOHI8kxoGOuR4cXT+oefAwqVE2CybpRIFY8U9DequK8ze1XQ3/+oHIXlnX5Y+jk7
	 DCkL3ct3h5nx7d+FMy6SHjjnAyB2ALc0yBvwda5t4TqxEnGprAFrdp4BoVmAAx3Non
	 WCBEKwG0XtNU9BHxJgMbXYw0YtC1yaWEmT1Up7Louu+UmNAoL6QF+OQfmvQ4HoRt/J
	 scJVRQYPN7qCFYMc4gLMkhs46DFsNIjwfLsOM5F3IBpvM6RDCVlCY7rGYHCAOgMIvn
	 cx3lX6deJKuBEdc57pGRfBC5aHQ2Kz2KfQ+GqvkIxEaFNlDmQ7EJ+XIMsaDwJK9zNx
	 KW+Xf+v895Sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A997DCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236023368.3569.6904198118171784872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5eced6f7e578fcec96be1031c1591f4a17ef4a55ed9fabf6cb0025fc1ea470d
Date: Sun, 18 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792360233
