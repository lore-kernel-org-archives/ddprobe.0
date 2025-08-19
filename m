Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3F62FD7B1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755605394; cv=none; b=m8Xn/wDEMc+jk5w4FtzSbEbkS7AUAjOlOumPYQ000X0VdOsdNqRhX8pKvKWTAh6kHPVcMbpeceQIe4JsBSolP4pwrVSVWveAy09m0uT/QBE+R/LdzLeFnC/YYxqdGIgVG/+lRLzy3qahi1SeW8fVz5dWl2NdMzKC1bReK7jjN5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755605394; c=relaxed/simple;
	bh=3ab5xOub1a84kH4ogRdQbAGHJVdtoIMrS0evQuvEnGk=;
	h=To:Subject:From:Message-Id:Date; b=e3eiyYaF9MTh824HqByrGGGoNfqbsQdRCoM5ctFbT5D8ewl/tKlRX9lFUGJOYIwdUbZ0oesvEl0gjPXHGQ7bahwiGEUpEPkypWW4k/kja95/cLGuhRo2UFMGLUQIJsniMaMXotS/UkSfVjns2ocSKjFvuVDmrXjhQJPR4fYrjus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVcaGf38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVcaGf38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2968C113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755605393;
	bh=3ab5xOub1a84kH4ogRdQbAGHJVdtoIMrS0evQuvEnGk=;
	h=To:Subject:From:Date:From;
	b=kVcaGf3804Qfq986YyKTqbQfKLZaN5/yFUXT531uFdbtaKn3723BxziKVv3GJUdOo
	 VRFfyAXj8vTiyf6o7ffRakWJCs6/+efWMDPmLaOQZ2swzkaQsYtvotNCSFtU9HI9Lj
	 rb6V3whZpcz18evPLI+JnNS4KESQy37klWrtnskmKkl7mvapaDdEPBFxRyWyfkNbqb
	 JVt1KdEyJJoMvs76kWKJdADESSigCHzb4r5KQoGANLnV8RVAbkxr3TV/H62uIEB4lH
	 xuuLiFeG6ShgCZbiT4/SbWmtbM0b4utjh9w1E+N758oqwEubAzYyR0C33a+Aup43Ka
	 Fu6mmUFQId8gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B67CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560539357.15237.2105531613909503837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b55109f0c822c4d8080fd1470b489475504192180164185d72782fb2271deb2
Date: Tue, 19 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755605393
