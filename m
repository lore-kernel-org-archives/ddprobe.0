Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1310E3FDB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706805497; cv=none; b=TXfTHK0uEbIwEj+aQP1/Qaf1F3vD8xati5e9YqQ//RC2cqv/VjVOOxsC1PyB3+v9onVgTDKiMa/uqFdqrdJ5RomBJXd21HxX9SUXTlYy0QaFOZ8ZosHJ4py2osp7OdLzCZpt+8hZZTyoAB6y3pUYXX/rKbq97G+3gFqxS3V8pmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706805497; c=relaxed/simple;
	bh=L6n1fp7Q4dffP4peysEROF5iU+XD8/Do3VPGC8klDNA=;
	h=To:Subject:From:Message-Id:Date; b=M/FG3herFRqGFZHHcZkvcpdqC+mDkE/1/31N/cCGmScO4WagDzkk5CVVGiJCuEzJnT8fwmZLqTvNaGi973brfAWp4n26MNVJvl/e5QSCi4lJUG8Jf7Fq0wsU/j1N/SeqBZm1/miGl0xKVWRfcmHaa7LCTCzaRhMaXCpNWJ7sj+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTl48awX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTl48awX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F795C433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706805496;
	bh=L6n1fp7Q4dffP4peysEROF5iU+XD8/Do3VPGC8klDNA=;
	h=To:Subject:From:Date:From;
	b=dTl48awXvinPwcpNsRlHSRh7D3PV52iqBZWATnAIaDJUxM1vkPXzEWOZOunuIPOy5
	 0dGAq+vd+BkF1JRm/H6KYvTn1PeQ3niki3uHZwrm0W5LMqm2xXY98OqdHuTowqbj9y
	 uaCftZSzeYu8uW4mFJgQHNXSOy6HPC6wUIZ0IMVkVCW+fU70ldUDp4eUbhdmslKk81
	 VSjNRz1HHCNeQasV4sz7JzoB5SLdbmPnB7/tvok47Qbv2RFEF9luwzJbG/hgRBLM6l
	 0rc6KbiP5cV8WkgIMVJLsh1BF2TF+IEzubcJt2DYZzIfm217TdH4qTHzCfALdkNsfI
	 GcvIqpuiiXq7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61519C48286
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170680549639.19194.6549169946759933813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e617959bad90ee3d0d8449b800591aac271ebf0e0cf4103e6a628a868e5dacc7
Date: Thu, 01 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706805496
