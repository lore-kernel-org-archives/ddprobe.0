Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C991ABEC6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727201154; cv=none; b=XbeYtQQUyN/O2Fk7syny1YAr07ncEMrVcngdL+Xn/BLt+vz4V77eY7qibL9cLsQcpCCfFHnjXllZRdJ712eSj0s1mS6rfPOOm/bBpl4KDSlPpoy2ClXpGa9Iftg0mdsOEsuCZmdDjbu8F/1PwHWspLd+ojGuJVdtYHCj/xWF2Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727201154; c=relaxed/simple;
	bh=MMq2CbL+O8hZfK08YNbk9MaMzyh5/Pg6FusCuuHxB1w=;
	h=To:Subject:From:Message-Id:Date; b=HBKEDvPhIHPjDpsbDXX7+cuFnSIRLf/QbGgZcVfOcIgjhGhlIVAjd1V2tN/eInB3Q+rFcRUg77mit8Aick0Vd7jZc71DDmddiuyD/Th+Mutu8il34JdUOXEONjwf7dUqbrpTxqMha5A3RhekLWsVP2ZDkQAQE260X0Qupz7JF9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgNYURYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgNYURYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F570C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727201153;
	bh=MMq2CbL+O8hZfK08YNbk9MaMzyh5/Pg6FusCuuHxB1w=;
	h=To:Subject:From:Date:From;
	b=jgNYURYArjq+sPyiEpkmM3c8ic782sncYOKP3YI0NsZSakf/y+E65QrJaJU2SdQdv
	 Zkuto2iE0rAD4WdNcm/GaFbYsnf39il1Avvf3ysGbb9KOnJmNL8QTqhBK//BrtJyB+
	 wjYD9TCLKggka+UtuJpZiIIVZSbu8JkNFAdEqRg82U9syMjZ+bV6TSeGy8bc6/Tx+m
	 BPgPXYqi4syhxNNi+ubBz+62snLPo7Vn0+rfHq6ABb3tFjYEMaeC3EDw2Z7p6vElbI
	 SybZi/1g7sJavvesaTlYyHrS0T8q4ndif1yK/icfnQViDd0IoHFR2BAhPI44pePe6B
	 gMwDqS8rBVzJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91647CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720115358.8818.17703335843258746616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de956943b7bdbd574a426487b15ea9bc89004aed2ab80925402087458562d97
Date: Tue, 24 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727201153
