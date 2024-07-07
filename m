Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC242E64B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720373183; cv=none; b=Nc43XS8Fc0yd7QKkAjLOY+SNc+O1t8o44IWVwXf+RAADCfKaDXZfHN6BbWJbBMhupCb1AYdqGrSbti2TqMve0HUkeAqa0Iac0beMRGocm7SpQE8GP5zb3+D5TI1ZbczYVnyfH8Hi26EzXIfCmyWN/ubS5zoh12yJfnzzO2oW9qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720373183; c=relaxed/simple;
	bh=DyM2a5Dqoms/7U5ZDOfFSAuTVfMlrzpkQbwE51cxelY=;
	h=To:Subject:From:Message-Id:Date; b=ALoYUwY6mk5T2qmZ+BzhAr5j+mvVM0tx3ucJg+JYXRaqIdxfAN/is4dAUwOOX/giZtgYNeoFXlT+fCq12YQlB+8nS5cpg1/tMPXwSz1Tyx+6vmfJ26i+qSVunfoZqm67YCqAwST9ztDxrRmKI9qh79ig7JSF6n+K2Y9NzTZmuHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpxyIcCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpxyIcCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4981C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720373182;
	bh=DyM2a5Dqoms/7U5ZDOfFSAuTVfMlrzpkQbwE51cxelY=;
	h=To:Subject:From:Date:From;
	b=GpxyIcCO2VZX1nnHQEg21P+0KfFaEWElG1QBE+9gf3dLP6LkiKrj90Durkkkuhb50
	 2UyOCcRezN59970HzXobFJNBQcCpIFww0UgxJMAng2ALMN1lFJg6C6rjJ7IiFzVj/Z
	 eTXWq1bS47/9aT8w4hDt0f/CzMr13vPUGADqypRkHXlwCGTxEcZLdOQrmPS7ANcUmS
	 5nScxzx9RytL76gL+vagtshf/GpkWqeshbqq8TSzaGT1h68RzhOvghMZSUjt4BgpJX
	 NGvx9wzEVCxRfrvfCcvITbcnbRAv3hZPEhDM6gxhyAEl7gq56dIWcG0wF0J1kEUc9G
	 uCpdIQ3d5q5hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE997C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037318275.10139.7379196384026187696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d094cfcb25807ff0f0031653685990423a34153f8ea69f796327a0f91dfef53
Date: Sun, 07 Jul 2024 17:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720373182
