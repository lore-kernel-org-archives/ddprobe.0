Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4927A2556E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739001354; cv=none; b=K3gP42W87UiYqhVA4uonjr5VnmMugMU4Ob9XGMhyP0I+DqnGzmmAVtCXfdtpAzz8s7kjQnYzU1DjegUcotEBTDHuiGGZ8+VREtP0opxuMYyJghuAcUReDep4BxYxUaa0Z0BWgrA3QGHH10rsOgBLYFbSfMcEwmF1qnfmVe9rgJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739001354; c=relaxed/simple;
	bh=3DNP8PSCcf47hbjenlTIRNCOll35f7xNDQKO5gTzBdc=;
	h=To:Subject:From:Message-Id:Date; b=Rk0Fk/bVuXLhqtrmf47NJVeJIGkCywrUUGtSzoyaYgU+1MSVG5z/3UHHsQHISoH8zpU9/bew2Tik8aGNA/eCAnOCcYAGg2dK81NlxzO4dmClK5aFEs9t14leUj7uGeDbEL+w/f/SSC2W0TrFK/CCP+T51MeD74lBe5j0vgOOGe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApGiqauV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApGiqauV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF130C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739001353;
	bh=3DNP8PSCcf47hbjenlTIRNCOll35f7xNDQKO5gTzBdc=;
	h=To:Subject:From:Date:From;
	b=ApGiqauVSFS84v9bn+Z5q1U1pHiWUa70qWCoFq686CIMTSjHrChHPLm5q3sxpcbH9
	 RuSKWngghz9L9G98NZHQT9gxtg/sP1PmB/cHkAKQSa90aMfj5ihqJAnSgdPpgrsB07
	 0CnRIscwNQY9ppUfhxowPtnum93am5lVHtnFilb4V6w74PqAbOhaaIQS2QKTVCs7ur
	 0M0C4ZKiLBSfVSzKRQDPVL+siE9GFhnvY0aCTitvy2ubyZqqOyRu1ddikuBdwrF8Pj
	 sYWKwGaZB88MxQ0EmPD7mHbCB35FBRaYSD5u7wLBJYISDOCxudRZVHnaSFFVCCUVRE
	 a8BwgscWcDmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC3C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900135364.22964.12321642549272694508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0156540ae13a5954876d709f6562c5bece67b36a3b9513c1e4a80b938b77e2ce
Date: Sat, 08 Feb 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739001353
