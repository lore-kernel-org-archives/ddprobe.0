Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C33823ED7B
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744142994; cv=none; b=qDbn5TU0nD/Bv/sjTBiH0xCoBJlTZ8v7yzgWL062D/CUb3mkAXslouRJVt/D3C2NpIe7m5lvXjgvDfuhLeBAH2M5X810frmQrRIDegvxKA5DRhC5NND8G3nPz5g4eBJHKdPoNw5utX243wuuKo8fb27QhvLc5T1E1CA87XH4pHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744142994; c=relaxed/simple;
	bh=dsPnzzqZx3Jt3hUunPCxlI1Dgb0EZfMjG3Hto/095D0=;
	h=To:Subject:From:Message-Id:Date; b=RPf/njAmUzmeZ21diaiWfGZGQJHjTFjZLocdY7U0+dAwEm/kJyWOcbm5ZI0hLzWO7ZnLQGIFxmj0opLhE2Hq7QmzeYhI4IJNdF2AHnDNeWNec2O8pLyVhe53HQkHv7GIvZX6QTOuPKDWbw4VEiyrWMxaXHGlNQthAfHtwJFOBh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhg87utu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhg87utu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBEEC4CEEA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744142993;
	bh=dsPnzzqZx3Jt3hUunPCxlI1Dgb0EZfMjG3Hto/095D0=;
	h=To:Subject:From:Date:From;
	b=bhg87utuua/Dr1bK9hXhFUu88NEdmtGcUBGmhsp4bx26ll1P59ECgLBXysdz9rMg+
	 Qpq+abmhzikxlTylBXxayNdY4q37HSw7SQwsahAfut1dHEypJ0IHeC/TBQlyaUjw8a
	 WotoBu6Wapk85YatELYdQq0cRQff+lXdSPRQ+vYyU/ccPNY0FBZf9+7ygNhPbA/wYp
	 V2YOJTHKeK/tiyOCMpkc4IOjyoDOEBEaWeXisZSexrplF+OgfWfBIpVet+6x9YVxqv
	 +r+alT87Gmq/nim1jxpjleGg7YS3W9K/TaMyGwHwxok6jpxEiZMRJ39lj9eZ3qRpuM
	 ojmFz9Q4Nwu/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFE3C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414299363.9218.13236580641153026720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2163d35d19497b97fc7bf07ef3b8775f3e7dbd7f2f8aeb6c9a0616901b54a89b
Date: Tue, 08 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744142993
