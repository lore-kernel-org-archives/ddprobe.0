Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DF9288CA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761082194; cv=none; b=gnU5FcrWYyNjJ4AaUEUkTt37wcIVq9Xt2DTUwpW7cVVx8N8IzvzNRO/GRKjSmh8W7LwxciK5JeFMC/i4/8MvHFQAIN5j2sW9u771aZ8LqbnMg+4FTXzlWHop/CEWjplwhFcmDgIS+jYfXtdPSt7WqjWTCA/A0RRoXgWYeGzrBSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761082194; c=relaxed/simple;
	bh=ld4J99i+ZghQWL/sTQQGpX6WYecXrQBhn/PgqwB4jBk=;
	h=To:Subject:From:Message-Id:Date; b=J/6Kt1UmBHFlP3UoHpVELWRFjzkdMOhtKFH7w98hioVVs7U9BYw2Gg7xF6h4V/wyP6XVyf/pDsJFr2gIF2Ki3BpOVWlnrXxpHt4uu7lzL+koQlaoK00WJp3TUrkb6E86+NOcNiz3IrgsYOGyRk+zlcc2elKTJNdyUJJbbD09vfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cngWdMRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cngWdMRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E37C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761082193;
	bh=ld4J99i+ZghQWL/sTQQGpX6WYecXrQBhn/PgqwB4jBk=;
	h=To:Subject:From:Date:From;
	b=cngWdMRRmRzcOfdnnxsFL8U5Pu9tGGJfmOZcS4NuCAhSbKxfBZsAYIIwpqP5Eikqq
	 15j1iyhYcKumtw+V0rzocxRbxfZU4NFNJRfIN1o4zcaPIMrUrAYoIa7qXIguUQ6S9P
	 wYRRTB94Ij6F2g4w3vPZ3lW9jxzt6BoZHJIqjy9YWVDqGAzG9njfALXSgS+ivkejUX
	 1P0CtZCAm0K/fQp5BFa60Pp6ZlcP1TBpMT4HRnXxcpUlF7IFp66xLsz1qUKxFNxxxi
	 js7lKyd4ivCpuAmFdxTgLPLB/nBHlJm41zZRjqMtTK3/2jVMraYn/K2nFx5as1F011
	 rLCbXi/xY8UwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91770CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108219358.10806.5170902289832083033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf22e615cf9f1be2a6e2bfb2e0f3ab821f2d1c0239552ae755c19480bb191faf
Date: Tue, 21 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761082193
