Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4B7198E99
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721124923; cv=none; b=UJeWSHr6NiT8BFNJSBA93DFk7X3fB4kjeumwWo3kpOaizw8eDVVGVDcU7KlWRtyE+XGnzHUm7hGfmCMUWfJ5iTzm2ZruInefT3bkgsr53ul567yw1UvlwobYIMJHuh1rZtbXcr7DxNMATLQqDCCuBuPiAqlbWAv9twTo85u2EH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721124923; c=relaxed/simple;
	bh=/IHidfK4RLA4UQQoW+Ektozuwt2JI17tkgtLgChso3k=;
	h=To:Subject:From:Message-Id:Date; b=Y8V3VvmTi8OjponSdOza78+0knpCswhHNXB8Rg40J+8G1skInZOTj3EitTzrErKti3xGe7QJlJvlxaM7gqNkm9VSHNjoeDPw+1PvTysIIFkZR9olUJubpiwFIap6rgwBqEv7vsSYBN05FxSW8bqNnRk+o2/huSk+Vmf96zDWzHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBukO9cB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBukO9cB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C7AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721124922;
	bh=/IHidfK4RLA4UQQoW+Ektozuwt2JI17tkgtLgChso3k=;
	h=To:Subject:From:Date:From;
	b=KBukO9cBHAdASqkDIVT4qgQf0imt/0giGoT8nvgM7B0THNrw8EsuvKtxjewWWYU5D
	 26BThukcGtObsF0cLgVw5d4wlmybjUdn30OUlI4ECCDiNAgQJd1bf/Sg1oQMFkvCes
	 HY4UM4ta5mMQx8uByRByEVdiBbLjMPs3Zo7o+1DoB3IMAfmO9A/vgQRAyJSOOGCkN/
	 HgCskLiGQsofYCjn5TDQNH3IriFJhHjUJiC9bKCl4KjBjXiQGV5U5kzWMAz8Li/C2m
	 oL8Iuarcv7nHQUaKeYZ32oL0OCxcJZI9hQCVjrdq7+x2O4Fb52GFHMJmz5PAxJ7rif
	 teTJn3eN/1zZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C34C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112492278.23225.14163618039310939744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d99c348ce46d02a1a5b2d75b610496fe22c04552c68665e142891ea24750f60
Date: Tue, 16 Jul 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721124922
