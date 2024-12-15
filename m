Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E4282E1
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734294954; cv=none; b=lHrCSo8OSGXsZVMiALaPe+uy7s6Pdr0BlyzneS9ucEemSUw+4/estchVZfKWRPT1JgnTo8PhGOqbIXdVjjU7jnt1RblSShCv2aU9nqPndr+P9fXBm1UzRC5wngT4T74q6SrF1a7QjoX4YlXOYG1kGAMFMgv7/lvv31X7hPBNAig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734294954; c=relaxed/simple;
	bh=Ti9IIgd5RW+3WrzQFWpHsM2aJ4gegzm2g8h9bV0EDxU=;
	h=To:Subject:From:Message-Id:Date; b=Pf96253IKXkiQKHWQGx+W0iU6KfLdYK/+poreYuUKmSN/9ZG3jZmnVKslQT77XQhmIn21IeXjWPWletImBaxCZIh48i/1xx+DMiQqJ3id8vXwVBbQTVfdRMvIW9NiuGAJBYYT4g28waFLQ6Xi86a7eLLTQ066RWU/lD/Xdbhjso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac9oejOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac9oejOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B111AC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734294953;
	bh=Ti9IIgd5RW+3WrzQFWpHsM2aJ4gegzm2g8h9bV0EDxU=;
	h=To:Subject:From:Date:From;
	b=ac9oejOILdU09viUrY6MxyPdL/K6s4cxxTM7iqtLWKdLGAbakMbfjSpSDER8vOJ9g
	 HW06TyuclDp4BdYcLg+89Ov06uFTEDn2NPoCh+FwSkUC/BT/Ggw/GzgscTUjIG5Etf
	 Qyw9u+gQucBAph5tHPocBX+0SJ93iKO82CLSO1pOseFHRG0mWdmpOA5agkcynI4zD+
	 7qm0uuefB6bWTNLQs/SkpuiMW07KyWgSyVYMGZlBsWapGoNkkkAD8wCJ1WN4Bnd54f
	 VQjC5M7FOrPO6+Z4QdS1pqiYNAUFSR66nlGcmDzzYzrQ58H6yks798snSQXNi+QUT0
	 LGiU4xrpWIkVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998ADE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173429495361.4063.16524431722861500413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a3c1509c986b5e7af4c198afad3cd28badbd86379b9da793756ed32da35ab3
Date: Sun, 15 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734294953
