Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2A21514F6
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747030794; cv=none; b=koJpb3mwDYfaOawWgyFSCC1DSdodtENZxD+d8LCNeAU7f4wg3dv9SC7XrTVbpuiUkYO5LdptQKZwoZLYhw4C2605xp4iXE8Dz3X06o8YL3whyiYCK+3vHgyqkucanya2CpF4ucgj6+7VDnhKhC8PzDSCa1c7mdfJuNviKS0elyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747030794; c=relaxed/simple;
	bh=HpvwdgtDs7QC6tFHgPLSPN0nhmvUSWeH7K3HF4rik5k=;
	h=To:Subject:From:Message-Id:Date; b=kh3r2xvLAiXkPQywtgUjAB1fiKDqEFZAlGHRAr8Nhd0aJFc65UqfjMjm19PnqtV7FHQ/Fh7+YxADJT532YNpHImCrPqUNAr07hr2r7cybZWS/nmAb9m80YnFfpTW60EX9yYxpOrmiMvCDYRK+2H7WEaQGlG7NmFbeEdS0OXhcmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRWsOf/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRWsOf/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F5C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747030793;
	bh=HpvwdgtDs7QC6tFHgPLSPN0nhmvUSWeH7K3HF4rik5k=;
	h=To:Subject:From:Date:From;
	b=tRWsOf/FqRB5nrZyNCEbKJ/fNNRZG9Ki2tVFbQOSTgTzUx9ox7YbQ+ecbCh61TdOq
	 YAvQytqZv0eufltpU9+/DuoR68hFMaGLf2Jk8n1Af3cMqSNyb9LhJ7KZfMNLjePiQA
	 w56E/QkfNMevfi4Mb/pmVsHUAfWRvXtkEvtQtIjdTWb347StYmC2c61twn9B07IRIE
	 yydL573nP/PRaN7tcAghmXQYwLu+FiCCHYIisp+icxc1n39XgN9LREvoHEjIhm4Vvo
	 MtXIPIhW/UcZkbo1HXupfcEu0ntVfObQAohH98Ep5NKu6PvN/aj5PqIMyNYC/Kugg3
	 dViEwnEs4t2Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24FC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703079357.1248.1872497557447985573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e9024ddefd2eedf912b1cd6769a402d4cb0443ffdd7d8160c8d79742193de0
Date: Mon, 12 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747030793
