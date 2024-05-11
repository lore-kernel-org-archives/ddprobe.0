Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F4F502B8
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715433743; cv=none; b=o3V+r2dBjsfEV8qX/Gb+XroYwKIIyohCUf33+iJvRnbs2L23SaB522Jnz3kca2Xb4M1HPZ2oNJ1YzDbpqFeCf0KrzdPaRf1uDvedms2tUij8rjH+hxerTzZpEyfoRUrDUn1kd2eO3CDOuaZcKIfBCJDjnfcfcQ6VJpPB6iJoGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715433743; c=relaxed/simple;
	bh=nmaAlfVhJWFDii3qQHvhaR7H1ZT96sUenkds2v6O6eU=;
	h=To:Subject:From:Message-Id:Date; b=U60qw2WYCUelgFMRL/jA3CsNEd+NoJHP8zrwQUp+THyMPjz/Fudqbj03prmsi7YC+VJI63jgB7xLF5mDX6umCC1LPtAu+eVPuAa+K6Ob5mL/ySFO8XDXElmeT8842X3GHuKAv+re5Ziafu0WSxcxMsmDobrxYUGIY06Doje/rME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/N6Ik3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/N6Ik3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7F6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715433742;
	bh=nmaAlfVhJWFDii3qQHvhaR7H1ZT96sUenkds2v6O6eU=;
	h=To:Subject:From:Date:From;
	b=t/N6Ik3e6Y0x2FedNtZv6vQmnKzv8ZDJ1YunDPgbkj+L3B8SSOEBV6JSQ9zQrTFJ/
	 p4DOntWQdXgKEvlwJX/N/+mXsgMtob1Hvquiv0OJbhPkJ6ZjTgVtndo+QzGVEU2kc0
	 SxCR2W1008O9qqdz0q9C8nvLCpJ/6dOyZmdP3No8W7HgsoC6zJlm8Z81t+kuAScjIF
	 zVUaBbwyit+KNjUrU4o1a16hNUHd/Gj7EpVOKMNB8vw9Op3Dw37we3hAZTSWvD1Hyc
	 ZmgdOfeV/6DLd34I1Qiivd5PCQCZx9jE5IL44vB2+Th9oq2U50bP3qm4OgefML0GeL
	 XDl8MOkxi01xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C468FC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543374276.10089.378243299245354078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f03a2a3a6c60683f9d8a6be08832eaeb08b92e9853183990222ca41fff90503
Date: Sat, 11 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715433742
