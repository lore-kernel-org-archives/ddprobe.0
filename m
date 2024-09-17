Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9052572
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726542954; cv=none; b=dNHaiUMVIu9V1KELr1ntiTWlJYsnOcywwfV4ELmUPCaKzdHjVtQk4+qcUqzA/gcVH/FrsdOKgycCELlhQD6VuOke65w1j7lB1Es6K51TMeswMAqZCkg51/YTLRa56LCceN4RYPZzWEBt0Wcozx2CukkGsiWGkc4jqCjDi9nEpY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726542954; c=relaxed/simple;
	bh=iS1AtbnHZjvVe+FjCHchQyKVD4YJGuRUYm3IqxyRiMk=;
	h=To:Subject:From:Message-Id:Date; b=QFAxIPcFYjq9Txu7JflGwjSXKIjrhzEfJt3nvjnPTJUTgEG3HsN1U+hCKmOoBOANbs6jkOoUy9Su4IzZ6rIZSK3wryBn/bkDy7K1W5eAyvCXCVtby631m/fVZeqbFoWnExB4l9lRdVA5XTejla1GQDLqknY8ngtEUA/SvZAgqUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl+420YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl+420YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19F9C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726542953;
	bh=iS1AtbnHZjvVe+FjCHchQyKVD4YJGuRUYm3IqxyRiMk=;
	h=To:Subject:From:Date:From;
	b=Zl+420YH3jiPKQTl05BkEbpsCI8LOPvcYhbKVsZnCkhPiUUy+vNjdAcc8AJj3I32U
	 cLz8L9XNzCi3lqlnAyMuSYqbQ+PhBuZzKOAceSSZtrjy+1mj1IizW3cCRGg/hy6UA5
	 GNpxLYbgFMn9wm0P4xROkjCOmTAWS+D3whYHXV9nN6XclsUzMzguXah4M2jz3Q6IFh
	 jM37N/IN4ajJs8Ruqr2LXgGlgbvUpnNNFIlg9gI/t0rOZWmexxSvCXEd7DotZgZBAv
	 lgys1SilMfl7fc8U9z5K+PXwQAcLfZArfO1EdonUbvQu8fj73kaW9vuqdHjxZ2nxMg
	 91qLRcuV9qDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99794C3ABB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654295360.28143.10948975781428871268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362a0aa0a8ea11debf3ecd2e3e1d0e55766a20ff1a53d47857e5a6bed81f47f3
Date: Tue, 17 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726542953
