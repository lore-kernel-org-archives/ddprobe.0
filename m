Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37A72D63E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765204374; cv=none; b=iFNXIz8+Rxpg7tZB8tCO6yeYlXjCNf9JDa1Wf0qIb6hq7Hrkav2hYZFYr+L+JhoZnNeU/pJ/KDiWF3XLmkBPEYT0fY3lIMuMiH5m73ZpkNq82TZiiNu+jf4UtlenUB0creLiFXNSEETuxc9GYUnTeudkXzbYGHg/dsaKmhheUPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765204374; c=relaxed/simple;
	bh=EmgiIujTDOhEaJYxfgxXHnQ6VkIdOSLVH5XjJ1QQTcA=;
	h=To:Subject:From:Message-Id:Date; b=H8wp0XgpMAinRd8qGOWBF4ZsOoi7jOO2wQ5Y5zGncyw9dt0Qca/jCLC4AvA1/LPStQozjms3XPFAJcNASNO1yYtyEqY3DkIP+JJ7qU+heA+e8tNYd/Ev4LKhlFlLGtWopSSV/2luoipcgOt6Ik6WpluCT9nu1zj79viHzGYe3is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdyxQZ58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdyxQZ58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C11C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765204373;
	bh=EmgiIujTDOhEaJYxfgxXHnQ6VkIdOSLVH5XjJ1QQTcA=;
	h=To:Subject:From:Date:From;
	b=WdyxQZ58iSXCE1Iu5SiJJk039P8qCQsSow+5mu50s6/aDRuP80lmkXKUUm7kQEcqk
	 QPJA/9ZxMIQgm+pKVEcikmz4pYnqTJk2+vtkF3+VznFrD6do1m58aQ7l3lNhZNdycW
	 NA1X31Q0rlB0zGLMFent5oAaCGTAKXU6Ms5V+YYhgPtteQWR02XEPCpneeS9Rq8thx
	 M3HAsZmkxdW2oDzsEM1n7xqVkWTd2Flu1p+FjlsYlihC/joTZ6IAjo9KrPcx6gj61m
	 PCECK8yT0UqG4QCLNBYojKxDil0049wREEJPKtX/J9SSp5XnvH2X3NPlV3WwojHwA+
	 NJQ32uDa0rLJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA0D3B7F2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520437359.27816.11299445271651483220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c734192663afb582b6a67dfcf6effed018a9ebdee951b623e0362f63ac5e440
Date: Mon, 08 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765204373
