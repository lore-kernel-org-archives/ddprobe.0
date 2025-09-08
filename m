Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD22AD51
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757299194; cv=none; b=oVfz2OplFQsGM6Ue/NmHQjpnrp0lueXxEVa+55YrEz3eKxmCMU15LhB4VL3td3oyenMREaMfgovJCtGsO4YDE7dTfEVEA5GylK2x4j9hENzk+NwksYCKW0+A+guodgzS146ARnRXYg37i+S6jFdMQiDAPiW8A0OrMko/d8MVf2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757299194; c=relaxed/simple;
	bh=pEurtfHauVJEwXSE9/itIEGLAGhU+HmR2jEseFDweNk=;
	h=To:Subject:From:Message-Id:Date; b=U2FY9nYSwbavx7AboYAmFdj9+Ro658dyuIvuhRYXDOnWA/nBiupToqcxuFyEBWa+Da9lrO80S4NJs3CdBamO8e+GEl4uhXpnm0m2T+Lrwdf2c77dfNYn8TyhZTIGUtwzYeag48MfTCEbWaqxZViy+9k0/POFs5RrIAf/t64ziRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoYP44cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoYP44cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCFC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757299193;
	bh=pEurtfHauVJEwXSE9/itIEGLAGhU+HmR2jEseFDweNk=;
	h=To:Subject:From:Date:From;
	b=XoYP44czeTJYYr+2fd+FibvBChEwR1nYr7VBu8VqdOIcH311BzEG00Xhby6ZjpoE1
	 VP7IGTHu2VqpkZ35a2btkAReym3lBNu4vYCA4EqhcQNdJ880r9beJgb/iwxiRuh6A6
	 ptpoGnnG7wdk0cQI+guTvhn23enIjbOJHqmRMp0q0279xzgvYzTjkdujp0hloYBruB
	 qYQfHeKkh+Fcd3DM4cetZQ9w38zt8Z/cbrkJjPPd6L+INZDL2kKUumOezYNqXRhcG9
	 ggPjimBTiixGAt5vfe1cBYQi0G1IBnPUzChPBA+CQ8bZu/uB9inTEon7aY/zNYVyql
	 x8QOvkue23TJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F644CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729919357.24309.9601458320385476182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a54e74e00b49881bbd3b3fc5cc22f0797a71f6c979dd2efec07f625d876539
Date: Mon, 08 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757299193
