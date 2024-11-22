Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DB6249E5
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732311354; cv=none; b=cMA3QhC810r1I04C9CJCrlBn/fhsNyEOUzxQH5yOCEeKR0MpaVyz3OCnIMn4rd63J+an2VuWL3x1lOPHsGodqsO6uRXKhhWblaWISLr6qhVP6jl2GimdTW0H2mqD8veb5zi0pRsp78EHoK65FRI0s//qaAiNQYVyfQhXycBWERo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732311354; c=relaxed/simple;
	bh=KcfqL1Rez2Wz7uizwlW6s4+Fn3IRdq2iatNyN9VXSxw=;
	h=To:Subject:From:Message-Id:Date; b=KSrcOXd8NDeSvqdWQJqR033obVDPt7zjqbY7daw43V9E6W0/ZO5vglQV+TSRaFtI0TqYa2wnGoeUKFMMJI2uEt/DvKPKtUP2ykb+HNDSvES4x3sOcH6yghyX/LBRZDzBndZhWYAJ8Wtvh30oskSvxvXTdT/B+9M81z2mUoPSp2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKi0arNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKi0arNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AC7C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732311353;
	bh=KcfqL1Rez2Wz7uizwlW6s4+Fn3IRdq2iatNyN9VXSxw=;
	h=To:Subject:From:Date:From;
	b=oKi0arNWTMpnoKy3Bin5Ho+jAaSVS/MehJzDgukF7xiAMfQzXHDMwcoaZqDGngj/5
	 god5Iw32SOLhRKaSQVoO3vIY6Py5bmOuf7rzAJZUTHLINjoQRBNcjXx3mkZmPnbze4
	 cxbfg7Zj+7yteK1y4eV2a4ceb7tmLKib09cYhM44WN264lNSIV4miVLnCNWN18f5zj
	 0LjCdF1We8CEUSfNZhYmq/Va9KpQnbXW54PD/vim0sA+eW+gN6cHbhje9kT2Wrj/zq
	 VhRhbWOomkgPqkjNr3JZhLWbnyJo4XiTHG2M1MsAq/Xy1JX7PZ0W/ga47ITMZvcdIj
	 jK6smTBNUl60A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1CE6ADC3
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231135358.14599.17006127070445803188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0847c69842a81f10fc5ceec30b2f19c036010bc00ce14feb2ceb288d79c29b
Date: Fri, 22 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732311353
