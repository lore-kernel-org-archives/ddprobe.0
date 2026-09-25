Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC1049E5FC
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790341234; cv=none; b=KLjVXx3tXNMgm0oDaXkemZUdDxv4kv1V9q/ZfQntgoysj61fHeTQ2QCbVl2MKWveAOIUBo/fwoL7GrvIb3Nc4wE4+2Of9qMe3HIyr4MnYuw2wRITu1KQz6sYU7aSkZRzr0wR8TrA2nUvuwUD85a3u9xKVT/ki8ezJrb9dc4hKmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790341234; c=relaxed/simple;
	bh=cDkHerbX9ep+NNBMqzLxk4KN/GlXDdNvrZmjkM7/5FU=;
	h=To:Subject:From:Message-Id:Date; b=MJHqlzmEnf2AqvKLu+03KQMzGF8545otHpgtcMG2aOuk/x7bHXSX8PWHf0dS4e6CVghgGbRfhzOdvmGLZloEukBrOZLSAvyO2NwKuURFrtLD/6+RHEoY29l5gH40Ql6b+OrpC+ZLJzpYIro73T8dooBDHTrCEjHQ7OEJ+397V98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU+jZfLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU+jZfLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE60CC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790341233;
	bh=cDkHerbX9ep+NNBMqzLxk4KN/GlXDdNvrZmjkM7/5FU=;
	h=To:Subject:From:Date:From;
	b=sU+jZfLXyj+kKuS+dCquHaUQet0dj+HJo0Veou2T7aC8rktIN68ppgV2H15f788n/
	 UZJeH7wez63NEx6wvn695AT0oxF2GRd0KgHNotspyxDDSipQXCKaco1Uf1NmZgRq9w
	 PfuRsjp2vARoetHXiqd0SsaJ+GQCWk/ajzZDEyC6Ly3qn6RK3uV/4QTvhIgCrT0Ph6
	 5vmZ+3u/LAiiz2rGS9zuDETyiccWDEGfOySOTBTFaTNM6aYgQPWgT8fq8BIRtgoqfS
	 TYNgDP4L4twlNEvtMMpKmHqWK5w/AnfVJizCm0lowY1SizfQ0aifLhVzSXd0p6eJvy
	 uqMhKftQUG3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D7C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034123369.20262.4659786664614758424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e1d1851f7121357a15da9c926b9db7dd793b38bf8e00cd8e92d7ec5b2a146c
Date: Fri, 25 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790341233
