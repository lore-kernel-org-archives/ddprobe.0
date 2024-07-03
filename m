Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5503C1850B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720029923; cv=none; b=ChzKz+XJgJI4cu7sUXpkaiFgx5sEckisyueypGfDPLkKASIsvIpxfnfv32a7f0JfoTnWXEzRte1ckaTldNyuWrMxlOIrc/8MyU4dCdpcAoMnbAp2w5GQZfSXpeTlFHMp+bYxwF3+AUU0/uYeCEDFlxuaxtme7l0wzqYaenZufZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720029923; c=relaxed/simple;
	bh=prg6ERE17IKveNgu+43xcMaNSUjkItbdNyAgGEqbqYc=;
	h=To:Subject:From:Message-Id:Date; b=tUz1BMZFlqTvGr9jYZ8btLpRFciSxglVedUCwqYyt6fOc6R5XIa7fE6mxVx4/oEo9y8TaUrejH0li2zjyVELmBq5TEzvZ8Pp8rInd9ufTM5b7DHuQtZ1/MozvwBfb018oNfiFovtCcNP5Xnh3SmOsTDMjBBY7gp1MSNTS62LLNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9s/xDuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9s/xDuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7591C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720029922;
	bh=prg6ERE17IKveNgu+43xcMaNSUjkItbdNyAgGEqbqYc=;
	h=To:Subject:From:Date:From;
	b=B9s/xDuLFlJHHMPTFVmJOgkuc62dawoGK+e231snq6xU1R9tFaRLEkFy8hiDeoVfM
	 0XV4b8A9jPB1dpB4lOYdhBMrF032nuk0UWWEeBCAwuU8VwTO3yTfkelj1ow3fg/7He
	 S9lHz6hCMITc4TS90AENkbwmk4VAAOxzKqA0oOs32LLKJRLOLg+CCID46MJUxP2Fu/
	 5f73SULP/MQjk9ibGztIckzEPHFQNRVZ+F6N1acB+Sf663GbY5D658cI4SnuwriLaE
	 bkcMydWJWqYjJsu8q75V4SLknxMfNuhYpENYQGJswipNy2H1sHW5qiw2mmNpcLAOjJ
	 eMl6m+9/bpVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF345C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002992283.16548.14716529343406666711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ed6a6e0ea91895d7a9f46ab25e4a8780688658aa3e2ecc5a6cf484b24bea5f
Date: Wed, 03 Jul 2024 18:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720029922
