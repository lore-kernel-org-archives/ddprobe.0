Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1E33E959F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776181654; cv=none; b=OIGsFrFeHeJO5zJZPdeV4tR5pRbDKkdiTN9g/77ApXLYgiRDD6pn2Vh5WUJiTP9xQJvRDzbbvZJI6iX66aVbRKp6iD2PDk/sFodNliq3DyjiBaXGsICZqmzRZYDqhednrqlTISdU2XZAYqXsPtCLk0r8G8ckbbPuJmu/IgQnGJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776181654; c=relaxed/simple;
	bh=V/wb8rE9yef7DGBo/8P3XL4tIvyNiAoGzHho61oYJic=;
	h=To:Subject:From:Message-Id:Date; b=fau74v/L5szNFX7vumnPtkx0R7AViDm3vmkd8b1hmHMRJweNvBnEjIFIwAh7gfJDrGdYEFroe0QJOZN7nKDupzHC+VHieqiGy4JLqzH1ADpGqpfYJcnyrK6MoqR+monXIHIRkvvfzL8yz/kTPLQHKsBKsZNqZU3ImrRoD1NWjJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0MOGTsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0MOGTsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38E7C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776181653;
	bh=V/wb8rE9yef7DGBo/8P3XL4tIvyNiAoGzHho61oYJic=;
	h=To:Subject:From:Date:From;
	b=J0MOGTsQYi6v5m6Wkur0AqSgk2LfbovrrwuEYchPyY/bVQEmj4TFDCK6uqh5kjOkV
	 7SXIxp+8V6cUSXX9ShFWeKsxPnleLIAyHq/NytWKaLvin+PuH00qNABDZ0JHXPucg5
	 W6qkKgq/32jY7USH02gMNmiOsW7YyCrvRFrlP8yfPN9y96NiP8DGtZk3KvnDQbMyfI
	 9YSLMrs7lsBruP4nRDlNeNLOYVDc5WkoGz2loaK0GQgDFIE+jVBKIwohhhQ2/hSHud
	 bg5tyeeAY1wzBzvctHyMH9y35/NMAqXwEB7RONBjD4YZGaU2Sx6E16XlIWiGOU79a7
	 cI5DH1mqW44qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D8FF9D0D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618165372.31138.13378783825930431005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba9c7217c90968b33cb37ff32222b2f567253b4ddc87f22210fcc5700802ea5
Date: Tue, 14 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776181653
