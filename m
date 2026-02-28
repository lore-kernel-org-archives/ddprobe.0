Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5D13382F1
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772264693; cv=none; b=laKlKK2PjwYmwnJBd8ivvnUVgPcZTXtQi3v6W09Wt29pz0eHpsIDYkJaeHvj/qzB7H7TmWouKEWt+dsZ+Uk9tpITW53h2hiLk0/So2OUIsM2p84NkqKVIUzLQj5LfimrQRggfT/QT6MF5FN8wpkcd2VdfOtwAW68ajoNTIt9uvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772264693; c=relaxed/simple;
	bh=Ndzg48cisThPeKww3QClwBkp6e8oO8Y9AksJu0N0aMA=;
	h=To:Subject:From:Message-Id:Date; b=kyF/seOByzovFKP0daDn25W80VGiZKHHdDlEjcu+KcMe9Jnp5+MPmhzbZx/rajrJWGOfTWff0ZveVSoL0ppMCmxe33JWcpGNYfO/6ipiGx0f1a2npxH7wmhS6kg5rVw1sRLeJ9R0v+fd6Mcab7ibs/7nlOfFVjDo7DB6B9ofKWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QttwIE9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QttwIE9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD84C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772264693;
	bh=Ndzg48cisThPeKww3QClwBkp6e8oO8Y9AksJu0N0aMA=;
	h=To:Subject:From:Date:From;
	b=QttwIE9uMnSycSAuxUIawq8CrN5hkWng0HCImEEKdVnN6CnXNGWHAQ6g9aUcL4RiE
	 iW7Ke+iCmOqQkVo/EvSmPYVMXHOxVgTalkvZfHzVgMiJYBmeYvTbvNqbuHoYXybhy+
	 df3cpEwCqAflh7d6NdiXeuYdwFDfGWZruC1Uv/lZLRJGDfaXfxoepU3TbNhvbh9n6j
	 2nHQoP2p1ATN3Ty3RJU4/0qQoRCCnJXOkvBAL9CmVUFiYBJYge3bfVtp29kAJV0jh0
	 JoGqoKS9zZpHxPeLHIEVWPZvVzC/fCgPntFYnNLT9jEHoprnouAUbhNbHtS/wH3gCA
	 M2zzdmY8oUKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF05FEE4CA
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226469361.6325.17933583362000309950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1dd9c616c66d4f97b4a5771210b7778a9a1b091ed182664a8ed480563d9c35
Date: Sat, 28 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772264693
