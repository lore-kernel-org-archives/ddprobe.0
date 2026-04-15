Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D1B19D8BC
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776287854; cv=none; b=D3ZfE+urlPBV+9de5MdBU8Xx/QEV2Sdy87AAA1hKOtdmo9mT+T5z772rpHmPNWh2dE0axkWql3czM2vY7ELUZ0rdysNjG4K9LAjmL/cdEj6yGF3vSs0ZUtPuVD8SakN/rVk+ZZnlF+bWPLjbLHPm/ZJly5E7h7nT6nb3uT/SfA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776287854; c=relaxed/simple;
	bh=+fb3cS/K6Efs1Ggi8fSAxfYSc2roW+LLnxjPQqmZBaI=;
	h=To:Subject:From:Message-Id:Date; b=igcm3jQYa92jNr9CAVvjVtMv/Eac4/oueOwDuY+6JsJusmoQcG94MwLY1YjdGc0PxTP0e84iGGWP7J9MfPfVpCdB+LhGPXAFAy1aEeviWpTZZMBz04TDwk823nXNiFgTeTNs0fJmRkGttQwKVJS9Erh4h9Co7AVNWyA6eEFfSzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpcAckyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpcAckyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB7BC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776287853;
	bh=+fb3cS/K6Efs1Ggi8fSAxfYSc2roW+LLnxjPQqmZBaI=;
	h=To:Subject:From:Date:From;
	b=MpcAckyg4ySfoOio5f+oBfeW6sf5OyYUhxYI1CDydBapSty/6+YvxZoM6+BQH5qEy
	 jwDDtY1mBhM9eB4nh69pMt0tLxZa4zQWeMZjp5yHt+FOakRakzpYttbrTLYjX4p1fi
	 x8eZo0+j4y0Ymd9/niR1uBHc6iTB/gaHY0zRUkzKpfarkro1RCbbHuojcxRoNP/auX
	 JJHGWudpr+6H5BVDArTapTaBrYGwsO9vuOpG6MTzjUW828RZUE423sib1YO1+/a0sC
	 ENI+Q8AMwFCvsoiiXo+EhAF9ttVW8GH0fjJ1P8x7zNK8Tdg4QT3ztS8j2gL62L17o7
	 c+9yTgd8c4wxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA46F433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628785369.18781.16705822186228597746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2485a1c039ad419f724b7325be93b08ce4148cefd18129be00e178f6280a8419
Date: Wed, 15 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776287853
