Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA75349CDE
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783564714; cv=none; b=u5eJR23JpZDtGkf6vvPFoAEs7gMCXpwO0Cnmlj/yNk41sspv9HfqpdTGwYDa93hw4xOSq2lKABbGBBUKQOhGYYzaEcjAEk/DZDHSrR00ZkPK7IPrcrybP9Gz1Xx8ClhbLvN6Wb1SOZ6MpgzTljDi9QnbQh69WVj/JwFmbIf4IXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783564714; c=relaxed/simple;
	bh=uF6F6WJ64cvRWqRjLp/hyc7JOftdgNOKWSXsSNtVxTg=;
	h=To:Subject:From:Message-Id:Date; b=Jb3pZL8cxo/vYz6Hr6yPlaC0Err18L0V7TNhALQ4RYLvV5WAbHTP4d4w2KFEr0rx5jxt1SRwrMsWhfgOd8ll6797x6n2UQiPIpAWDOAn605ON1yAm20nc4pjYby91KfOsirdS9Nqn8wbXbj4TCUiTGwIuGLyOP62culgUTGojL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Libz3yc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Libz3yc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE679C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783564713;
	bh=uF6F6WJ64cvRWqRjLp/hyc7JOftdgNOKWSXsSNtVxTg=;
	h=To:Subject:From:Date:From;
	b=Libz3yc+kKh5Il1z/EpUC8GpUKUMfkze8kxkzCqatnERYFLi3cyApb4lQp3kQD5/c
	 qBLqqtKgSdFUA0foFtvNuMXU9kvUwzCunRRO2QmQj5Q4ZqQ8RvX1Gj8KynuaBMNhwu
	 16YUzQ/p7HHEa/8ug9g15HC4eB1xJy17pdaufjXsvm2zOcDYT0DhuYymAooIK7g9kq
	 Dx5Hl2GvBncaxhdbEQgUdYLqgQbFX2J8W3Z0JBMuvrCwWSiiJyk10etaDdn12v7SsT
	 g7a5OyYu/z7QAmiPI+RNW76O4xaf7eahlxON1twWtDgUEhpv+J67wibqv5UssRR927
	 PyZ8TrXaNTq0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB770C44506
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356471369.6713.7641692464209215288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cfe439daacdfd2757864f014b9d7b39fbc0d6ce5a68cac1a10f894133434626
Date: Thu, 09 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783564713
