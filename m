Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C461E498
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729358154; cv=none; b=aUFSyIluTFOBVj53UFfnFMXHBOmKmdKpKz/ZmB45HBJINh5mQHGt1y9fJsedXGMdrpPbpPrcssAMb9tIl4qjIzWSMSHl3QJXABDHysMaRoq1TCtvMpmTtP0VW6OviUd6lbSoEWS30lm7+CszGm6dq5xeu1/Pefx9vFMh8ccmYqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729358154; c=relaxed/simple;
	bh=j7CrSjXpCc9f7+QchrM8aYw1Lp8ZnxokYAI5sooBO8g=;
	h=To:Subject:From:Message-Id:Date; b=DgtIgSoNB2Fuv4gBJ6oswih07vAHFpXjjiwYlMPTsy9znjiwq6PHaCWE+LlgNUG7Jr+TDEfN29qCrcpTtH3y7pxh1G9pjXFatYfzdxNQ5gSwxrGa/+rTLh+fk0NxzOnKKEhCpH3aiLqpGpZvdSyiwHhy+bL5NyYgte9NnHUEP/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIByq7gE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIByq7gE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D94C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729358153;
	bh=j7CrSjXpCc9f7+QchrM8aYw1Lp8ZnxokYAI5sooBO8g=;
	h=To:Subject:From:Date:From;
	b=oIByq7gEVVivXNHyGkqcOp665AmF0ovRqNrWu9UXJCqYyK8qPMf49fvg1C3r5JhlD
	 IIDQupibiYSJNDTNQ+Cos8m6pwZhH59QnU2IF976qKZwQoJgKMeXmMWqln5ax1COrL
	 JuJ/g5VHuF+vL2hF+RQd6V3cveoQQLwROQWAALLjqf/31TJk+CSAIkPyOQBekEAIxX
	 RPUoPXF4fI/ta5sKGv1ECtX7o7wtmsJXPhp6BiC75xsTP1EOGs9HPzzSnaEn74tCb5
	 SRo85H7Jw0a9qTKYUarhWH72lDKBJmVM8QPTRwXwILCuRqEmh2hXmn0Ni66uYxjsbP
	 +JarcGbVXdfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CD3D3C922
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172935815360.17674.9921188443900971138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae798560c359dbc426342780529e508123d0a074647cf57bbcff92544e8f64ba
Date: Sat, 19 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729358153
