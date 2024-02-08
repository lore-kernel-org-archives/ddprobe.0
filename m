Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B044853804
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707434296; cv=none; b=NxKusQSHSvFsselERkkQygWmZHJih+dJ5FvwaMUPB31F15YsQGP/Nad3ov8FLA6dJjzz2wbt5XfraqcLikxD7gNgnM5f5kQ+oFWDC062OxLPo0hjWSmkH4C/nA17c7yfwfRZ2GMnwmN9MJ3r8F1JvPwGTkRSB4BqAKHjxEKv/bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707434296; c=relaxed/simple;
	bh=UGTp+gHxPBAiV4K+V0PuBrDN+6naKvlOE42hTUkMBSg=;
	h=To:Subject:From:Message-Id:Date; b=MiaNC95ku/MZpBzkO9g4rpuJEuwdNXjfQLE9U5XyJRmzU7HWUUDhQ5GPgqI1N4mziXrlF7n1NtMKWCWFff8lGPPXX9QpKfkM+KzbFzrqFOOyNZ+66KeIFgu7zx2ogTR6WokOPej3bU8ykylyYSHtHO3APmnIbva27YpSTt/Epi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7waIb4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7waIb4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D013C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707434296;
	bh=UGTp+gHxPBAiV4K+V0PuBrDN+6naKvlOE42hTUkMBSg=;
	h=To:Subject:From:Date:From;
	b=L7waIb4m4ZGXbdQkTJ0p5JkBSA6pL41vQazGPxVnCy3Z9qDik5Xi4iS8rgJ5hZMb+
	 LDeVNTGL4kLAnAoKAV0b4LkTP0+enyACSWG0LNEiqm89u9sX/er6WsY1y2TWOYcHy6
	 ILz8OO0BuCzyzWRHUJ81YoAPGHomBMMH4UyS8N1AzRuC7nGFyC9pI5wu9nSTBn+iRh
	 dli3R8gksLNG2AQ9dxV5WJ4wDs2G73Z3RZhZGpPq+Ry7IGDDnwGTyPIvUA8KW8C7eQ
	 28+FCVb9pbXs0+3A4FyhTyoSvqw/7zCqJAK8Kgqp2eK2JYsIXaYX1keChMB4xIVcCi
	 8b9f6Vo4vmE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60ADAC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170743429638.2692.12404374697691230511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d9c7e30472b82d810518867b5a8b744bb8dae15631a325e9843f8f63ee9337
Date: Thu, 08 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707434296
