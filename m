Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278B63596B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736041554; cv=none; b=ZxV3kQz5yC1ETuJlRM8eyeBrErO4A3YLCNWSiBhPL+HfgUh2cqZcPV5xfZxdm6ZjUhT2Pva9l2Mutu5Vms76gXrG5gGPTRZmZ066ECOK9VXFTWo8dHrzz6MQpwyAYp7WFdP23bgWvcpkefhpILll9YW+TheLJj9jqL3CX7UWU94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736041554; c=relaxed/simple;
	bh=Aey6Y4rx6nbVjiB4/j6MEt9b9i5Nosez7xAMKv6g+oY=;
	h=To:Subject:From:Message-Id:Date; b=utQGvCnopQvNmBbxR7LtBrlYYWTYjWMeeAlLtYPq4FpWPggY+B99IONJdBHBsYFRz/+wla6mWjpQ5u3QQfDOOJVwACwyEQqAddDzq/uVtVRJ7qijSVuJVBTH/oRvwETW9Kg/Gcd9X8h4IToeA9A3Xjm7ObY2Tdud430ncB5KdkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh9TxUJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh9TxUJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C1EC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736041553;
	bh=Aey6Y4rx6nbVjiB4/j6MEt9b9i5Nosez7xAMKv6g+oY=;
	h=To:Subject:From:Date:From;
	b=dh9TxUJRm51LGp2jd6j6n/dd+nhBY8KxqG6H/7jxPSmz8+BVMnrAeBQJ8YJ2pCON/
	 D+4uNy3SR1zvcIs2MgxoG9Ylf8HBP4HwsD7z4mL0gdpXURB9UrGm1jYsVY2x2luaXI
	 +rBsm+z1ybk+tyzCt+BCWqcIgy353XP062CVy1oulltNmJGbCzdvGDAftnNsMPmQMm
	 6FQMtDNj+UJDsiBX3MejF3zx/97RRjZzyY0ZWvpY9z1hJRPe9VE4jHZxAx5IMWjupd
	 cGQjnBiKAUP9ZPg7furfpQyh1/cdIqRk9uV10QbfnDwAte9xWCeac8R5NPHVvEv1U1
	 /kYtbIl8Vc5ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D2E77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604155358.2691.9136769094223043456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7455df2059bacee042fc47965ee61e4709bbda7d98d755b5abaeccda0e2a1bb3
Date: Sun, 05 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736041553
