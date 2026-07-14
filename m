Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C562931D7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784066314; cv=none; b=kORFhMYIz1e/hAnthJroLf0R+u4A3mccnmLWsZ5WtrI+MaxlnlKifcmyZjOeyr6Z9fXphaqTyfabbBiR21T339vKBRZoAJeW53n5+/U0OeYGQNaga05HMJiNxc5M7pUUz76gHe8gC3ddYTfu04GwsJ9umiJXo7p1xaN+OAB+qF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784066314; c=relaxed/simple;
	bh=ANgGL0bS5aBdJ+k0B52F6a1+S6ms9bSYUx/lfIi4jUE=;
	h=To:Subject:From:Message-Id:Date; b=DsoFuC0YOKWchxiUaKZ4IN3MIvx4Ao4/0k4R2IOZjLbjVl5tCz76VjIM+sXo9MblkCP6F88p1Gi9L6NqdMG89Fzi9Du0PfhDQOf42RCd0+nbK/wsvIItakP11Z0CKv7GZjIzGPuyJAA3ugPjrfbDW2NuV9naRY+Zg6C1DTeH/dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0gVzLcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0gVzLcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A46C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784066313;
	bh=ANgGL0bS5aBdJ+k0B52F6a1+S6ms9bSYUx/lfIi4jUE=;
	h=To:Subject:From:Date:From;
	b=I0gVzLcG9H4j2lh70mTMqxpbsSQbFSZR+Zj4dY1xI1HL0aQpN7tfy7H/+ka2BhbbX
	 5URvZ5HwMXbUFdDFIOueUmgjktnwJYGd4Vc722YSSkrWDZ2JNUbw9XQHGybQD4abc+
	 N18LdHDpnKeXj4WQ+nCxTVCrE5TgC2QN7S2RxMS78L6hZvVSTIJmA3Jc5wpfIhfSW6
	 IUUuarsEk4MNVQaH1VkBff6Uu8YR4FnutrwNs+D74MjR+GpOyKFd4NKcCszlIRbsvx
	 p7n5/0XVJOLseSu/PzOoPV0Qn/WHY8JFf9b77Rvyj1ehQzjnfzQRKiprZIN/RmmCg/
	 +7CN+foIiv03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD690C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406631369.22349.7548386297149833713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf100ba5764f8c80f552cd460a7003b4fff7f3d4ee89a2aa05843bda1310102
Date: Tue, 14 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784066313
