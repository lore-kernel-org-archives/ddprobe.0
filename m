Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB2A32548B
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777852654; cv=none; b=hPNJDUbUWfHMPOvshSSDusti20DvuXfERHnY7Dj5qYxTME5j3WBz1vnHjzAf8STpNNHIv6/xve5B7GqmfqpeYcBe3p+txv2d/IqAgDW2L9nI+eLRKI40Rzn4BOZSAU3HyH9JIEpYvUFU39NMwD2mKqmYunY1JViamQK8ud/eg6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777852654; c=relaxed/simple;
	bh=I2Rh4yQzM/1KFQeQdK42Xe6PPvY/zRXjnauE08xiQrQ=;
	h=To:Subject:From:Message-Id:Date; b=IbA4R3Wh7fwZPT6Ite6WAJtImiFP7M7JqKVpatXHkwH5cUT+vjKJ9hL5f0rSpbRCkkQFaIl5o7reSW5yK6gZYYiuXaHzX+/voSjBL8jx5XRRSPCSZ1jmbILJ7oITfhUi4ZC1/rjZgRlyHevsvRUHFyBd0wbHm2wqLDBuYI5zyaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On0XEbKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On0XEbKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777852653;
	bh=I2Rh4yQzM/1KFQeQdK42Xe6PPvY/zRXjnauE08xiQrQ=;
	h=To:Subject:From:Date:From;
	b=On0XEbKf9PIZ56Sjy3OfESnPgzxDnq6uD8urErQak0UpkhdVsIwilCXl5MHOee3//
	 Jb+VWt7puoeh1p1nK25f4/G3QKvIt3bOmDUTzVkrFDXZdumxek/U8ROSC1z2cTYkxK
	 UTNWpB5Xv0Hoe+7tdFNKfhEHxeiK1ozHk8VdAEo5HZ1fm67MmLP0sjUxRiyi2zAA5O
	 MtbItYr+GUVCITTNJQm1mTVTL3Tcsp7nRemnnATOYLDCSw7CwLdX1HxQz8SB7ukciT
	 JkwkPHDxqp3wOiZxupEWrrQDTNEM2m2dTHryVbjy1ieLvXj3v/Hsohu0au5GjHyZWl
	 VTEgRsiNi1FSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E00FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785265368.13073.8877231048686108760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708ba530aa991efae6491aff0b16658a4022e57924e61b64a0d8071acb34d65d
Date: Sun, 03 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777852653
