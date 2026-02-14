Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300AB312834
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771108494; cv=none; b=U/8k/v7J9CLDmxij9UjYMrv3yedBdApMwJAFx9amWEJaaymntc2j+rH+QlMgatSj9n5MMlu8+Jvf4uPSCnKP81v2NkMlyNV+owa/3bk3BSB4bAM0PookJTRrfPRWNP9LqaOVxyIgVet4FoXcTP213qwcb2P8/p0w2NBGnZguJvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771108494; c=relaxed/simple;
	bh=TfyGT/i+296DIJo32n28BBGvT9zTz8FwHR+JIyJiVZM=;
	h=To:Subject:From:Message-Id:Date; b=r2fvCtD+QLXBc+PwNAncjtzblO3cpinwJXClKVFccSpMqLIOXrJbg+2kCVTJnswZ6yS2uXtVl8rPHyQAiV7m23wvX7dvGBj3nJJKKWuzw6YQlia8sPLfmdafQ78SGIZs9DJbmXEzZBbFbZjnOvZ9VUz6dgbfZsEpuod3/Msg1ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfd5i1ZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfd5i1ZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C297AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771108493;
	bh=TfyGT/i+296DIJo32n28BBGvT9zTz8FwHR+JIyJiVZM=;
	h=To:Subject:From:Date:From;
	b=mfd5i1ZEo9mi05kN6JV6JEUI+lCGOEmEVBua/ia7ADh5BwXKWLldkEX0tpuoDtFg/
	 asNqNpRrkaw5syA33KVx/g3A9Iq5jnTBt+5woGo35kgq+xmJ/7Y2FPAuvvyN0ZMXEJ
	 boRtzBuumgrtM/ZJPF3OCLeYmDnRgbJcI1pbCG+gXsEzzPKi88OKcNdLfDAfNrBgU+
	 uItsSYkyHnwSj9jn0kBNgXTjCQEo6SnZfIY662/UD9UdJgbNOCsHFAlkuA1KK4/61d
	 Q1/2BX5HabM7nwFNTXeGtUjZ5scEcXV2aqEFF6iRhj/QtqMEnfX+dwaIqHSym1vILa
	 TdB8WRXwOeKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2BEF5857
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110849364.16140.7985425462287419419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e2abfc17cd88244e8406f26b96b07265817cc4442fd8096e793b0dedd04ab9
Date: Sat, 14 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771108493
