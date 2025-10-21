Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F37245010
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761045594; cv=none; b=JbreNxYBsgMUO4dHu8cwX3eJ6gjEglxwgaM6Bxo2pbZVeJDjqUhSw1RlJJSFgETb9JxrZZpGI85OP+R5xQ/4UfVZh5FJrqm1TeGVdxCHyCU8WXhnR3O2D9zIygNdggoH0pqiXD5hO8TGd/qrMrRc1iHTf8QvNu95OQZRqT3PlVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761045594; c=relaxed/simple;
	bh=A6gjvBnUJ+bNG5j/nNpFNAHI6qr2oNZW5RnYFS3qm/0=;
	h=To:Subject:From:Message-Id:Date; b=R21GeYJCCAeikpgmoKjM0zEp22wqEuQwBB+Olb0sA9/JzgVBe8mSMRHxtj4YEvltPrq/fI6Au62t+FMatVbT7SHFO9PmZZw7hfvDiPF1ZauZdTe3rdE26fE0jokY5gciWOGgyKiiVEMOW6cVgvpdcMXARuLrY9/+xeDsJ4NSDuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmxNuMe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmxNuMe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6731C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761045593;
	bh=A6gjvBnUJ+bNG5j/nNpFNAHI6qr2oNZW5RnYFS3qm/0=;
	h=To:Subject:From:Date:From;
	b=cmxNuMe4Am5zxyWS26nG/TX3I1D9mu7qap6bpkq4umn76jT/2X/9OlyCcR3kMnkHV
	 qSQqdJcRCBusJ/FafqUPw5ey0FaYvah7hQhApdt74Ic/leEis+l0Z0oq2Oj7HLbZza
	 aIWmXK4fddflH7d1Zpl6vsb0YS/EIET4LhsvIA0aNwTQgWnqHdJHZVeCcjQF1upl9l
	 cyMZ15Sgm7OH8KcF9aGHqkbpfycZSf8ueFgmoRSugCuKMACz9MpaA1pCzS4B/Osva4
	 8t92wzVEnpjTYsfmSu4paF6fqWngRwAx/7OhiXpJXoVO3fS85+6qRUQlgJjuzlwm+T
	 O4iCIHyBlBC4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535BCCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104559360.11512.2699586823891056996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce25427f32b6bf5f77772e2373d40426248233f9121e55fa8d38e6ccd853b779
Date: Tue, 21 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761045593
