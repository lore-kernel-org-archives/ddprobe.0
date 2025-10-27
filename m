Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF522B9B7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761575394; cv=none; b=mZKO3bEzaH5MaKUd+uxb4HYYHiXPBE2TqOragO4UFkdFkdGxyzUfZDq9TfF9Vllb/Q2q65QyUkwrwCf0Qlzdr/deAZ6azI9L3Jh9eRxPQnJDGOza2XSAzMbHTtKkltVtL/1RQhix+Vz0l5LIhQjAFDcjXrhkOsyRiFIHmLNeCHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761575394; c=relaxed/simple;
	bh=ItCUHqK7GFJUncf2TxFMnyT5pG5j0dNBKAG74dmN+s0=;
	h=To:Subject:From:Message-Id:Date; b=LD7iFbqwBrOiT53lAa2YybWx2nRwzDaYK0tYKpEHT8pV7QJ/2dhGy/MP+dKOqMrhp726c/vFfiUcT8/q+RJykgKj/qYao6hpUlmobEMrMpIkajEskfptAsIWRXcZG/O2AqyuCcDrEIse1cOqzz9aqw4Bj2RaprglqRvGrkUBQDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV73aF8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PV73aF8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5318C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761575393;
	bh=ItCUHqK7GFJUncf2TxFMnyT5pG5j0dNBKAG74dmN+s0=;
	h=To:Subject:From:Date:From;
	b=PV73aF8XFFmfUb7o8CAdWJv1Z/HgEFZFhFu8LUxBlCJXN0jQwgShHZhpkrvNGZJzj
	 GYYzgKEL7y0S5X1ad/lBhfsk0B3HGb7TYjFtLwso5nF9vVgAVMGLpOMHhDNTWd3Gd6
	 z2N2led1jbraqlxYJD5FTCLvaSbPaHPpYtXcUVOYAPtmV72jwDkvcl5ayU9KUTUQZ9
	 0NLTG8eG030IZ4uFY2SNVifvy92v/zeIKEO3O98CUEveJOUElPclOU8YHc+sTpEFIo
	 x62PMQRy0646K+vEoNrwsStzgyESGfMKvXMhmMFcg6e0bR5oaoA8o/W3UGhtRPIt4T
	 78vYvG8ZqOs2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920ADCCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157539358.14533.14608413088768524264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9943f8dec827d8a9713867fdea8177a6699d8f11df9964f8e19de21372362d
Date: Mon, 27 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761575393
