Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC22548EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772495094; cv=none; b=Z+93E8/V0V9l8Tq+/Skbr+IIOcgtPXYkFEaGYqXBeuwlazO3y7zZ5zkB15+HVKp+qbTFhZmKL1lHTYWQD3CAavLSC+UEJuTRlBDd3AUrfTPbcGclj2NgTCCEgwYXhUO3EB4kt5NUD1IBtkle3yBXWqKe7PMsl/FbByPmJP7LeZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772495094; c=relaxed/simple;
	bh=k8joGo8lJgjvA+32ByZzXp8sOnxZr1c+U7USgOGzbQk=;
	h=To:Subject:From:Message-Id:Date; b=gBKMTki5MaSwbk7hm6Ru3Y+2w47kEcBXxIB+JZfKj4nx9Rh6hkWgQSgGAwnx4/kg18dDx0vOKG49BNxo1cLlfsw5jAm7kyyTe41bDGQuvEaSImnFEQ/h/D7Az/RqTx8/rlA0DwQpO2uLAcMfJOpQg/GNVqee0uoZM6fq8RW5Kok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqvpP6T2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqvpP6T2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5340C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772495093;
	bh=k8joGo8lJgjvA+32ByZzXp8sOnxZr1c+U7USgOGzbQk=;
	h=To:Subject:From:Date:From;
	b=pqvpP6T2tpAg7MzgvqnEw8DKmV13PueTY5I13KDZj2bQXFQynL3o34mdPad8/RhsW
	 vqoKt4DXsHUQ1jXMjC7g4jGIJ8T/tRkSn0tACxhYFWAw0By0K+7cHgoJvhvwBJPy56
	 qssxRNhYhCofBfBlU1oLA6eC7WWfNVQgT+SsQPpv673iaxg9IK9kBaPAF9Sk1lXPSN
	 3ir9j5CcjuTjkucQdCewKgPaFm0alpjGaq5E74MgjMhSE0WbwOC1gkZC6j7BzPneuw
	 x2kEvB51O23zGLGTbLE/XW5MnznJ+jt/jdOW5Wc/5H+uPEyKgoQa3np6rA9n9jCAqw
	 Hbq8QnpSN2I6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E479EB3640
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249509362.8206.18118823668136395592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34498d1840b5688612f0f872e3070392e20ad92e8864a5ea8b4c4a5e85aed6f9
Date: Mon, 02 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772495093
