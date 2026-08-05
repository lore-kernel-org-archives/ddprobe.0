Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B775424D69
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785949834; cv=none; b=Y0IP3OylWbbVy+14VUFrQK5Spgx1fs6PnVAIE2KRQiXm4NbsvzhEu+IGJ9kqQJCZnzaRYIpn3LiNq1/8RtZcJOVDCxz/1HpbR0f0Lx4tZLTabVaip3Xhr7TZzRMcB9VnOhNJ+gbUlhiA9K75wAbfOFDu8X6Txq/iFXGYDG5urcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785949834; c=relaxed/simple;
	bh=7NpJ+YipzWUxuNFQVzsEZai7bjMgD8ThBlK4uRh1NgI=;
	h=To:Subject:From:Message-Id:Date; b=TsYP0nJxQzfHVES68u7VLiBVlk/pwfmfaxrtbOgHb6rxX8NO8CxnG0XlHsq49Dq7v4GaQb6BrFlYyervnr6ZyzyzVF+GYYLAcBEBm4vR/mgr3P4E+tHuCrwLHl2GnOj2wk0Ty2xPOHihEgg7+fX2HVhA+8mCXfdjitdQN7HgvRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcaNgeL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcaNgeL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56A3C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785949833;
	bh=7NpJ+YipzWUxuNFQVzsEZai7bjMgD8ThBlK4uRh1NgI=;
	h=To:Subject:From:Date:From;
	b=ZcaNgeL3f1dAbLWFm2IHVN+CyCYPHSngBYPcQp4JIu4KjoK5kxoafrpNB9kY7vdhd
	 XVDETbGwzxg2svTR3mXM57viifAbE0GAe9iLge3jUqfApgS2rdz0ZTV172hALePgSM
	 P86cUrr2oFFW9LXdBtO+6se2cL1vd2mQo5pr4NXXt/EQTaagVVjv+rYoPcV39a1Ppl
	 XVofjGTZXFrh2HEl86AvTCtJEStFC1yT81aUiz4WlEsazlB6jg1NZfIZpJs8MLg5RT
	 6GJrx4EMZKzPoqiKSnSnpF1qSb0olFdU+CjHWsIUgWjeV1XfDUFP8r2Ypx/esQU9Rj
	 xv9yTQyLymOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AF2C561E6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594983371.10561.16104779258232302160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6547b1fda3c188756bff2abd05e358c5e1711b6a80c5c4257234a8236bf38119
Date: Wed, 05 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785949833
