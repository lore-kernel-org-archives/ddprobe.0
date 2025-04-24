Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEFD1805B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745526595; cv=none; b=RCu1AaexSn4P/2HySvRKGYBsXyc2GcVa3NO7QRBx+bdERGGfnLXXDpTR5uAk6l+kVOW9qttmzJVzakRKZASuAqHPSf5vl6nCarmrnBsGsLDFYDC5zF3T0lKc1hkh46M9e06wYAN9BlQBXLAFyk8sQXDWmKEiTxU7Cqeo5G6Rfao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745526595; c=relaxed/simple;
	bh=wQrxOGstSisXoN7f967EWb8Bd42qARZbwCnLZ7ytUos=;
	h=To:Subject:From:Message-Id:Date; b=GN8aD9YeOBvisPFYoxeTuCe5FbwjiMEMJx2e9XxveujqdHBNUfFETrV63o/VRxd1AX5vVI2h4znAN+8EkRlDoqQsxJv5OizT/wginPtY6zh3aRkysg0ywXjoVYn/RSMhBy0ZZ7G8/ALHhjclSulj51FOwax7MOeOgcHjXi8XzrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg8T6buH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg8T6buH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D055C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745526593;
	bh=wQrxOGstSisXoN7f967EWb8Bd42qARZbwCnLZ7ytUos=;
	h=To:Subject:From:Date:From;
	b=tg8T6buHcsSkhlXguWHOykZJayfF8+uUYtiahR3jkg+cJQjjuUr9leJYzC5Bbif0Y
	 q4YMXl5c1AqKQlN5JPaMtuY0RGF99p+YblDEOIAllW8b6LiNu0b78WNHNYZOp87oIp
	 +4eMiv1s8JbbfY+FPP9BKlz8Nhjbr/66HnfTQ2FrXrs+u27u2XgcRBQmzCNpLZ0+/u
	 KCL+Eeev5k99kbvIKrTs6HF/fjq1ZxDyce/jwjQx8ytrb7YbAWaC6Y55LwPLjCBEjY
	 2vbwr39H/hAiSetJODsPUOfyD7nAEuu3xkfSve3TWikqxD9ZmX8L95+Lp9KVpyFFRx
	 grnBO06Kpb/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2E6C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552659357.7450.8193361671971688395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aba856d0245df4143ab7806d665a415c92ed9938b47c52b18d1ce3288d9a5a1
Date: Thu, 24 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745526593
