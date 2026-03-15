Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0526837B016
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773606894; cv=none; b=bpUGI26Y/mMTLS2Yh2smajzZ/rGAoEWfV7HqIa7b+wVR951idaUJjF3oOtD2RvqsQKthFgyaA4uoI0zxDuUrjMmw6ztrDpvuGOQglCAKAlHmBwWEHiq/Zzgw4cO0zbyUti073rsvPFFyev4nUrkOnl0LCJGupEJeoPgDFftvxR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773606894; c=relaxed/simple;
	bh=DTQiVrGudpvPa3HUugYw8VXAOdhmYt/tracMogx1IH0=;
	h=To:Subject:From:Message-Id:Date; b=tHWanSuqXwncMMtF6UNYdaY68cHMsYg60HjCnXuktBp7E924MPDwLChV4CIEON5NiLNLO7Spn1VxQsN8yAAlBYZjazq2EhR7sZYDRMhk5AGVohE5j65eAWj0hS/HHH61RUzP0Z8myMoef4wuozkiLFDwhSDYJoN27TmDJ1hJzXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPbVkupt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPbVkupt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38CAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773606893;
	bh=DTQiVrGudpvPa3HUugYw8VXAOdhmYt/tracMogx1IH0=;
	h=To:Subject:From:Date:From;
	b=OPbVkupt41UlMYvAey0CkXsy351PJ9+g4fYZYxg7WUtgGE3COD6Q9j9e0uBozyLqe
	 y4I+YqN6/bZm7p31FJv0JZjP8Zjx4tStmnmePRNVUPHIO88GfxFnqWCyPPUY5l5BLi
	 x0R8Dj68Do8omxkLLF9pnryQhZqXxeDiki+rhYhCybddolG0hZrX+ovaIjJ3q58Zqx
	 0MycfiInIK49lGXztKRRu+KuyNdmeSUDk5ZfmYTZYu/mE87GvZYMwXfAB8IZBYqDMk
	 7BdRQN1f/oGRSbWbP/8nSmVFm1cHrAzi4KpzxeKWLQDoZpqbr9t4E+NRtIfzCFa8d7
	 0aWTvULADt7cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95035F30284
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360689357.30414.17466271007329391823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c12fe03d2fac1ca905a3be4c867461d5dba670b68994f856b43c0325a162b46
Date: Sun, 15 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773606893
