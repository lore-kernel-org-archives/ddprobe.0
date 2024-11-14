Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D90A189916
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731603954; cv=none; b=TdlFq67or48GvMzXO9EpwR6pkIkIZn7tkz4rv9a4zh89ZPxN0bcrAMeJAI0iOfZovj29ly9DZc8M0tVecUqFS3KFh/NW4CUPkujAwg3stT6doN7f+Ug4U5WAOVqDgXeQczdBCJCuU8QK0FTYk+Q29JweaLMYcmh3+6HVTjriONk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731603954; c=relaxed/simple;
	bh=5Q6B3V1++YLS7Ad5gFmlMono6hRtocJTD50u7DWebic=;
	h=To:Subject:From:Message-Id:Date; b=E+l6NsCvO4dPa5h94WXxoQDl4X20jsuYRotz1FyJ9sqBqJrO5+jnqxJK0IU+F85VUL3c/yLlZUMwy2q7dtn6+XaNzRhdZYFJ4BkcAFCiC9BJsOpSZO81+p3lDKNItxCtnSIG8I+Xapmx5PaP7L7WJVvaq9S6C+GUhouZH0Yz4jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+ngQnTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+ngQnTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6091C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731603953;
	bh=5Q6B3V1++YLS7Ad5gFmlMono6hRtocJTD50u7DWebic=;
	h=To:Subject:From:Date:From;
	b=R+ngQnTelFK4wXYDVL1YKzpaJFggAJ/y7xe62WAbK0CUVxV0HDDJioBO9bcbmDnom
	 lE3+DPcOZopiRsT90F/UuSX3a65fVM36OKypg+wVMEYU8Spz+BXzazFr0FyiYanum8
	 Tg5p0SRFhMaRpyZ9hGZYHlHeGEWppuJc3X3uwE31fIu1AHzDaAsvQptkNn0+W9VS4h
	 DV6GpOQTUcpXnkPvth8cmLnNsrrGWzSYyxepRHrsfGSv9e9OTjyAja+B+ZQStZPgq/
	 WnfPhmjYob2ruu4EKoHA1cNvIp4kzTxi2EN4ejD+MdR0hfyBeBYlshkJ6YkalFeZZQ
	 aE6DoFQvmep9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F675D637D4
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173160395364.27440.7716569818149071006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e866da2677904d0256eba64477d6903fe5a51abb0cabd861e22486f6f50cae
Date: Thu, 14 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731603953
