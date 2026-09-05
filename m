Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2024B2CCA
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788624034; cv=none; b=WN1ndyAGcBlegq5r88pUJYg8vQROwksEm3xz7ppEXzgGY+/GqgUoT2Y4G/NIX909A/Uk/ullekJUe5ygzZnd2+nXNprrmwNuNk22UY3blOHV4eBBRR5i9HIgDSfKaZlNk1KBvkCfkzueQZvN816/cX9VGhU/eWEbSuQV/cvm2Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788624034; c=relaxed/simple;
	bh=shG6NcliSpMMvSqPe5wj/ReJAtOPvppuE1WKO3aU4bk=;
	h=To:Subject:From:Message-Id:Date; b=W5QzUOVcFh9P4qFEuqfifobQP97IFvAcaQsWbs+7fO6eDWHn6MiW8R0N3TMVoLUkGDZeI3x3VQqCSMLhizc5NpGY3u5Q7teqz7kZYa2W0vnsYyBgGMBR3F3DXCoHDt9Hel8wJeG9Kxupflkvs5bfmwGF8CL9CZwBGQwzGbEhK4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aANAoia6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aANAoia6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F14C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788624033;
	bh=shG6NcliSpMMvSqPe5wj/ReJAtOPvppuE1WKO3aU4bk=;
	h=To:Subject:From:Date:From;
	b=aANAoia6jA7R13i5I2psP1JFNYOAbjOqA+dpCT4yda5q2Hk4rbOvWg20kRpqe42SE
	 7JBwXYpeL9ZrbWVwjwUevCJdpcK3rA2Y6BwgOMSy1fgu3FgrtriuqF2Q5d3SBdPgdR
	 kgAlh96791xo7BzBs57mlkuehngmwOoQgJLkEA7Ykfvd5WATbHKzGh0cfJ9OCklQts
	 qcqqgtT7STQ+O5bUsOJb6a9QkV1Ud4CMTYOXYT3ihZFibRGZ/eHcb03l9OlLEo1g7/
	 WeLDC6xGweLyy/AGYtOJdZsmqACrzjdaBTzr9FOm8PiFiQtkVAxg8B9meZuNcPe0GQ
	 2FoQd6dlcQ2hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2028C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862403371.1712.13902458233604936802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d692b1467ef96155807e5b0f7750d02504f6dc2ac1cdc5c1217673535d7bbede
Date: Sat, 05 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788624033
