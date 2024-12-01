Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C62370803
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733085955; cv=none; b=a8k0w1LEJcvHxmqkDqJixfgmrkXSit2R6ui/1n7tIs4bxpsyUHmJHNtuM2j5FtGvPyS2QurAMMLNSc60g9cWG0YTakZUt7Y6fJg8ne+EHtiYkAO+V5rlfm2kIUg+buhl348HFcl68sol6iDU98xhrgO+apctCVaP50NB5lwkjj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733085955; c=relaxed/simple;
	bh=suCjtBt1mDXS2Y52yoSTprbZNbRCDN2Pvt7+aHGeKE4=;
	h=To:Subject:From:Message-Id:Date; b=Pm36Si+dG9p5qMo2uw1yo3ERlzOwnw3F5HuqgQQ8yRCu5wCIEDAfWhbvN5A5/hIgaqHsOBswt5RLaqBzoPQgBe+WvPCHFmRwkWBqhFVMQxlUTpLDs8+rNnOb2lBIF7CD0Mw9nrw3om4OKTQgdHlM0hGNvNmqiNKhi6CGFRnHHmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvAl4d/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvAl4d/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C61C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733085953;
	bh=suCjtBt1mDXS2Y52yoSTprbZNbRCDN2Pvt7+aHGeKE4=;
	h=To:Subject:From:Date:From;
	b=jvAl4d/GlMMcFxrh0Fo4ylLl2ZDedGTHehlv5THbUBh6h9nNJNxccX+4dpUQPhhgt
	 7+eI9Xq1JoCwsRfboo0LAmfYvBsVDM9Kke1z2+P7wIAAxnrW4Q/hmzC77d1LJzDEuo
	 1f9t9zUG/XX24QEyHKaBA83n/aBRuFcnYqA3skPhMb3cnNIhyKkluRMmmxKrDz5DrX
	 hGqO7WIk17hYd2M6JzNPe1p5h7bJdIHfgyhUrAZqegkcEPB8g1kYc64cvpuSdR3e8b
	 gebsQgRjhFZU9eAtUA/oL5sHFz673uZ3JhWU+senG93JR+XSibDhJLdyScYQ/3iv/o
	 t11kswsS0JZsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664FD4978C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308595358.17187.10851045995691286195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe7d51e5a8cdc059747268536e1507efa694886ca09ac10f58d310cdb2e2859
Date: Sun, 01 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733085953
