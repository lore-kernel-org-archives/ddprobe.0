Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6886F374CB
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719811463; cv=none; b=AP1trGUYueJO6iX3+lwTBVt0KqkeloLjNv3qdQYencwIAlsVki23XygGJr6o6ViL5gaTewc8B43Kg3fnfaydELpAZe7BEd3UgMl7scq+rWaFbGA93GrCEiu+052REeKfNRHD03hV264dRbP1mABuwj7vyhEZ+aCYc1YnK0wSxb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719811463; c=relaxed/simple;
	bh=YKzmUKTvRN+btUdK8VxGZtUlmT7kvdDC6YGZb/8g6yM=;
	h=To:Subject:From:Message-Id:Date; b=Drznde3r8Hh/fOb9f2O20zyCFlXl7lqg1wqiX6QlKDE3/svIVwUPiiSHXwkdd8Q+2exoiAHUlZMiGNIxMCLcbSd2sdXv1Wi8K9xJRcwN/2MVFdhUrqSQCp0qnPmmUUYGncR0wooCSIa4ncpCr/X9F37hKwGgJPnuTmsxr+SUS8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dp+AMBcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dp+AMBcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FF6C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719811462;
	bh=YKzmUKTvRN+btUdK8VxGZtUlmT7kvdDC6YGZb/8g6yM=;
	h=To:Subject:From:Date:From;
	b=dp+AMBcDAV52c/SZCLIYNMirpRPgyzmjG8r7IBLiNAUo2CmgPlj/1O9Kq7wey6QoB
	 N4GwxC5FB0v06x++aBJWtcauoAJgShVYL3DPFRDD2Nz4MJno/BHKkS30djpgQQYGTn
	 0/Adz1Af0AIMeUrzI8vcP5nsw17BaA4cEsdWYL++B7Bmir/kLkF2oP/aIpqH0zYORR
	 BS5nJ6bfrAEetd+V4vJqq2zSVZ4yfFV2thw0wyIwY2Efi9PhcGzjYNOR0plsY5OD3q
	 xM6ow1AFn/X8JYcNJXmTPIgMuEJiMybWlQgfv/PMLW6VtRyda2n0s9kkXPIS0gTHz7
	 Cc1CBeU7NzE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB2EC3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981146276.30862.14221836997158128984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547c6f244f34574dc7aa2b36d69b439d3a69fbf2f39ca3373c831d64517222c7
Date: Mon, 01 Jul 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719811462
