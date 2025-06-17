Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2965B13AA2F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750126795; cv=none; b=h+TT4ynAimkNt9wGQ5ZEtI96fn4FpvIKIEcqKaS6ItA/q3jzXImYMb6qWkXf3P7Q8rqS7WEk7LxecIXMZlbJLc8W2KvPt91yKLjOAGr8BJ1Hajueif29Ivj2n93vnB/tzl3dTkjdk5yxJM7NVuKdknHFM6gJYymQxygKItfGEwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750126795; c=relaxed/simple;
	bh=8jbxnYW3+zvaby/x089TRBdVboquJ8s8JnJEM2+5PvE=;
	h=To:Subject:From:Message-Id:Date; b=Qt3JPw0RjYYaV5Pn+koA6aXxht70WhQhYpidsoh2NYHNyw0PT5sDfr1pSN8PfKASqRDg8N3xAnkw9GOjEfky1ezHgZSW4oF/6+2Qfmm1cd+tEH/ze2y3biaeAT35su1BoCcEd8pIY+R7W9sMCcuTpH1kfCpE6v6GO3BeeWtSo1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrg4x+AK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrg4x+AK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC7C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750126793;
	bh=8jbxnYW3+zvaby/x089TRBdVboquJ8s8JnJEM2+5PvE=;
	h=To:Subject:From:Date:From;
	b=rrg4x+AKKnJHWvDEnw921PdJVw3AeTT33OkrGjQMU82X0ZpPMOECh/6DgLGkKZX+A
	 GwwOq78gJPfz+iVhpllmv7+uey6YcQa/TTkvehE4ed77kCtM0eFxfjf8b/kL379hja
	 zrqT046BCfo2RSZ8faMJXURcAZ0Qok45LOPD6/FP1weOEN6bLYn5qWkwhyTD/l8WLC
	 duxwHhZHfrvSe6xqC+wH1ZTL8PEGbtf2zjZH7LoYLAPynxacw+JE4kTus6ROerDAzl
	 HSW3BZHaYJJNjg6jZACle/GvKyqlHT/yAF7xDuK49O8nX3lRnt7QwzfKF8JFQydT1+
	 F2vpSRtqfZLMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91412C71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012679358.8101.8498452135949697994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e784186e972f315b8f179749a53a729d4e8e299c753cc64399d179b7ed41d44c
Date: Tue, 17 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750126793
