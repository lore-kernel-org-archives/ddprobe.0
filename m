Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6A33C01
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751232594; cv=none; b=W/9Nqmd7FhNMXkyzP4Wuj/NndQvJBL4xXNLn1I+yt4ES0cwa6UPVkW89W9D9BLDz/Ml8JtDkQUXSJ7GiUtMUl1HQuUF9/wd7oTZHT09iteRbBfix8a0EloYDOE5PQFfgP2LMfYs0N2q2cG7SESJNVKkpnyu6h3ymDRa6l831Hcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751232594; c=relaxed/simple;
	bh=wUQZzbW2Lri4+Ziar3csF7P0VFb2VNFM8i/TqV5ciXg=;
	h=To:Subject:From:Message-Id:Date; b=KH82saQ0JIzDy0GEdIVSvwZstLNyAi45gR7R3Pfb0Y6wubagQATkjWo6dWxzo0/3CHEh9GiXAMVh9zY6VNf+oTzhb1fscalMAb73ikCVckq8gJSwJtgYVi5XmLQz32xwZ4NQkGf8C4D+SF114RpktO/HWkcCnysfDVnZmOxrVPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5bDnVBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5bDnVBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9B9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751232593;
	bh=wUQZzbW2Lri4+Ziar3csF7P0VFb2VNFM8i/TqV5ciXg=;
	h=To:Subject:From:Date:From;
	b=p5bDnVBcCw5Q8xcRK0I/GNQqcGV5OnESs3WfKQ7M5DHiNNCw2I8iR6M9XfqzW9Z06
	 dLdz/KBJ7/UKeitOK/kZbSC/M8IFM5VboDlNC/dUnOwtGwXIWX/v9KNEZYjnc0KwB3
	 bf/cyX0fcD7jpLJF6GV5xd0snZ+aViDYQ/o8EWFhoAnIXuxw6KA7287QUhjMrU4z+k
	 s7I/NFKMm6Ju+VX3ni3y5PccGxeTMFhsHT06AEzTcSl2hVz9RfnAHlHVoMlIfGy3Wi
	 hkfHR95McuhCg3bCWld1/UksvU7XcmOELl/7Jo55h5T8pE9eThEYuz+iUG9PGMByl3
	 ZaFFw7GKDQ4rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E83FC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123259357.21153.8528314340532348144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45146b7969d5e879e4e89944c7a61e50075aecc0f7c4e2e77520703f4302491
Date: Sun, 29 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751232593
