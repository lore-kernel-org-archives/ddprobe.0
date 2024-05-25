Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64317B67D
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716635063; cv=none; b=kNlK316fH0aqp5DfI38+UlvJ9cVliEbc9YKFxRTTYR2dpM8NdmMJBKn45gh6lhd2Gnap8RlPOdkaV/gaMm9EXCZoChq3gPyJP3WRfX2Xs9+JulOh+h4Z0A5iW323+EAk9NpRhUaCD91+wAwIrnuKkFbqwWur4I38N5YqKhvptYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716635063; c=relaxed/simple;
	bh=rv4830hbZkv5Qyu8jm6pDiXGlkf0u0TchrVEJz75luc=;
	h=To:Subject:From:Message-Id:Date; b=f3ewio4X9gOc9DrC9dS4/bS6sYh+NRGmBOu5vXjM5bw2NIt4vGQ1GiKjDNFjcgxs0mzZvMQKWuAvbx1ppTvvpCdBtwcqbCpW1reXXOs+7gHuTy78WgU12lea9Jm2oj5cZRnX4t022NmcFWCyz73qiogzeEIftXxTDuK0+Ku36hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH3+DOSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH3+DOSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C8EC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716635062;
	bh=rv4830hbZkv5Qyu8jm6pDiXGlkf0u0TchrVEJz75luc=;
	h=To:Subject:From:Date:From;
	b=iH3+DOSGtLz/qbQLp8SJ8E7IToXZ/OAoclxDigGIVfVR3w/kDplQgQLVYfPoPlvRu
	 d9xjR6U+vafNfvzdSEzdlmHmqW83MXK9ZEETQrYsUm2lwhyAiFIkJ8oqrOGwmaUsyd
	 hs825RZ2RzY2+89PordSVbPYvorqotwZa2rR2oHKcCbr/3VCn/xWcU4j26HcC9Tdmd
	 CFj9CuMvUEEcmAZXG1g9DGOG8vTKEFPrDftt4AsAleYoYA9EJICRYBW54d2TAPOU4M
	 HwSRPoS2GOMdh9HOep5ZpDCUOU0w5o4KlUkNgcgpA8a/xsn/uXkCPp9l5i3MpYsaRg
	 TBv8vpNzcANig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C533FC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663506277.32628.7474389579435770669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18852c27b05a1ae7bb1432e100602c750d8533c77c03b2435b9788f96e0a9cf1
Date: Sat, 25 May 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716635062
