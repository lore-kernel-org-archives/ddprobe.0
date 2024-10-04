Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD7D1E3766
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728056754; cv=none; b=X8jW7NyrhjWe9Q5AveNSefRCEKq2GiEMHYFjNVSkhqrcgBeSoFDc05nAa42Z+wtTZ/wYkfZltXffKkA0peGIUnR0N2nbDVgWcqZpQkLhtdaPuGhlUSlwfrhRk7tuofhLpgbVFeQ89FoG9O6nummhpoUOexJ4efhx2SuG4/AcGyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728056754; c=relaxed/simple;
	bh=1lDCaeKwdRpyKZy78fu04jad3miiKy36Oc9YhRr1b94=;
	h=To:Subject:From:Message-Id:Date; b=Tom4sGvqtHKCJB3VKQcKg5u73v4ZbTfwIXgesayegN5BcLg+rTNPlCk811Ja7uDMF/McEvn69cH9aDJ5ttzm6kkEt+6NQtNaoW/mYwFGvlQmCk4YmTQAA0LTDuRbv/F7yDJtDJQspBac7syGrNVmZiMy2EBSsN+3vus4Km+BGGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqW+6nPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqW+6nPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA230C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728056753;
	bh=1lDCaeKwdRpyKZy78fu04jad3miiKy36Oc9YhRr1b94=;
	h=To:Subject:From:Date:From;
	b=rqW+6nPb5+QayUY3rCfH4cTviXf0+L3EpHjWG07SRHHQB8VewW4/EQz9KeT6llzdn
	 bQe+ucZytR43A4B9dhVX5Zh4oLCpL1l93vEuKhlnTT4wFj/WTZ1T4pLK4BqfzqtosZ
	 0Mf8uWYCx8PV5LTeEYkpQGmdp1MyFYVYEHJAZIwAZMthI5vQGWcQ5pAjjotyuX3Gpq
	 01KL65oewSfeuoAIClL69KVf2+vUpcbrcGDQTLFyVEI8gnPgDKOOjcPQ91QheVVbrc
	 giKwFVUFChiHRmST42DKgqkfh08cFA2P9+d/p8y4JvUuCFU8V5FeO3ie9eiR4pW5hT
	 JIBOoWNc3DkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97820CF8849
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805675361.11989.18108317727168993294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d23cd705fd37568a93ea85efa668e751c58d7a8941e7af9f368248306120f7
Date: Fri, 04 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728056753
