Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C141DFF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733708154; cv=none; b=qfmqZJ3VVqbCt4HV9x50LBvwtgyZy11KUGvGMmkXRejocGk6czfE5EDIE1cydUONxEUFCM6zqOY20WNQ8ycw3TAJSCDye5gXH7kLd9+ZsASa2p+lbrNdXIM4Myfk1XT5Q4p4INp4zKAEiT+W6kXRTKmYZTVj7c7BD+tMSQ5SPt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733708154; c=relaxed/simple;
	bh=sXs1hX7Ks19LMvOvzAVq0tZj0NwCkkfd1S1NgZVkUfI=;
	h=To:Subject:From:Message-Id:Date; b=V6kB7R9+L2Zc4IERoegGNCuWfvVWkroGRs8YOHf6jeV7FXGf5BuU8CdOiaeDMKLd2TayCk6moQ/X4LSHafoBxAMDz387oi21cOWmFlJ4lMgclkTR0wIljIVrOkX6yvvL79/mg3WUeLpai9/l+RM+YBicreunDq0s3Af1y0lNGVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmCrtgvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmCrtgvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C03C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733708153;
	bh=sXs1hX7Ks19LMvOvzAVq0tZj0NwCkkfd1S1NgZVkUfI=;
	h=To:Subject:From:Date:From;
	b=WmCrtgvTL+2FgKbZXSXr+ux5qeJ3eWcVgsOX7R9UH/Oifrh3Xg2wgaPlTAW5I2a8X
	 QqDd9FnnP40sjcvgKUaMuW2VEU8HrDWnwwWkY8OEkw7lOr5M2rinnftVZXenw6g4RD
	 Rsxjsb3nhsNEy/AyixvkPXjKMeAKZXPjGIwLVR4ycV81HNeFXWRvxDFQpYA5M9/CfM
	 fB/4qG/LTMg0FOfp4kUAIiSuSz8oTOwlFKg8GiKyOnqDVNyivoOP60Kj2MuyxKUWqA
	 OCn5eyStVL8X+pMByX14wRA3PAr2+/44+1dfWd1RjyKbMXu5xDwgfoVQJITfBLqsxM
	 w3nEdHZ11PuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C8E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173370815359.6041.6326445230248510202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb06b721d216646f3bba2c4430b3c7e1aceda9a3cb42e9af619b114fe87a626d
Date: Mon, 09 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733708153
