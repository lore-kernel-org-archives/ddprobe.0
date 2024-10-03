Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306291422C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727954754; cv=none; b=YirC/VT7Gzrz/27NFKXTf0qa68FGwEbBQN0+4rJZu2n3AQEuAsKus4E+cuy7hyJ9VZCMcA3MdiMKenMbkBg6+x5v3CbbwQfRPi7nzMYUXgXdQNXHsmMIblQ5hHeA3/tKNNmULhRfgLWgB6gmKjq0X6sOmch9MfPzRYUiJlNi59M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727954754; c=relaxed/simple;
	bh=WyYU8LA/++HFf7tx8TAvQcj/ApsqIt/hwiux+r5Zw84=;
	h=To:Subject:From:Message-Id:Date; b=uYS+b0Vnlvg4w3n1wUoVE9ADnONJzkWzRVENSeHUwU4doI2tXuEV65MDUbXHMUzFitVj4Afn9qbylEtnpU3jbYuKuMWjrlti7D195Bn3DbMXtFWklzcglCdUlcmdtB91uYwz0gEiDdFx8UG853pUffJCfuKOnztNqiePMtjjrH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnNqRVDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnNqRVDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0AAC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727954753;
	bh=WyYU8LA/++HFf7tx8TAvQcj/ApsqIt/hwiux+r5Zw84=;
	h=To:Subject:From:Date:From;
	b=gnNqRVDpVJAyZikcFWBoFeVxVFIhJ9cTILpQTzni3hWwRdbQHygB22GnMH1ieP0TI
	 0Ydd0MTlu6RAJHQs/G7rgwXWhZCr4NbFg3D3KEpixbsqGdTcYDzyAbSb5qUTCzhpFn
	 QErHRDG5Oh7fXNzxoLj7QWCoGNYHMf2smthzCoqekc8eg5RbQTx4HpmnqEIUz4Ko2z
	 fBLXbL7esr6ZGC0KOTSJ8pFrzoK4ThGPw7HPy0e6eCS1/Z3ak5Qa4VVQd6L9Ob5rKn
	 qO4vtQuoTX3BmFBKDnJvkD5/d4awBpC5IMHE9b+xu9fg/ad9qlShsUZ5EloUYjuLis
	 g6mZO491CTW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F089CF857A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795475363.29335.6560030622661239644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997aca5df9f371584a086980fdba41e446b83de38c2476cab7b9a421916e018d
Date: Thu, 03 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727954753
