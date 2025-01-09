Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4A620551B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736424954; cv=none; b=qy2/1FZtnduxu5kBeMu2yzyII7RyvnPUE/gKyLJhgSOUlVkOI//JUSCBeQbxu/WzrTseG2Qe2NEIZMnpndrZ6SU4ZRSk8x+cw/lQbVlhZ9FDFfkocCGqamumq/CGUH/K0DqQFa+e8N2R/LhS6uXek3YZ2AuVywZaOZ/xzsSFdOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736424954; c=relaxed/simple;
	bh=AFSaNJqCoiYLsYOFigeZA+gfXfd5vOWe/1U8X1BZfYA=;
	h=To:Subject:From:Message-Id:Date; b=ftySCaDpKs/fkGxfFa5HYoxHJKe4A2rzi0HAt3g7Y+T+NF6ExF7XIjGjowA41KR2OL++J5x8CyZxPCQ1kRpSzfyb9tVaY8NZqqNONdVXXPi/1D/V6BfhTJT85Ihrtaj9N+FxzzMh3F8fp7NhX4RKKc2tEARpzm4GC2SwqUqxcTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIpx3irs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIpx3irs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F4DC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736424953;
	bh=AFSaNJqCoiYLsYOFigeZA+gfXfd5vOWe/1U8X1BZfYA=;
	h=To:Subject:From:Date:From;
	b=vIpx3irsU5zZScvrmBCVM467qYngsj/9F0H+OZbfRfOSNPJH+iDF1BEldizyszF0h
	 V7CG4xOfXFVLPmbBMSXA9DO6Ny6LiJ9WmUOdQhzyJBqd2Nxll1LdyBtUXFjFpMW3Zv
	 7RZj7CsGvMdblwAuDRQKnyv6ycuaXH7QE+5A8jpegf4D5bbhUZTI2ofLsNAS22/new
	 VWvwRQPPlJIZJ0Nr9XowHB5FsFwmmtp0d99OkVXN1cKLnAJZfye1q7gRikghq1uV9O
	 EFjHooiSEgUxmELIwhWO+VXzHFM3PXS7BoWx6XHmAU53WACvKlJ95fNClxRPU8APve
	 r+urx7qI1nzcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A353E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642495361.9023.10587793424589646561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02724e1ccc62ccfd45b9bc358e1a16810e97308c61b26200d09fb1f309cbdc5e
Date: Thu, 09 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736424953
