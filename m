Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72CFEEBA
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723379754; cv=none; b=A2d0mxjv0Jg3Ga2egnejUWlfT3kCY690hL/138ZJybE7g9b3sfqCfbCSXMNuRwR56dmZM5wjol3sH81QTYtyes5UZUDATXQSRUvGczItycGhzp+ZuPZ2LDPVCSL8TO9qpa2m509IQiVMnTY5uABF/fXUEpxqhnVlKO5tdcgILU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723379754; c=relaxed/simple;
	bh=nEI4Vy0ZzIW5HaELMHlEOWTnacYRg0+4e3FDyPIWHMg=;
	h=To:Subject:From:Message-Id:Date; b=LUSn5uExsS1oJmO6FzEJ+unxErUKBIKwFDQPYpmU9wd0ztvlYvQbJeokvQWQiUr/YtbpRb12k3IoPHUDuQUxKE1vF0iamBbvRb1btOJX9L16l5b1CcgZMg8NhOMijb16PJl6EsQdlTP/zAha407TZdzvNPWUrFwBsIl829Rm8ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGWS4VHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGWS4VHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE562C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723379753;
	bh=nEI4Vy0ZzIW5HaELMHlEOWTnacYRg0+4e3FDyPIWHMg=;
	h=To:Subject:From:Date:From;
	b=BGWS4VHp91nVuC81pSV71eqhiXd6AsDn9uJdKJImFsNRr4VLmLP9ReeZsfYTWskIh
	 g7y0TwTbV31ATdjjG08S+ThdUyulr1YcltRt9S7Cyk0i4JuFI2AqZkw3gesnon5+HS
	 f9wSu8qtTPLouKxQyR8ClYLnFEcZ3kTyGQwLGNWVwlt1TGLywUq2GoQjNyUac8SaAA
	 0j+0rGJfeXXEwfwXlDdXVm0Z71wEk6E8DlE71aZ08nFvBEFbK17+0i1FY6ZrbNUEQD
	 ac0md0xGabT1zZZS/uWQye3qntTQWRzXDDbvUs26K4gFL7ceeCAz0tqOlpZosL3QIl
	 SKM6NQoh4gM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A1C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172337975369.16289.10805698625708626195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6db932b5d683f34dacec4dbbc779e354f841808874b7ea614f72cd21e4bc6b5
Date: Sun, 11 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723379753
