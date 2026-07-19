Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4741DE2A5
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784443114; cv=none; b=eEy7qdLAWCGVttzl41qmiy1XjEfLP5fmzo5WqIkWI3caFCwKXY1uzPz5+t37mlG9rnKpRgUJgB4SO+BojHVA8ffIKU5FQYkZ3F5Q8MrzO6m1u9rlt0u2OOz0wMrAy3St2vLFGvQHHWNYLTLATVtmxk1Z/Exz1+/ks62PrpyChr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784443114; c=relaxed/simple;
	bh=IgUGP9SEIePdecbQ5upJtme8G/zhM1ckwrngSDvOe/Q=;
	h=To:Subject:From:Message-Id:Date; b=JV7EtgP5CNNOjerBarkO5Z2W8xa3cAsym8JXwcAO9EdHEKBICnHt4wGk9G5LCjIPqQ//O/LJbeKmMj1GdVZyvtNFb0HB3S4HnqWqQLpuEqM7fr7UqMNXzBKaJe1CnR8FYsQxu7g16KbqwNP5QhpHboBkC7CskZoMIpIEaeRXpRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBCSueE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBCSueE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9761C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784443113;
	bh=IgUGP9SEIePdecbQ5upJtme8G/zhM1ckwrngSDvOe/Q=;
	h=To:Subject:From:Date:From;
	b=cBCSueE5JgtK004zsONUXVSkfhHSqODyusThd9DjLBhj3u7/AKHoOZgvnJLrYdm1c
	 C2e/uUmS+0i3O0AmU7c6cUfczFHDjlpnxUwlkZmEIimZjevJvKLIUpxZBqsYR4Ulkn
	 wd/Ltb83peMkDtV8+WUR820gTe0eFiT+0zLaMmQd+295ARHvh7LqoBNpzEMjsnUrET
	 FxlXWOKGGabow6KtAZzu31oXOPovzky+KdSDg1KzgVclhnMNFYGxQqutKBOVhNqFu/
	 0QSiV9FlFN0fJxLpc6qyXWd2Moasiggmom8H2jUs16Dw/sRjbhvLGekm9qTtqWMU+Z
	 idrkcaH9NqPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75D0C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444311367.32374.17653898170035296461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3e1a9057851477be5a7454aaa00802b74ad533f23905ccc0c0813f9cb8b64d
Date: Sun, 19 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784443113
