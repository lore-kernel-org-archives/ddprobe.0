Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD132DE70D
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758654593; cv=none; b=Pk/AtqDAaKh4oe2pJci4UZr6Dbt0pujfkgxdJ2tkqeNqkX04njlORNTUhmfkhLfqM4+pkKuyp3FjtGtcIYkxuHYdPOZb+vTSQjB+k+DeVqooNfnq/+iP+fSBmf4XZx34HvksD9fJmg74H1kUY/S/oFPiCQ/GFj/kyYOLoELA52E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758654593; c=relaxed/simple;
	bh=4ApYChiDGJfq+kGzBBfGQvt2HlG1bWjI81ewMK57Cvg=;
	h=To:Subject:From:Message-Id:Date; b=UKW5aKD+IRRtF6Ng0iJSm7/3ZxPVbRHSNzZU1nUPQtLbBTCztrIWrfCuGTS5K8ukejrB98FUnb+xd6izzvapQ1Uf8r/9ToOFeBLoYu5/1pKQYQP/rb3EW69W8CPpMzrNdIeAiTwDufAf/B2fGX37FJNr8OX38TsLFEH6cfGEZeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8r9Ur3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8r9Ur3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E65CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758654593;
	bh=4ApYChiDGJfq+kGzBBfGQvt2HlG1bWjI81ewMK57Cvg=;
	h=To:Subject:From:Date:From;
	b=Y8r9Ur3DHIUfGVTjA6BE7BTfh8Fm5G6lRRcBA+imkNHxZ6XQLh3Yzam3e1t8qYSsG
	 tTQoXgrGUuZkTkRaj0mcb9j3skDPMOCFqX6mrlXwTEh1A8vqd0Hs+zg/oVVT/VQ72R
	 rdqwrCvN+wobVlqwYc80ivajWXltoVsu+olMXnZDWvEwHeQ8Wu+XHjpFMarELz98rq
	 hMYaZ7iAMbYc3J+zjkBnRWHNXDYoIhLijiazrmGof1FQ+5zyiPfyW2AHpv1yStlKlp
	 dZuOMbP8G4LIGl+7dH6VHHuIQWeDIiznFjTwc6x8Le0YuKCrjXLij4q/Ut7bOMQDba
	 PvB8LYQdRPxUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20CCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865459357.23571.6710759950252464419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f056b58017b9560a0a6f99efde83a8dcd1e6939b40a635af9d929c828cd047
Date: Tue, 23 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758654593
