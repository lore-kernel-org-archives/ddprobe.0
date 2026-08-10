Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584F93603DF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786383034; cv=none; b=MYTnYZJLsg64ZYiHEbycxvnOz2x8sAf80bXmxbAiafs9FyLfaINhAzNG9DqJ2K2en0mobL5lkoRfIzDePRoXLTJCrszw7LPsDFWXoNh14n5JN8vm9TUo9GwdhVnVVRzmSicFF9WfHRms/xk38N4O2BsgidOHu+oCMvJwnJCDLaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786383034; c=relaxed/simple;
	bh=7iH97qdL0US8etCK1XaMap27+U2F08mmtk/Lx5bCIWg=;
	h=To:Subject:From:Message-Id:Date; b=IGneEqytjw9FN0vuDIyOhkvZw5xwFVW3MJfCPG8wYMkU4TTREUlWmgPrIuZt4B2iT/gvm+kS4HkXnyqAoIhgxt75TGW1kIUkBfyisuYp+oBlpRN6I0OoZ2fSwtSSe+EuywqBTckS2zNRuQv1qqGX2mzy8DRTuSN4OtPd345ieyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzzEyjbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzzEyjbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D8C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786383033;
	bh=7iH97qdL0US8etCK1XaMap27+U2F08mmtk/Lx5bCIWg=;
	h=To:Subject:From:Date:From;
	b=BzzEyjbf5QQvNZoQWdpwRhF09oMFqmKPk9lsU9ZkKyH/KmZ78U/o8PiGElSAirJx1
	 UbqIhVuCnSVE5B1o6VLHpRF76oeISLSJoou9Y9taD0abjNXHdY2TuwSFS7/3RLIMO5
	 EDdUz3sXw6rlgkoW/KYip0DV14kChvneKZeGm/vZP3GtYelP1InQvdz+TQmlqONbxG
	 JGmGkZ0+K+Yv9JcKUvQd030pSUzYyfpcC3BmxOVuiKLjWXQiatodpknkNvqJUvTKfY
	 Rnvx13Ruft6ZVFUbsQI6YVtP9aaOZ/w3vJ0SmGltrZ6lDEIF5wHi+U13r2VWMo8aIp
	 K4RLh2iaQSzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F5C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638303368.6394.9543886704164719688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9049b595a9a72c5743a9fb85a9a8106126937552c1be156a0fa728df1d4412
Date: Mon, 10 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786383033
