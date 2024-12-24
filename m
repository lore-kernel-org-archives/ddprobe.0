Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6183224EA
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735071953; cv=none; b=JFbsMCvkaKiSKcQg4qM8zAjNeQOs7aALMyq9J0JQP/AhQiRjE3glUEey9g8dZOnHTm3mrG0gAyOC3BBTsajBV3Hp3DSvqJubXUMMLixvrWyofIEw4jZD1Ur8r5nyfTBmzfGtVA/XbZjfZVMz0q77Fd533hN6bU/wywRc43vth7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735071953; c=relaxed/simple;
	bh=zzatuZWvqM8tuVUDeupfIK+RBFxaQ4a+aHU9xXHyAUk=;
	h=To:Subject:From:Message-Id:Date; b=LGuC9e+1t2hs+CKkV/C9FUcx023A//VfBiJRefLDHJi/0s9gewmHmIjTiWSkGoGMEb09zh8+J8bT3+0VqjaRjvHp05mUT+rUWY4Epvt0VnjQ4tHkChsTY8nu3dGu2SoftKwh5/2BGADTqvm1MgAYiaqMm87a6ffUjKlx4eQhCFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoYd69Tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoYd69Tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA81C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735071953;
	bh=zzatuZWvqM8tuVUDeupfIK+RBFxaQ4a+aHU9xXHyAUk=;
	h=To:Subject:From:Date:From;
	b=PoYd69Tr6quqY6W7k68BQqURIFisPUg5OLKiCiQVkdPzYYKyWDh/hyt5MxDN+/DGs
	 2ydX0sz8b0N6zv0fqw2ywjmaO8PgvJrIpfXWp36IwDsYtQpdPcStUyxhvd26fikWTv
	 D+8AgAJzm9CCqTHVD5Ipvms2BIgReRGkmC2znxNSJ5LtBUscjvtaT3lDivUg5PpC+U
	 XbqDT4RgyGMBhL5wWbXxzujYgmr2VpRhrXC9jrw+mVO8DHufMRDYJydE9BWBQnHlvo
	 1QT8CaEzUhqCsNdEDbQe4nIaVJquG0QMxQnMXRTMxLmy6zNvDR181RKRAdjeLTxk82
	 7mKGNDa75zYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99217E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507195361.10150.18102648240064424256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4d72167ce8559523df342ff30ce536687f3c224edc8605e313fac970ac0965
Date: Tue, 24 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735071953
