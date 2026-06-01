Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB693D8104
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780328074; cv=none; b=GdBiUei9neeVtznRDUtJIDnzB/oqWdtHvecgyC37Iee5uA0qcKH7qHB+GT5eY2XRdDlDFcl7oJrm3AFjoprvDiOuOjyQ3janScRf2vsoCUl6z2e9wwbInhRIh8H/p+Vi6hytSqf27S8Qvq3PxpDnzphzLDy+8wGWXqrs48S2YwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780328074; c=relaxed/simple;
	bh=S5cVI59xLnNsCdryaesFoJvX0xSjZHIBfVRJheBNZgg=;
	h=To:Subject:From:Message-Id:Date; b=XARDcuwBVp2/v8KKOLiMYyxqimw4WI9fpxdWKEs/+n6L+thYkQXqI7QAwg3aBwWX2VVGYjHqrbqMdra7Vfw+qxfQ7Hk5XNbbrES8TXCzUvDUYZiEXuY1uz6NUtZ0SAtX3ikFu0auSx7nl/jmU31Ioyj7PYwfUT5b40MhInQvNYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGuYAHJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGuYAHJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D4DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780328073;
	bh=S5cVI59xLnNsCdryaesFoJvX0xSjZHIBfVRJheBNZgg=;
	h=To:Subject:From:Date:From;
	b=UGuYAHJWzoJM1fDzWekMDXg5L7sAkd9pf+/M7yLS1bBjIc+aAZcRSUV/mDyRTu5dB
	 12Sim5Yhzn5cBvkIq8pKR/qOvbnJ9nH5jcFvAFf8vreqbaUidF2hyw47HWZGtpIFBF
	 A8Ixfwfh9BBGotRLhRpD/uCEYV7D0IjoVZ3RQIFUE4C6KOytqM1eGua8gCnPiN9KOw
	 DvJqQf+nnIg0/hFW36Y7gYG+hpB6pj2mVIxQ0M+zSZb2IgqU+yT25na2WHLFCLHtEE
	 JHZOqFkLLgm0EbH3HehPq/Yx2aUM1HhrjA+uvfFI3lJ5y1EmounsUIkXhiz5+j0irV
	 KMSKMWRPvBYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF438CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032807373.13836.1831894643538210356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061b15dfd876f3fdf081ec3ef58f0b3c5cf1676ca235871cd6bae3d4b1ef7a06
Date: Mon, 01 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780328073
