Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F39288DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751677794; cv=none; b=uU9k5HAFNI/rgpMgb6yUeHEGns/Wg/rTZvmcBM8jUnPlZXrMXdZoqvTcdHX6FSW/PPjBni/YQ/CcUTwDlNifILRhsbJUbTf+8g2pV2m/4cDR+1gh0+PCwUGCy0zEQvPE9Dd1BwBe6TUG9uEAtpAG9RhD47RFbOGvXOs4VFAN07A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751677794; c=relaxed/simple;
	bh=njKFJdERUnO4a0P3plU+OaZgc5PCfms2IfIIhpgCtwI=;
	h=To:Subject:From:Message-Id:Date; b=LICPzkGPeoWrDW6Bdx2Q3dGEooexyWu4/3qZZTvT2vD5Dr+AZYq+etvtGjveazKwwRpQp6t39kJlzQDT2jUrjZw11q3VHOnEO1Qma5FMYETutr7varz3D2Zy1EDoQeg5+THdabwmwdHjYua066/19bXkl8q+HR/qj0AfFI/G5B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL878SYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL878SYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A221EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751677793;
	bh=njKFJdERUnO4a0P3plU+OaZgc5PCfms2IfIIhpgCtwI=;
	h=To:Subject:From:Date:From;
	b=nL878SYAzKlQCSve6+cX+vntp4hbJ57osABHiK/retwNHSzy9fn8TMqlsS+0y5G/p
	 S/gjsxmZUCV7+i5+ZpTDY/kQdUGIA7lUw1pHBcxL2UTd+kpQiHB2sgoyDxnW2IY+KF
	 Nkci6re919RhQqbmIdphL/mqVvTmVYPtQZsLopC6RCJ9jgsP3a7RRqBLcduImvtVYj
	 QOWQx9OSVfffBdtFQNv1x5BH6ZS/Ighxkmm4wweBotvxKvxTkp1yHnLdc78/VqD+vB
	 Wg6cGEjT9+M+6aREDy+O4fgx1bgq8baMi+0KB8huJCYxzMLD8xemeWjh2llHcqDDtN
	 yUZ2iABqjUmOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7CC83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167779358.930.17942895741037466408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984ad9afae2203ced480050bf7c84a014ee225c09906b45a79acf5b612baba4a
Date: Sat, 05 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751677793
