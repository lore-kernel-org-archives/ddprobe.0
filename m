Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA7E165F08
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726567553; cv=none; b=kKgOPIyzjb2HpKE51Zo5iTb/88yY7HBAzCQPdAbgRTq7Lnvl6hJPIvQNrxGo3UyTxAeqHf8afMSrDAMLJkxMrFOc8Y7IPGBIZqYD65VmJz1nq4SGekTvR2WyLlcqzTrs1cM4g1/gvbbQQurL2Pv4YlYjoZgcXin2es8rky1sOnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726567553; c=relaxed/simple;
	bh=kiOq147bSbyFcs0IlCnAUNPUo65yNfibLmW3yQwCxQU=;
	h=To:Subject:From:Message-Id:Date; b=WIOGtbjA/ifQA6j+6IeS6VHrqsL8dmzZLtiOt9GT5TW9o1zCwOo/1ch68nNL0sdKu9fxfzhyciDyKy+g4kI94jY8b/ZN2Yhe0adYw7Isy2w66bAstYX/q4Dfv2VrqmuRa3HhPyizBng5PTFV48JdtzwM7Q2Y6CcGRbRTAKVCtk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULNU4uA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULNU4uA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78A9C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726567553;
	bh=kiOq147bSbyFcs0IlCnAUNPUo65yNfibLmW3yQwCxQU=;
	h=To:Subject:From:Date:From;
	b=ULNU4uA30kIEXqXh2o2o39YMlw7JCHkLMzaVopPr/lQ1Wn2om644QvQIwH75zu8Y8
	 a6d7l9mi+Q9KqDnA/1meQHrsHEdSeYW0LwbJ3m/GlZCJMog7lrtzHi9uzXANzE3Rei
	 w1hTqF+fH1wd92QcCbFJk23a++lD91KCV5HotNP+wOO6dd83MKiXftsZnseye9O5VL
	 0wEjiZ78O5ozm95QuKrbVdo0lbAl9smZSACD5zUCjGtAEA22gfz/Wp0VTYQoVKo2k3
	 OB8Ccz1uSd7Te3UqULQDnb91AvU061sNbOtuLYqgLeQ2w/rFdDU/wSM/wE/VHdaOlH
	 OFwdrOhkpft2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A104AC36006
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656755364.19487.3733153682673373846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5876098af58523725be15b460484199e1d38fea4b69696313771ebe79ea087
Date: Tue, 17 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726567553
