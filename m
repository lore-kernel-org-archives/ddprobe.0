Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B187E352008
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779229234; cv=none; b=ioICjZWb4XX0PFF4KMjHyzNagJfPeADBXRyyiwK54gDS+7liNHHQbnnx86xQE3F/He46wJrM6mN8rBhdnscPzVuptdAcpcf9QxxBHAB3zd2dHEPvSJGhDVyYu4upGECopWQx8bYbTVtr2EZ8wuTtzuFX+XsxulyK78NxXN74IMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779229234; c=relaxed/simple;
	bh=i9WLOPGfBJ17YEFG6r8NyyV/fg1QDfHqBg6D74moWP8=;
	h=To:Subject:From:Message-Id:Date; b=fcjl7eDVjVYq8E/8MWi7jEdBi0pt6AbavXVTWah41mP4cB4xZl8FLyOzFQAFwMpw5frngs1psAn1zuCE3F6fQdOH2kFMBu9OppZ9rbac5LORzm4fFlDHs7LhekE/9jI95mhXGvacSDFVRRyNHP5HedzrJnXYs+goL+JSpHu6Tvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfVrNLxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfVrNLxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39E0C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779229233;
	bh=i9WLOPGfBJ17YEFG6r8NyyV/fg1QDfHqBg6D74moWP8=;
	h=To:Subject:From:Date:From;
	b=FfVrNLxRub/oKADHfF4wO+QsEJ5iVW9q9/0fChjI4Z8ArhPQT6QKOqZZCZxEZsqv2
	 zYAnXrAkSKHj7hYBB6z21aGjitIyVm5Brn1/crikonMK8Antk2Z1v4ze1AaF4HyLbT
	 Sj2a9MyrsXrBaI5biMR4CHIc7LpIwQtOJOXuXVBvvAyuXvtRVH0DFRZdPjxPq5hKEp
	 +Q3EW3Vu7walgTSzbk/8A4XdiaVybXm0tXR8oPv0jNTJqBHFSaUi1pz9ERCUdc8irK
	 +E6pEjPwQPP+JMnyeuq4Szz8fgsq4Tm5xd6Xgi3KVgpMWgQDMQ1ZaqwP9moGUs/PKN
	 71zBAcgERO+IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA65CCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922923368.29984.13559414613208225491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3169a1dba27f427c7703af765f696f3d3c65e99e91b5b18705c6052a41e9f9
Date: Tue, 19 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779229233
