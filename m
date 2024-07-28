Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FE626AD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722192954; cv=none; b=bfwh/7oaxCsfd4VR6frVJrmph9qGnZ09HOegRJpUiuIv5bUow37DnMecQeOEQCZ6SSHgxY99pRnw8we2X5mg7VS4ypGXRgUr2+ZbX8Lw6K/WHd1/xIK8zH5xJzRavJDmIoamvCT++KhTu68Nxd/MULg/QcPTxFTQ7WYK/Lj+c60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722192954; c=relaxed/simple;
	bh=oCcly4F4nZAzuV+Uto4u811UX0BdakK0gaLcl3H0ErA=;
	h=To:Subject:From:Message-Id:Date; b=K6lxTQMbHbHn2Po9ZOPmMCqVzALBt/m/TBuigxkOE1Pohu+64h77WK2jVK/1bAuKIJNnMI6bh9PKuDVmpxBoOuSXnGogeclQa3pqeZ8MT8R2ahrmUQu6LCeuq2CnIz/iy2Fzk4mYGmxOivwKCZs3MC7HoH90xSZ+gF3QZmSNS9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNKQoYor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNKQoYor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA006C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722192953;
	bh=oCcly4F4nZAzuV+Uto4u811UX0BdakK0gaLcl3H0ErA=;
	h=To:Subject:From:Date:From;
	b=qNKQoYor1WG4Iv6w5ICCaNofOeXTePgXW8Dx5w/igWgQIKtpxve33Zre26kegIvIK
	 kbzJm64yRMbDGCRe/wnJy9TEws6zhjqrOoD7T2woHsZ13YmSR5kUnh9qAElZNV8WhV
	 DQVzPnWn/mZHGuDjh6H6WUIufOTCpfInBamVCGO3AWeMeJtF22WKGelJWVtzvkCgls
	 tRuY1IvJQNTB6DuVZUTcMHblqEbTlbDqBgAFuO7dWHYhYl3qelsEaun5Kkp2gqNwv3
	 f8SnRtAZuEtRiGNH4xn0VqzqKT4Be3DY7p90QDp6k273yz/UdGb/IOBzP4QhZKvLJ3
	 HKK/cAD4bDX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99438C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172219295359.17808.456271689231433649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6390301fdfb8bb40213c7d77fe4cea1cdd46e555914860ab6f870d1a7dd8d7e
Date: Sun, 28 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722192953
