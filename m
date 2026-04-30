Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C2040628F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777559854; cv=none; b=a6ggzk5cDq5nTwR9FFbsHG8Ch2AcZr0550RgZGBlwd0yJfu+2ELAFue6m4l9e2Ps2cjLpShiMqWsc7BZmmmZVMOOMnwAwLvIT/jMlJLlQG4i300/WPoqjUus16My/ha5U/mcfha8GvfWotJSnBpFnmDYtV905UyGJoKi2bWvBoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777559854; c=relaxed/simple;
	bh=OfnpOGMFjIk37R6vXQSlgSnaPefzqAy3DI9EHuWyebA=;
	h=To:Subject:From:Message-Id:Date; b=ELOc0NXEj9Z36/LRFZQaq/02wBjmKBdt8ayNsWTF8DSp9rYgLSNQq/f4YXjIKRIqJE5VJuvQ/5PLrhYN7QsjIoTJKBKr+SEyXu1KxXZnpZUf152kexf44bcY4gG/bvAULxN0GkEUPptqgq9iUCMKFHUUOBx/S2LriCvSNyOkhQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPQWvdzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPQWvdzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAB9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777559853;
	bh=OfnpOGMFjIk37R6vXQSlgSnaPefzqAy3DI9EHuWyebA=;
	h=To:Subject:From:Date:From;
	b=OPQWvdzqfl0WKseqyYns7Sv3XidaVfxunN4oQ950OJ6C9NsO4lr0ChhqkzPPer3VB
	 21tdxv4/OFUrGcHiaHsCys0QWgDADg0zCiOLixr19y86fb33KI+B+vzhmzm5bg4hw/
	 Qsdtu/wR7qs4fxb28rO8GiZF8gNPx/OgUtXFML0aeysDdV0Vu/tAA2XYPSRyKEDlGB
	 jr9B+83Jgw6bAk5qLMTvt7s6sYxdi6oX/HxDJARIdLYAms9/nEiDoAAaBb4VvLR5aQ
	 /6XCLi0Ih/76If/M+8Y93rMMd5VfEFAPwcif6HJnm/YOang4GG56QHRXcULjFoAcNW
	 AQc3kwR3RFEOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC7FFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755985369.26581.5276034247104990716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09040cd04b006fa5fd404935ce1dd3c2574c61e1ca9c975a4ad692be50d8253d
Date: Thu, 30 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777559853
