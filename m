Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AE21A681B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780376674; cv=none; b=uA3wPDB9XXULVeRZqBiRUYZP6+CEf3pDJWQ0NeFkT+wkGKe4Li+ySrLt9Z+Z8YPOGlj7rZVCg7CLjg2XHW7hscp8XLgMgigSm+7+OZCqrbEOOtxh1sOnSMmJ5crd9M1WYzJOZ8C/6BcJz1RYTSQLIaBS7Hdm6ycbTwBCL/Gpc+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780376674; c=relaxed/simple;
	bh=WY86vkD8d9SPpOTEA+G2Gsyrr8KDfw/fMYueUjO0vkA=;
	h=To:Subject:From:Message-Id:Date; b=nl5S/3qsJY4gCWzpD2UJNvB78VrDIB83VO8kyDR6D9Gal2+Jox/1tmxtn5ocAw12SIKLtKHlhZgVDIe83Sz5Guzg84lNzIbT7i3EWaz3ET3Rt2WnI06J1lwMw8iwiotBW7ftql1phmVTZjA+LFrl5n0qY1lHa5CK2yishjxqEnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHeVn8xZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHeVn8xZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4479C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780376673;
	bh=WY86vkD8d9SPpOTEA+G2Gsyrr8KDfw/fMYueUjO0vkA=;
	h=To:Subject:From:Date:From;
	b=LHeVn8xZ2jEBbYBCEJfIJNwhc9XcOSifF/Hq6oumSXwvEhYIVHusMK/vrfgitg4Ss
	 eHYM2RXjNXXOb4JG6LGehOR0UnO4Qx6jMpATZhr+G6ilrcEAStQOiQXUMeyp3lyiwz
	 ofmRlukLQXdErhGPe4/BVc1j12gkvRsyEkW93IT4XTTSud8xG68BpbBVzGACO1XTSj
	 9d2piCXXq5rP3qwWgigJ1tqjmQL2p7XQXuqofdFbzT09/Tp2FVCshlyc5DxNzn0i2C
	 JQi0DXO9fRIy96OPCCEUy45fUbQXrf8O8VyEV8XRT1IyVIaRwr3PePXb44sAyiYCVK
	 3OwThNQxtQjbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4ECC5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037667370.25113.16184780931269189609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceed16bc1695655f79c09492098e226b613d931e193c8e6cf83d72ad20d01189
Date: Tue, 02 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780376673
