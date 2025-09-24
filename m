Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DADB313260
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758730194; cv=none; b=fFxKiL8BtPo7rwRZ8O9z7M+8HnxUHhTk4GYfwnytLczPkyW1sLWMq0RoOPHhJzYCUq/1RSLqKmHlGgD848cGsEV+XjVo1P3Bno4XkOMrDvyEX6THHkhWgUdi7btWC/lfztWN2wubtgGmsFX3e8XpDlO6yxteRLeOdczNxXlmsts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758730194; c=relaxed/simple;
	bh=JKvLMJJBfMMPQGB8QYjDWqOqopzaJEdhJD1WZwN5Apo=;
	h=To:Subject:From:Message-Id:Date; b=q7aI5U1lq+2vOXNQmHXo1Mi2XVYp7k5mkLyivYbnZ35kOftx8UEcv+rn4dcSG5Pcnd3w+rnVul/31MHCJ1A7kAlTKufhCG3RY4YtfdIlqnR6rb3hDPOctVoWbkr88tPEtQp2T7RdPK16FGjafUailNrwpn1L5u+Wb1WyDjRi8Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcw/rloP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcw/rloP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B5CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758730193;
	bh=JKvLMJJBfMMPQGB8QYjDWqOqopzaJEdhJD1WZwN5Apo=;
	h=To:Subject:From:Date:From;
	b=dcw/rloPfILcC8LBvAMTJ+U/e943hF45GOHLD8Yfea5PFd8iroGKhW/zl8KM+s1S0
	 iUhqeb4c1RPAmoG+2Sk0EobtW9srWn3F+CqhNxpYPUO+A8XBhN0CXybru8yPSygHHh
	 LqdLXYzgP9uqA5V9dFiL7fi1KCDRjvxKkATZdREIaFuIrmAny/jq51JTYVvWYLcGFz
	 LCDVQTZxj491NZvlPWo8LPP6o2LGqfkxNbBwTfgle1xM3deXqhGP1WmK9LDbB1hmlg
	 zSLk0ELDMb+nqvVl7LXl9kzBGU0iW/MsH07wd94gEoCvcH5K6Q7fcU0z7gKwnpQVby
	 IEFPvPBUwyO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92570CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873019358.17597.16924798850534640023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4571b964c3571dc7670256bfa949fd0d77a63c6d7fe56bbe4900d9c337d7f5
Date: Wed, 24 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758730193
