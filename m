Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38CD279DA6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775768253; cv=none; b=NOmISleTrAQieSZgJeIuVrmksvuFGd3XLVFtdKqryj/PrSiV5sdltBT+7bW5JxMdz0ppF4DrJeF7heBtbg+1NL1ucnjH4UOlO6RCFxAuVtlgX7uf54KQDf3+2hLXbADOj56/+/gtp3E8xy9zYnFI3zeyuaeti7GHP03rggwrbMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775768253; c=relaxed/simple;
	bh=NEakykjfhePwYvOYq8svrOCDStRmnYilx/Zy6soGcBk=;
	h=To:Subject:From:Message-Id:Date; b=havQy98d/DLudpLYPFCREkvw1ZQVA9COoXA4wAvM5t9DCEelLH2xDFR+P0Doi6lArNee/8lQbIEBM3udAKDK/wyliHSwN06azPb4pDG0VQ5JuyMenyS5zNTVO8t7oeWViMlahf6f+P4lC38DwOnqLyCQ8zgW79xLagXI2+FRKlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxI6Qdq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxI6Qdq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94BBC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775768253;
	bh=NEakykjfhePwYvOYq8svrOCDStRmnYilx/Zy6soGcBk=;
	h=To:Subject:From:Date:From;
	b=bxI6Qdq/xmY4f2OjjuFdcd/FiJhs8eMKLrsCTZ5sQM4r6JQiGDmziS3im7+iy+PKX
	 X9EVeye0rnxi7IVvkqoO/nqiWVGC8ZRQ6JZNyTx8r1qZY9uao7Bg2UWGg5pjgyVQTq
	 UM/yTYW9fDbD2g/FRrmXtX7S7EgBqBPugumYyloYg+fyGrbe9+rzTTW6jV3YrSLfhy
	 kYfEcoEBkFLpE8uI5Fbyg+k6MYWqJa/CngrVWGtKD+JdeaReHtXxCI/RuNhVwzjQdI
	 FNN1d9AcBvUFcYovcM3tmeXJN1/FArmhEzC2li1slTdTaWr9ZXmcc09TWqQPxHR0kH
	 CAi3yGoJchiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F58F364B6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576825368.7085.15226526190515582767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537bcdae552b0dbaaff510f7a7c4a78ee7a674957406b71d4680a836effbd44b
Date: Thu, 09 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775768253
