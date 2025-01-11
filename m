Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3877724B25D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736594754; cv=none; b=Y/MJznrO98eswfDlnmeuVJulyEj5T9cZhwLsRrkjEpo0pZrze5VcL3UJ4KgS3M55tHkYL704knTJ2p2ONMs32FDQFV5v4fMFwIwTOdvIVsUVpEICeh6vh//g+0+Eaq1o906SwOpBt5mnktxIBVvzMpOe9SZzpKXpOIpPpEIEp50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736594754; c=relaxed/simple;
	bh=6lw+3SFDc6FlLdkSR8tCfFVPdsi0HAQDJ9yVDDryVfc=;
	h=To:Subject:From:Message-Id:Date; b=alos6+PS/ZfJ+Mx7qiUrN8EbXPgqbjH/8k+EDUav4MdhES8/ZORQQzWjGsRJUBAvqlYQc9aiBbIa2ieH+McKFIY6hD3fdUZkqUjU31V4Q18rN5X8Mz/+AKjgzZ+ZBP57Qj8es7Nz16xnvUIkf7uCIxcDYb9Kimajj3BLid+usD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG+EAvO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WG+EAvO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BDDC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736594753;
	bh=6lw+3SFDc6FlLdkSR8tCfFVPdsi0HAQDJ9yVDDryVfc=;
	h=To:Subject:From:Date:From;
	b=WG+EAvO7EVxh/QTZlk0wczjsSLmdI3bbTt6uwrTF9j96PHGoVCIpxWEBg5MDZoLZv
	 ujW7b3VnycCS6kDSaya5szwAfjHi9oab2s7X7JRLfxnkioQ8FCO6RM70QUiYT60db0
	 SjZb+s2JtWZP46Lf5uFcVy5h1Mx825yrHzNOrr/MPrPx+0aeL+c8sXT5qd+9BNGOMU
	 TDsujDtJmGaWRKgDce+3XTDRD6C9zj2X4+hxUZyytL+UxQLzfPTa/xAt9KCsT/Ix+d
	 ePkiji5I702GUGdL87t3kaFTjf1OnvREjOHoLdiEzvhvh3iQBYQ5dUgJutv+u+ZuIt
	 ltwNOcsPuF0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1646E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659475365.6614.2254185135236362406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6776a0fccd03438fedc907efc722ec1f55b26f93b6b509e639c916816890789
Date: Sat, 11 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736594753
