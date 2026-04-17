Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6BC2C08DC
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776443254; cv=none; b=trRz8AuH2Qe/R8oTf4ll3A0881cWWx0S/hQ6qDJg3tbrgWrtKWnECt4OgryQnHhUp2F4lFXVajStASHrN6+xtCw+EfDeliC+5u1mImOz/1mF4fnTxZhihJUinldKoCiqHzB0MdlQe012EBRwbvEomGf79GU6RO413CCrXcIWIv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776443254; c=relaxed/simple;
	bh=oo8q/FV2SE5YLWzW7N2It7VYwO2MeGSA9zzaQlINI3Q=;
	h=To:Subject:From:Message-Id:Date; b=eNVyckC0X7J2R1iDeJK1I7nzGG3lPecCzbln+yoZd8oH0XPAp1s/fvnH5ztZDDFqp6CU7Vrr9JSVte7m/daCWNBG13VYsY97v4Gp8KvzFrJQWypcfzakS4oreLsNUtdg14HrlsP0ADjxZk5g41EAzGUfuEzvtn/lhb1L6zl7mI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWueFfYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWueFfYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CB8C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776443253;
	bh=oo8q/FV2SE5YLWzW7N2It7VYwO2MeGSA9zzaQlINI3Q=;
	h=To:Subject:From:Date:From;
	b=EWueFfYGg4312wSubW88MRxjZDhIrbcSWww6nhkkNKZFOz8xinOI5VEDEVyt/hsW4
	 7goCzSzR/ih5YRpbCubrg6b8q3KI1V1ethr2oS9on4LEc17ag1yvRDlCXt7Y/Yq2rv
	 C/u2sGgzGY4KcWl62h91Tjhdfa/VZmiKNUVoCt3fLc10hUrv299v4EUth489OGrkX1
	 zk2TyMvdmJfckEOrefjyKQwgUqRUAojvuwh1jpyVwpUfezsNTvZ09gWsZPqrHOEOoW
	 SpBjiAgfuzxagyd/042TmHKXcrJF4dsa7Yvc64v8xZR6w6fv9WRISB/qq33CizhgzI
	 a2O3m8VRao0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92F3F436BB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644325368.16329.7629596271089422228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c747195a382699044373bbf33df293800eebf49bc6f928a4b9135e6cc2c0ed54
Date: Fri, 17 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776443253
