Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50323399031
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782291394; cv=none; b=c98yseRf1CGxbKwAtZEWTQrqs93IWpxtByFMkxoigwAadcIqdr7z1oBki/wUiTvBl61wCVaAGjMV3yaLZjsiV/UIgMosmQ45hh9WbVR8wpxNSZYUErmpHlhbX7AB1IZSTmjnqPHMHH6dgts9J1fY4k4dOulQMqAtpDcZso3nWP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782291394; c=relaxed/simple;
	bh=nvuIoziZd+ilAcGoOFxrjXdB5WIqKi8yUNNShPULJ+8=;
	h=To:Subject:From:Message-Id:Date; b=TkFiGvss0ilN4a3A8Igmdi6G9LOw7+FYpsK4iGmOV+RT9nKEyMwH95B6PGwENybgPBnCk79jmTUxJHZ5FAxRMkah1lJJAJzPvPw1HSqIjG2OMx+1LWgRYS/guq7xmgOF4ARBqQ1na6wMFNg3c1iogvz21kyysO/PMl1gDYBtdio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsSEDdJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsSEDdJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C31C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782291393;
	bh=nvuIoziZd+ilAcGoOFxrjXdB5WIqKi8yUNNShPULJ+8=;
	h=To:Subject:From:Date:From;
	b=dsSEDdJigfIv4q71H8TksSrvhFsn1SU2jIPuBuEKcp0jhoYHH2pzDj0XoPvjjrUSp
	 xyjSmpcEPr745B2JI/MqyizXtLG1vYRzzL8c7jhuSEZ+l2dlWba/fcT4xEFXTSqdmp
	 sVm4aa/L2ga9UVD4PBTfHV8HJ66yBMgYVTNfs3iEGFALwwcPH0zO0FmeEA6OFmtGVq
	 1DWxgL0PlJ3HfZgmFYvYUE0hM1NCSe3l8AqWhMYqrYFQW5m+9X0PBL6aMQXxQFkTMw
	 vfkG2CCim5+BOcoeMuN3WgPu0GhYKh+JAxbVfEm8+d+Kybyr/9zMfdzQV+1YcS+C8N
	 LN/nqYJdR3eEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBEFCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229139370.21882.860567629319924843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9f1c98cb9c2927a8779ab566c95b6c54909a184816a4e24002c1ff7168a80a
Date: Wed, 24 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782291393
