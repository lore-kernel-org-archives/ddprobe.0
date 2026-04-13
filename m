Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D873A383B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776067654; cv=none; b=hF5z/RvZhpNxxZH8MIcTmsUlZ3qWG61vYTD02p8DKaexTVvmB2wCrsehnjhOEG2k1Q3dD8yRY3fd2tdZ7eKEcsWL/GQudlVy4SBXPqMOprNFfM6FrITc1ZK0pjShVdGIYJbDsWs79K94uBTpTewiUc6bIgUV/XzAFOUIEm1pJ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776067654; c=relaxed/simple;
	bh=DkK6PsRzfcANAc17pcQDnrV6myiuPk4LLTjNjbaMu6Y=;
	h=To:Subject:From:Message-Id:Date; b=u6Gf6Il13zhBb8hh0OscguykLUH/0gHEeBvEdNVDQf+R9vE83T5hfBqdwTBuqTbXWQt57JFj0+xo2/zsrofZjYutJl0cwXSgqvfCUH1ffAhIXuleTMNAN6kkEf224NVl4sqIm5IhzpuMv/ghrbxgYZjwnDSC0PyzdUJ9zbTMyfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9lXRbTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9lXRbTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0ACC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776067653;
	bh=DkK6PsRzfcANAc17pcQDnrV6myiuPk4LLTjNjbaMu6Y=;
	h=To:Subject:From:Date:From;
	b=b9lXRbTfkjUxGANnJxNnyNGbRCqrZZOWzqWzULNWeUvcgqcoDFemGovjdCZgDTG2W
	 rGAcayZUL5xh72+BuztJP3OxjBOr4Qs4+d9FJ//bhPqsatB0dU82nrWIJEOBKTXsz8
	 BxzfXoXa0Nhp8x1+c8p8Cmnr6rlmprT0dOGu/JPCJlRsQp4pOejlDNTp4/UwZNj00k
	 0XmjEZi+w2AvIUG5BlxooDpT/lZPMttYFAZYPsjaZ3fWzk+1197Cmqdn4uFiNK3GXz
	 Y7NUwlfyuguWf4tZ2ENM5RfpHyYdG9697pmuRGeKmUqNeRoIALB4byK4I9jxYC9Mw5
	 mIkQQLoRyWL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5EEEBFD10
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606765370.3739.6395350064276515618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43971c250d129209384356d4c3a11bab7cdabc970ad95a2beb7792c21f3ffb09
Date: Mon, 13 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776067653
