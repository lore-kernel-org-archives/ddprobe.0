Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C5138DC8
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739515734; cv=none; b=hBJ0chRYBk0ib+BrNmOyB7UpG2YX5LTNixrluj124R0yJX9r9tH2rwtdsx9pvQnKZIziMVnm0zghxP1UpBCMpWwEkfDwNjLQA7s6hiitFQ1IlyHVps9TrqYA0n4Z0IgeLhljOXPizaxGwEvAqVciJ20MAdp/Kz+dN474hcGVpnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739515734; c=relaxed/simple;
	bh=g898IkpSMeVgtpIww7QBVtYeRsyh5yk0EjBPgJGca4w=;
	h=To:Subject:From:Message-Id:Date; b=tnzITf9zXBsTqcifFvScmKSK8vZM5+GQ84I4hZa1iKDDGkd40g4vdMB9JP5bDwWnsK1qce9RTjzT5sO9TfyNUzJ935+gyXqIbxhRkHwVb2nvxYQhMgksxSBxa7x4sO5vXtLcORRZ1FyDBW7S/P3ex9sPEN7NyT8HJItx3FlpHgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExQj5mIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExQj5mIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A2C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739515733;
	bh=g898IkpSMeVgtpIww7QBVtYeRsyh5yk0EjBPgJGca4w=;
	h=To:Subject:From:Date:From;
	b=ExQj5mIhciZoSBgZ6hWXgVzBTiQmjMBHL8hLP7G1vbSloN1eyRnBZgTPjtnJBoxUI
	 lhNvgBeIb1yK9cbEK2BFHqrEitTDMogBbo0NuuXCQ0g8nlxuHlYsyGnW1GZuBF/YX8
	 GoxpjQp9mIhN5+xnyPh/ao3NDN/k5YXwFkGfpcVEiguY66CaiJWai2Ro/UgUrpVJOA
	 FLqungJ48K7WxWWTavCTUxv1qhOUHpVsUEnBgHQgyLBRJca7BCVY/Aa56L7uOgDtrP
	 Wo8Bw9QgG+UaMdMyPjCWj+yFKyjn02Qt2telPsBwrs+6qHeDIJyw1Ht4+ah160KN4D
	 aDLLJJjHbWVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F1C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951573361.5799.2706973417832646888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808fddd2929657b40e2878f59eedc75b4b256a5257516b52ae41f77d14c5d570
Date: Fri, 14 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739515733
