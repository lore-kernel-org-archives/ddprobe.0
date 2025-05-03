Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4503B2581
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746235795; cv=none; b=ajr1knzi7hT3/xCLNiolvx4e6MtUaINkZKnPiD2gKYOrLqYkD4zXIjYV0hJLpySjiXo713eU3wtsE7FXWqgUnAOHHpScl2B4YF7QPrOd//qBl87D/JJSKyIqOLj/h033L6ir21WkB9wXX9OVv6zVzNWl+v/yXqQMywFq03EZEgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746235795; c=relaxed/simple;
	bh=MbDchDfsD6oUFQh/modch0JI2TPJGPppIlYe3mGDmjc=;
	h=To:Subject:From:Message-Id:Date; b=WDEzpY9r0PqNX+EaCCO3NMHIxIZgIxKqfBYkvPFok3rU8qZNLsStFsUx6urXfCj7TVjyGA7iwPsWJBmRsgr48kh8/QCFZ10D/BqvQC+vFhU+Mqm/w3a7HDhGMRg8hg4wwRw+oiDZcpp6N6yiVanVDT+ZMPE/H4xeAkpcMpmJwu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RegPe4qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RegPe4qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8231C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746235794;
	bh=MbDchDfsD6oUFQh/modch0JI2TPJGPppIlYe3mGDmjc=;
	h=To:Subject:From:Date:From;
	b=RegPe4qymncPZQCS3qe/WdsOr9HvqJu2Z4n5FH0CZAAv1+OViXLNa6+zoGv78SaYZ
	 d3jFc9B3uyWKuzbOSNr11z+ppeyIqE4SV5bi9rbgs7hMi77yyLiNAEJ++akCIPoga/
	 XIsj0H9VdGY35ouce4gGVkFbjoCCpBh4sIzpWKvb6klRBjJpDG8aqukiB3GVCY3h4J
	 t59VvGsmCTwxEHKIS1k8xH4+Yv+G7Ak9QpL23YmBQy19l/LTpT/qdgqwD/cWG4A5zD
	 ai1akMFJxCMtI2rNLo6VQ1QMKWIwCh2yZLublto29W/JYj7Qmr2tTJ2kskuII6jUrS
	 9bRPMg0zH3Zgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D8C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623579358.18160.7939307780111769253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847c7ea212b28d14c8199339ee2c7ae9d3e05112b31a6bdedc0234386b6ecdbd
Date: Sat, 03 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746235793
