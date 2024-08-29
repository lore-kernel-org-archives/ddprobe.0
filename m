Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F57423BF
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724905554; cv=none; b=n0WVHrw7/TK6LVL0GdqFEUjZxEx2qJ3iW0Iw0ZsyKMyVxGAzZf5lz8sVVokvPbS9NAc+Lb3bWJe8JxhEH0eaSg+Cd8eBDRG+kHd4KEcOra8/+B6tnrdHKdcI9LORXF1S203VCMSdBz/WABF6Y685OyHB5cha3cY8/KPhE6OUyFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724905554; c=relaxed/simple;
	bh=a6RQCKqFIIHAaxfqw2f0L7AUFwCswGo0XnXEwGTvgcI=;
	h=To:Subject:From:Message-Id:Date; b=hE+RIlR6/Q7jQH3b9XGio3J0oW73ATfJQ4QJ5KfMKNsnjuFCrtt4GzALUzvhXWcnchP2UOfI0mL5/LAZxpL3m7sb+3l7pCdHSZP26PMNspgVH6+i1ctx3WOWe6GiElmQkTOlds3cCigUuSSVuaLYTQ/sFnNaFz0FR4m6QR8Uk4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sc4aCbVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sc4aCbVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0592C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724905553;
	bh=a6RQCKqFIIHAaxfqw2f0L7AUFwCswGo0XnXEwGTvgcI=;
	h=To:Subject:From:Date:From;
	b=sc4aCbVhDy+ogmebBjWNgafg+RE/HYYvPEAPSQXIIMI2nuqkFMinz60VqyZF5JLCJ
	 qSBXMWzlR5mmpQ1phOS74UVAL4WLKbmsfTOvtYGAJ/eeZkIcPaffhPT+SDrzeCyPjM
	 QNqLghW51lPkpkc8EZDSMqrVX/UKNfx6c8z0tYmhZ+dJ7L9AsjZ2JfneR3j/+JWdLk
	 1VzsfT+P5fbMRHrW1Fw/BpyphaJ+h82+kjJOudWaDPtfJIU0vWAN2fWUk+ZeXYXocQ
	 776/OLpM23QX3LWkayJxmf1YSzIkxhHRJZydI5edcGojQLc8ovdc7Taq5woqSCVBq5
	 caTyYPqV4n++A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF85C7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490555362.2321.6101740406254211412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c37f02c25c7a339acac2d006d2f5fdfbbb519940efcf8aae2278d4ecd27ae29
Date: Thu, 29 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724905553
