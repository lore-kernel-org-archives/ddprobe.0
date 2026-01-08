Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0609A32C8B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767885834; cv=none; b=m8qioqI5aXv7cSg/0nUf1bu9zbtPrZLz2VYB1jNeRzqr0UhJ/C4CGJWAOfsN/0gCxBoOlpKiAFv2z7/oxYQDWcxUE11FnD33qkfTDdYe4ovd77YIVWOSyUZDo/18i6revPXBlh6zkgtwC5ECwL6y86gxuzMINdWMnezc6bYHIhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767885834; c=relaxed/simple;
	bh=5gRUKZJ0PXrFGK1XYHpYodogInAjcpOchuuchjlAZw8=;
	h=To:Subject:From:Message-Id:Date; b=keWPVJZGwEQ4ok3qSTZL1Bps3jhfYw6yL9Yn5y9RSiiZP17eOPaOC4hnxbo6AFJ8T5oUsnXYYKD8rwyxzYVnqwCgQG0f0AMdBkPkAiLfA0QjVsPK0NIeY8bCEhKwkrbh/zWGLPiHf8LlUSgpxWjLT20enp7gWe0c0sIDlw3W0RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7ntNBqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7ntNBqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB4DC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767885833;
	bh=5gRUKZJ0PXrFGK1XYHpYodogInAjcpOchuuchjlAZw8=;
	h=To:Subject:From:Date:From;
	b=r7ntNBqpm9HytrViGQz9GYdsOHRbDtaly9bS35CgmT+vo5Ki17KnO67j8TEprBhJm
	 7rM5CW+zkh38tWGiyv+uPI/Ha4NfYK9j4Xt4d2Him517tFMxXK/2m2FMnzBodR5ZNj
	 ivwpcLpiW+9J54zBRQrAez8BHheiV3frq8d2IDic6qAZmfk9y+Mbyff4X0O9aFlkQu
	 2q9dh+14Jd6Xu7cqkuO+3mWPdOFFa+DCK2jNv6amUTXIe6UbSlhTKGRdCrRMHxiW2l
	 o+XPHQDYUMEryMqryZx8XT4fbEJdfKHPiTKcBEx98AyyxSzrYfv2rJilvB3OtKgB0d
	 21ruoQDZbTsMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CFD1D47A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788583357.12435.3864913406488028600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb6bcab97fce6b7f2d2c7fe6deea00861795c5692d6eee338efb4cf44186c68
Date: Thu, 08 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767885833
