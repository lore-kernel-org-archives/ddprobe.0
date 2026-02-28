Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BA73E0C68
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772305494; cv=none; b=u/N3llxkRr7neb5apOnoX2f71eVpIjWjETjIhE7zUqo9CXGVSmQyjW74Bc9gSuX5G9sDZieXusU1ANsL94aYjqAxwIdlHVXYLMyfg8Frclzclq8+dwoJd0PuZni85krov0YuUqmtthWKRAIEVMKKyY2xDuD3Qn6KTp0Y4P9+LPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772305494; c=relaxed/simple;
	bh=swDrW83N4Oksp6FqTkTcBNJUWm9z1aHZyhvwHnTfwxE=;
	h=To:Subject:From:Message-Id:Date; b=R9VVpeHA+ocrDxXi0GCUQqWn6aL+VKomC7HEEly2K0+fjMn7dL48nHSt3vAypqpXUo6IO6MdGknQ+n/pMXyv9r+JH+nWEOozy1VQzoTsdGntws0e64hwDWRj1nBPPeanikIiOij0mXgr7v28QX1P8NzRIpOAHrz0FykgRg1DN1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMZxkvPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMZxkvPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFFAC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772305493;
	bh=swDrW83N4Oksp6FqTkTcBNJUWm9z1aHZyhvwHnTfwxE=;
	h=To:Subject:From:Date:From;
	b=aMZxkvPrDvF2+O93peAeIyBaiXHhKHFUZKgxbM5YMKj/vInehiNGeNH+geUpxHxYc
	 sFcgYVniUngKFuERfStf9Z/mZgzI8m5eCO4UgEMb5rQxSBUL+G5ftJuOf+zr+lomf1
	 B3RM+fhgxjPtMB6Mg5wbHOTNVVUMjk0fyoKeVkFSNUReubKlBsopFmBDKEEOlQEXFE
	 Qmt0jLpWAhsJpNov8U/mRb9fNtuMWBmK1c4Drz7Xa1pevAEHKg/axraDndN8aed88z
	 Gx3U2PTLaXbr7hWAvOJ8k8gmiVRhyQwBxC2E2D+hHhAklYsSdomF+zAMa1ZiZ0356c
	 loHBIvls57ujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12CFEE4F5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230549357.27011.6398143638362296895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c68e9836321d773b7472642cc98217349d65d68c514edb9c5a666fcd3d07258
Date: Sat, 28 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772305493
