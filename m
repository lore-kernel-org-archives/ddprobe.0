Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C1684E15
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714607543; cv=none; b=JQKJmhW968dtJIqp6hfm1taaLYxKwmB2aOhaZAxVyrKmX3ynouAQfuPlGjtRLX/HI3XaKzOUk5LpseqT08pklZ+BGyvfndI8DUXqDmSs9yBiHYLTtvJTSwImtOZaOsgWwnnf+gAmt5DBjJjMhnvf8EcosQEW8h+/jyXOVnvHFCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714607543; c=relaxed/simple;
	bh=Tf2fiT+vNvYWlBx+0yjhdL3neNf1KXkVJTOzpVgwjjk=;
	h=To:Subject:From:Message-Id:Date; b=J3OkOpFOj3VXIkPUMMT582W2AKJaST2ULnZ1SAZKfx7dCpvByDdWWqhAxfjFIaK4uHukwAzFFQGIPGDnQdUfVfNeg7om8u49vSULjgOD58qWdqCAk/Pwa70KEqfT6ioHrc9fpnNv47AvFZQWE1NE06DV0N1LwTVxC4fIATHqGoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfIeavGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfIeavGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CF3C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714607542;
	bh=Tf2fiT+vNvYWlBx+0yjhdL3neNf1KXkVJTOzpVgwjjk=;
	h=To:Subject:From:Date:From;
	b=dfIeavGn9IHZ3ByQGiXrHmgm69T8mjsD0JDIzhZdt8X64q3x/OfDwDOHtXUFPr/dK
	 +kPZuXxgoLOLpuvemAS2aJmcnjBIyPgHG0iPPnw/WJayTSgI/+KvElWp1KtE5HYMqr
	 uL5yvA4RCW1pNixUffapOU505OxRZFOvkG58ciav6+xW7ZUU9hQWY1To83Ruc+6EnW
	 0YzFMY+3kK7RPX9tIE7SKaZgFSUYR37Bz1ZF1zCPEq734v+RWFdZipG9RnObqF0xNg
	 az4wPrbInkkuJ9Z6vqzPqqRoIPLef0fLVr0zF6/hGHyOS4DA+16ALsCgQLRk50bGcp
	 OGapsmd34FDGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5E8C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460754276.22414.2869595673847020281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c6731b772eae7a9e70b96ed957ef08ce30e541a13980f264d8afe9d34f349d
Date: Wed, 01 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714607542
