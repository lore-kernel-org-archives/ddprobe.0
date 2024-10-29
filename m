Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11140143C69
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730225754; cv=none; b=KeNldK0Cs/Lx7KmS6UK3/Qm2Ic6eppIgm1zWM+SPGmZzDCH3h88BhArOQkkVotMyyICg7fC0vOjjXY6BtrEoObR1k/mnGpC8Q4GNBUeP8QfqQslW5dYq6m6+QoV0arPmG6LPd2pSDVxr/JdqOZQ8aBwvBN0byjsdQ0B3qA0yBxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730225754; c=relaxed/simple;
	bh=ncpLy9GXC/MJyij9uGJG1JYfUoX6MkQ8kO1DDlppqB0=;
	h=To:Subject:From:Message-Id:Date; b=G6iMNP1J7ayVt35xFwYn3aGs3cNykQVM3h/ku6wJm2JHTjdSlgwzoadYnZYlbXv3H5+NSP5uE2dRBPAxqrNrrthctJ1FezmOFSMv78eab2hWs6eu/MVc/JyuJOV4HP2KEwYoDYS9v3FV2HZeCTX9qz407l8JUHPlVR512N4fOm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nb7eBOzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nb7eBOzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDA2C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730225753;
	bh=ncpLy9GXC/MJyij9uGJG1JYfUoX6MkQ8kO1DDlppqB0=;
	h=To:Subject:From:Date:From;
	b=Nb7eBOzmTNt36fGz03m5zEXt3NmgXSyFQQnKdNDoij+WAFLalSkYX5W3GmMi3yYie
	 ufaBkeBgWJFdbSfQu1vEOVUfHc78qc7cRjiZf7XZmZB9hn3uOBOFuS9uDaE6kvogj2
	 glZZQ3nMGbw3aCi0bL//v7TQJBkTQX3pXfgxBvMsh7Tla6AAYjTHqYR9UAvir0c7zf
	 8goDnt9MHxhcswtSpafdoNtdfmruSrNgoSkWDXr8Q0obRVLMNh0j3lQbv2LWJTySp4
	 zZ8+VHJDuXm4Rw2+Zrb+kS7gunva7tdHv4JBBdOKjN26nFU0VyC5dsrJRKaYkfnuuu
	 ASxNrvKjePK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A40BD3A678
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173022575362.28361.2679923840482964949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c50ce49e94bdac26d54efe2b1d586d9d07cafe557be7b871cff2679adc07a2e
Date: Tue, 29 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730225753
