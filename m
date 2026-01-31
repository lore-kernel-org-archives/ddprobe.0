Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BF035C180
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769899434; cv=none; b=hSJnIzw02XsHHx0j5IP2cqYqL+E5tn6pwQq0tLk2fz1nj8IEPt5SJznJCo7N7fMQU7nsoUly97YUMDwusfVo/sPwbjJXiX26wLBZmFqYlFK5f65Og0gmKPlXOoK2QbAyAxonguTVkNvY46xSSdWuLTrq/XWE2waGDp7J6gV+jDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769899434; c=relaxed/simple;
	bh=CrC2FK/6Que6CXsBKZLKUtI9XDrMhf4jm1klCk6bd40=;
	h=To:Subject:From:Message-Id:Date; b=lFnO1QCr8scEMRu8uk9ySzDyCxghAXagOcYEeki8cBv8HtEf+RUIONbn7+21cKs1ky+XIIizXuu1OJQx6r/j+0jmLtvLPQ3N/Mfs8SxerUKG7ThdgzlpPf/d8DGdu87RBZ46VLiizV9IZGZzp7NNKwx+6jOmutwMyfkeqRWeOhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx231myI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx231myI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2816C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769899433;
	bh=CrC2FK/6Que6CXsBKZLKUtI9XDrMhf4jm1klCk6bd40=;
	h=To:Subject:From:Date:From;
	b=Mx231myIj8cqQ/PWqx8iKG3ZyKo4OcsTEGm4C5VB0e48lzLUv8naRTxZtDoAkZvTS
	 NcMo+nb9V7kp3TNqFx5q9jxavTStolsfv4LW/jf9oa69XaCsihGEW38QcDxaTbNl1b
	 O4R9Kl07OvcH1LLmnpdtxVRIpON9NNrjDRrKb55q3uVsHIWkQisqO/ii8rMOuNFRVM
	 xPJUXjZ/EjLISf2Ht8rF6QBFCqZ85FSo47PjLXAvS9QAiohTbldAQiRgb/82rdRvnX
	 GzRS2vghVEge4JNjb7VHhAp5RXM2uwW+Bzs/n9i/Na9lC0zdp3vPPkBHKw1sME6Qor
	 zJXMBkH89I4cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E373E7C6F9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989943357.4903.5859241650979335709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9739ff1f9d511ce5f9dbb2e4f0c1b04eb74593704478416a799eb9a1408a552
Date: Sat, 31 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769899433
