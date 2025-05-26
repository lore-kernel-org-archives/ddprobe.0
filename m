Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F15D29CEB
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748263794; cv=none; b=BYAR3eb68NT3wMoE2lDvhO3dFMTN+7tJM/u8Rvm9lZHjyZLvUmgURMFFifrx1BRTT+67QGdbnK07l78DfKboCwh1SNqYoaCYS1hWKWAtjEgYSIfc9zMu+0+LheA6AwkMxr452ek45PaBaPTJ5BkDFsoRkFn/z9LYSg90GLlwU04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748263794; c=relaxed/simple;
	bh=M0aAsfs90UzdtXIbcu4dGfml+Ecy3q/DQiQitroA8wk=;
	h=To:Subject:From:Message-Id:Date; b=eSgbSO4geIpSsvOr3IMgaG/KVfkJa9g89Od5fGADjOpcKrahlwj44q6SXkK83s43CDLL0cStWv3kWBRXSQFz8905q1o4v2BAEKgJR/Yn+fE0z9WdRelL0xU0RWqcBKVf6tiWLaYQpRt6Vd26fzd/1pnM4fRoxxGNJbQC4nITHtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NReBK37d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NReBK37d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FD9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748263793;
	bh=M0aAsfs90UzdtXIbcu4dGfml+Ecy3q/DQiQitroA8wk=;
	h=To:Subject:From:Date:From;
	b=NReBK37djmMhLs/OHvvFbYG9lEDXsnqFz+S0v2n0TZ9UtYZoWEoGrAr0v/RcS1F+i
	 GNfee1taYQbGGoO2xWatjFimDBwb5GKkMrvmCmEirunlJC8ZgSG1qHOX3/YQFnVIMf
	 czXlarcFwlN5A42oZuUomcnUsYSlLhKVnmHxvaAEkOnp9r0BAaUyxJC9kq39UUGmVB
	 yvltgmsJyc6yk1LxuoPxmjuzlW0snzijwvhQoSOLKbafNDyFPUXIY5+XhiDkE9nReS
	 lr4aKB9SzTUEqbgtqJAXASyVAoW6QgxPS1ZAdid9GjOSeHLMBBQ0H3rWCMH/y3EduG
	 BPaUlfYl+cmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95895C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826379360.26157.10596562610005266099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f795548c033a9c7c3cd9f47616e08e73b6c57b9340883e6a4cc06171849e6a66
Date: Mon, 26 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748263793
