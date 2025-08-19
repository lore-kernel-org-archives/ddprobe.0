Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F662D0C68
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755622794; cv=none; b=qHvKsQKXZGRKH8WbFVjec44WgOuzB1emwMAMJlBe7b+mEwd+XuRP9nfe0KOFriVtYgvelZBkxcjqndCoI8/Pd1wIzUcccURVd5eVP7qg2wkgWa28y/ijhxw2XE42pg5X5CmWP+vOC6sP/g4H9aGrY9aIjbOr2UQRJODtKh02jmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755622794; c=relaxed/simple;
	bh=ZxJnFn8VFf0McTxbpAeZGg52kSLmzf6MJhT2cnlmmz4=;
	h=To:Subject:From:Message-Id:Date; b=FUdGVU/edAzGbF4xsaV6pJ9ge/g7u7bK3jLxp7FOi+a3/Urx3RmGlGyl78hNN4Rm5eb2NNpPO8Bc6QERyE58h99jtFd0Vn3U16l1Kj9h5DNaSSr3Ak6aO2Ba24sa/Mbvd5eJPsM0AJvOZz1n04Ky8DOIWHlGj5HcXTDugEdhsUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTPRRXvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTPRRXvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FF5C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755622793;
	bh=ZxJnFn8VFf0McTxbpAeZGg52kSLmzf6MJhT2cnlmmz4=;
	h=To:Subject:From:Date:From;
	b=fTPRRXvYaa7f51pQtlWZgnlIX1rJy8C0hnZN8F0KLj3r1cK6rFRK1FVRHOt2jyZxm
	 AiGzKBDwif44jo2BMJOr7kFvzu0TFH6eWhDH1MKim0QZH8GllYXRSs8qv7/EzCcoz8
	 3WaqLN4HYjDQNSPWYZKn0IhcGNGdjF+yxn+WFycj2shGU7rgGyeeLnv0GiC8b90Ip2
	 CIvbqvYuUWm9Rb+kv/XL/5hMSEwIlEPKyQes75ikCRJStMnMNjbPNpkJtoAOppo53j
	 drUNx3NVO0UxgP+zvJQpQFPe+VlqQBu14CTjx9CIMq7/piHfsYnQPSzbSf7Cy7eWde
	 yd+c55dBA5pfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C6CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562279357.25288.10627139792176959193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9e6bff0529843926af348d01799103737522d7fce9e0397918200a4ab5438b
Date: Tue, 19 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755622793
