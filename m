Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E0221FF22
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748675394; cv=none; b=ieYJDiZWdw9qgIRQxXvw6apUXeNcKoQWQBQ+3g/5EmU3lN3EgLKeuPb5jzWE0ZMwD30V9yDKLTbl4QRoJwT3KqA76ThTSevtJ3lD2MV8+HNUTsbkmX1iq6007k7V/RAirxVHRw38lHeUYKXI2mgWwcnm59iu+rWAi1PtZEl0ED8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748675394; c=relaxed/simple;
	bh=j31xg063mM5XYjeaBv6Irgl9khv9/v7DA4HeCOIPW5M=;
	h=To:Subject:From:Message-Id:Date; b=A/TYtxChQxpEiaU8yZl7OZzhW1u7/cIZR7PibxLm7EzvCJqc5pocxb4UhiTO7ztdiXE/bmuO5v8Y1MiIZfUBjTd+84BAVw/JKBVwqohgwgTa7KrZ9O64yjqBN+cIJrOa4COVdNvz3OoFq7rsL7n0vzUby7ahJefaDXR3KB0Pujo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwWi6pwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwWi6pwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6918C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748675393;
	bh=j31xg063mM5XYjeaBv6Irgl9khv9/v7DA4HeCOIPW5M=;
	h=To:Subject:From:Date:From;
	b=fwWi6pwUTvboRRLaJv6YVZQCwfRHGuvulHZMFboqbfi3a3y3jaZE+zvI75Ppueif8
	 CXJgp6kIAgGTfLaUdM5aJk0hKTqe/Vzm8OfrNnJscuLrRai/g7aJ7wPTNZb6/W6ELj
	 gju1c0UwoLcXWR5uFl49Vq3Xn6go1cBWJM1vT42YR+/XO+POSStOFJALO6CdQmhQ3Q
	 oVW8O6Y68WjS+Wqk+jdGzxPI2sbHMkllbP3EzqPW/4VES/7YuVlU6B/BHb4d4dSJpR
	 cuhQgSsUTgkFJ21VWpTff8rFdTZO4fvMl4psoDA/zVjppcoVa0FbDOypSID3U4GWGn
	 INoQcTZx0Uy1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BAC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867539357.28554.7349802014345840149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868ccb48ffca4d31bb7000cc64b49e83d60910808577e74e2375271a51f1c846
Date: Sat, 31 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748675393
