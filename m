Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02F25CC79
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780128814; cv=none; b=Pclq4+XqoqNqntPXvJLRFPEl/NfqvJql/I2D1g8cBYJGZRrOH5YlLNeVSUlW2ycA38J3gLdxxF+M3C4IudX1+5pb7G60E6R0ewGiOoetXucnpqimEqF1Cgbj8Dt0m4OnRzKUEtYM11fEXuWx/H/5v9YHb2YlGN+RCakZVLFjckA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780128814; c=relaxed/simple;
	bh=NlAJWuOiz3E48DzZRgVc/4SIaq1PorMxghfUD84DQK8=;
	h=To:Subject:From:Message-Id:Date; b=ipCEy0/llU+jzbzq4Cpk0vlDpQMfvl11ejPzIOgBLn40scWVJJeANB85kWMelRBGFcDsbV5fw9uyKKvOqu03eKzJDI5vjkcnVkrPBUvgYkMYSQPyFrsDgd/dNK/63ZjTAEuJxtWT1gFfZKyETE3bq74AaQ4ALXmJVYdtSZGon2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK8O42ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK8O42ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1439C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780128813;
	bh=NlAJWuOiz3E48DzZRgVc/4SIaq1PorMxghfUD84DQK8=;
	h=To:Subject:From:Date:From;
	b=OK8O42ouY+2tQk9EX2VAEajXL2Qur8KhVT+oF3jJcJjJZ3PgZADvIOOG9S66lvPb/
	 RVuEe761RWHbfWLjxkRyvlqC7vJ83efZ7nAAqxTVEvjQsV//dzvs1hL1CLTU2JwQkq
	 Likigf1GBRpPDHzIGYmeANiaG/l6imomiCLYCY6lNGALa6r5eltIFd/hh3yBZxTHjt
	 u93umrwVaFDuu2uGrHYJIgSvrzYYD7R0GeWzD+SHp9kGheyrFStfWUD1KaUK/9+1tX
	 LkedgHLPKicv56FJCADf8C0dCL9h3f1v2PcbdMdmtOQ+5yTHTfynFICNCMVGykMxsF
	 /LN1pbWV9Q/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A837ACD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012881368.15721.5537477122940412651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936b1ac084e793620082a4eceae49c17a0653514fa049ed64e21bc91d66ef0f4
Date: Sat, 30 May 2026 08:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780128813
