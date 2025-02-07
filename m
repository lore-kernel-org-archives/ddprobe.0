Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E36194C6A
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738963553; cv=none; b=V1cAb6XEO5JCE41CMl75+qbdOufgYhlv/KvUKXdnlcyjm2n+q3iJPmdreaEDbaEiBla6N25/+UPcXJLhWKWjpVYpc5HM4BKK1HAIuqTGgZ/49TmQlxNKTIh8hYuXaRg75C2JZXxgvmwEXoC0S3wVr6NGrISwEiwWzT9KhfaoKMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738963553; c=relaxed/simple;
	bh=CAaAbopzqcL5B1qQJB+hbDSOwoPkIUbGfP1nwUU92do=;
	h=To:Subject:From:Message-Id:Date; b=H/ccjcbn42P+elTeUCTgFzTawCRHfet6fJt6K0ao8VZQtDQGPSy64irGRqfHEVI2D07o2gKx34nQO0T4t4wRBUo76ZwXRKFrt3ic+FmbfVpDkpMe6whAxOEj9EFcUSnJAy0Q/fTEXfzivc61cwl7o9T4i9ig96rb+QsfHZ8rnIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbtGYwVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbtGYwVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738963553;
	bh=CAaAbopzqcL5B1qQJB+hbDSOwoPkIUbGfP1nwUU92do=;
	h=To:Subject:From:Date:From;
	b=lbtGYwVMueioIHHYncTFdnWmFMKQcrUvKx1015p1yS3kyO4Uk7Gh0qUxyNzxJLRRO
	 PcjRWiBqbXBO1XuzMuf/lRu3cWKUTjw7Bg6UucMDbTayaQhDDOYqFw0BvGYA3lVnUt
	 I+0iTkxUetNQKr5E4Z2PUlDl9Z4VhE6jNwHof5KAuxoXJYveuWDvEVRgaSxWXoqHjb
	 VIExY8xg31osaKjIUaREvrLLuRZthCC4PAp44KE5+6xnejNew0utlSL3YogKG4RHO2
	 DhJMJ6p3hchNDohs69npZ8B7cPpFvsGcLKYe605Ou8Z3HO2MUQ78i6lSvIVc1EMaGV
	 yvFhSnc/8tIyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2FC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896355360.30430.18204627058472907232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998b8f97842a00817ed63f60f90e1fc2037828de984e544a526358328b926431
Date: Fri, 07 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738963553
