Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2614A62B
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751713794; cv=none; b=ZH6UBg40OWw/XWcZP0z+4Euz5evFcw0bcgBBVbG2ECp5999hUX4zjB1zdXgjdlsZdUUPRE6MxXuqjc51O7VsQd4PMhRJhN3tHK4wCV02NQ2RIYenUUJGbfFzJgbKumjqgbpzh6u/7dNw8hmoZs+qXRw76vh/HUOLlGgy98aKTCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751713794; c=relaxed/simple;
	bh=9iXn7ZHbn+oTqg7rJms//72COekVPeDw3Jdqs7ciNnc=;
	h=To:Subject:From:Message-Id:Date; b=lSyr9NCwWx/k0JP1pJLa/aHZXAleKY8feIiHL+WnZ7GMteOeeRWoUVxZodEmivMmZ0AbMtYz0nPUqFTPOKUuC4X2eQbY/yU6v9pVVXeJpobCddLPJUVCq/80oGnD/0QrZPF+fXKK7HqLBgdPfOnj8/RqIEmPAtBtOQHG7X7e2vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MT+NTR8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MT+NTR8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A23C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751713793;
	bh=9iXn7ZHbn+oTqg7rJms//72COekVPeDw3Jdqs7ciNnc=;
	h=To:Subject:From:Date:From;
	b=MT+NTR8Ixnt+2yTZ9ggc/KGRZCu7Kyr+MFFa0QKHRv5g3BOrpH75LDSiOEYj5ue/m
	 CEMYs5K8G/m3tXOvyK2yD3saVLnZsDaCJbbkaPI9VLgyWmcVVfZ8VBRiABcXx4qvWt
	 2Z1UoKZNIDoijffHEOWP9+7af2HWWKXtdIDlFKHznGTcbsI51FGLHQ7uEzY6btIAak
	 RU+xuTTa9ct1ZDl8MwS3MLQfl5Pun8+nIB2UaifgT8IsIb8mRb7ufj3HYdOJAIDWta
	 Yqa4cip0nBl20Fycq80uTd00WOt/jKkbHqKhpCvpqrdQ77mcch5IX1xucqgRVMDV7o
	 lMv7wQJE63AWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A2C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171379357.24083.17606417257233452767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a51e1a38a40f5a4bde8039fac62186364b6e6cd9acf4400a33a1d4fdd046dd
Date: Sat, 05 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751713793
