Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1174B2DAFBB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781723794; cv=none; b=hAVsV9LNkIhW9T55bzcVBYBZsAIu/nWN92j0mVcWI4Qrrn0zeobNs/UcnyyU/b909O36kxLHm6OdkniUHcRDubKYp7nyWQO1Ek0DsdAPsp0bVpl7RRfv7XANKmOZLR6/RKjLdlIvsN9xn1OWv0jdkiypAptlrVLqpBfjmK0TahE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781723794; c=relaxed/simple;
	bh=xWqWt+JYsgOsK66KpHfeatHQHr4ZtLHJ9LiEVZsFcSM=;
	h=To:Subject:From:Message-Id:Date; b=khBCvRGvEFUN5/tGgofiii4ROZvwoEEH54oiuCi42hkRnD1fYG7TYNB/gxwwuMunHu3ZgvgLUTNze7XYsW3/9FsAWneG+b0zz7Re4ILW4CDzGq9f3DN0hU6ciLTL05JzcCVmumZY0+uzyyb4vc43OC+sO3J/sQUhQH+RoWlmSUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9nOxQ43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9nOxQ43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC850C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781723793;
	bh=xWqWt+JYsgOsK66KpHfeatHQHr4ZtLHJ9LiEVZsFcSM=;
	h=To:Subject:From:Date:From;
	b=r9nOxQ43R3RSse5UrjOI8zi10GSmU8ggqvM2Y9W6Hw/jkGhCpn9aU9WIRJv9DN3pg
	 TkT0rzpPQZ7tZHyzcSxIQx5K3tbSYpj3oTo9koNGpfIG/E0qvCcPxM3eHOAq533eGp
	 0YD6gQKsbEB9RQjABpLii28H9q8JFEItjJKE2zFoK48uYAJJmye9whRfCnMi9lIOe6
	 5lQAYJEeGjwjHVJs8pXqOXw3MyPwXcTlNvihCVpR+rS5hlm7I+diBBCcDrpv6s4e0n
	 gKn9+6boiRK14aur8n20ydFGI33SW+OpIBZfwZEqbYkPNJOF1OqrMKyEK8tvCvGbys
	 XWsfMz1ZReN2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3F8CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172379370.30085.11373147500584648495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8a69c9e55df0e5adb7238fd0960acdbff9a1c43739a451cc9d36327c38b568
Date: Wed, 17 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781723793
