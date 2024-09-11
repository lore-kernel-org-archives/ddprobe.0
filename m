Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBD21AC8BD
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726080354; cv=none; b=EXAf+nL6WTEIiR+Z//Eas9DgKxTTc4SAGC4RMDYU871Iom8R4PCZyVebv7C0CzTLRUNhm4eQCqbbw47LD01cEoBejxH7sEjxjbARStCfNpmZjqNbzxKu6I5ADO/IPV2EMQ8qZDpS7WowOBoy8HxIwdqrN1kxq88SGzGdsSeDnDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726080354; c=relaxed/simple;
	bh=2XpvXpLgFX+jHJuJSpy+O4AH+00K8u2fl+20G+UsX6c=;
	h=To:Subject:From:Message-Id:Date; b=VjUZaODNaythUwbY1OYNr2jtMCi24tq+8VtO7IncQRlEMeMDUAwaduZyFhZoNKRrrdJCa3i/6RCmpp3JEzVdopvrxwxshOMOjDJohqquYaRL6rJq8VIupxz62fjgN1sK1Ikrly5nelpvbqy8KBoOJXLUBYUzBy44Y2YSWiygHj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Njt9mLXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Njt9mLXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCA3C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726080353;
	bh=2XpvXpLgFX+jHJuJSpy+O4AH+00K8u2fl+20G+UsX6c=;
	h=To:Subject:From:Date:From;
	b=Njt9mLXca2VB/px4LoEEv6NuV0ParX+EhTuhztcYvkedK/kPBW7BBUUE8efjp0PuQ
	 jTJUfaXz1Lb/RyzR1O3AbDhjE8b/cd0vwiT3KJdNK8K/TRI/lT1/FOUD1Dh0J7smcq
	 jTyr40SessTyT2mOqwA6rMsy7waBApmeWIF4El59QsumDH3ypX4UFJbMLPLgLV+O0i
	 1Bn8Px7lMIvedkgaCaoLkDNlEo4y92ewpSAuW+qUhiKMu9pU9qp13CCApkdbbQmI7f
	 BEuNSixPnK//0GetJksFsRjDyCB70gzw3OtYhtW1vFbvUNLc8Sr/v1pJ0oNC624V8o
	 ur76FaaMLWZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C499EE499C
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172608035362.21395.3954199111758995757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb9b10e61dc4bdf20b56653137e2d5454b1f348e42de533ee2a917d1cdc921c
Date: Wed, 11 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726080353
