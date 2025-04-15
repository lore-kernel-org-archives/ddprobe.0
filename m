Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4184CF9DA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744726194; cv=none; b=qrw/yPLDB3bKeO0PX1+DO3uUjQRKoDb8DuDSqSHLc/nzQMi6Nb9+UOUpq/2HQuu8XJ6KQLOZDN1snvHB+cKynk3XuNwtirFt6QWyohPoh6yXgKnV2jnXo8v7yfOJHhyn7EPU8pf5KXVAbPz0PXDh6m2Ky506o/1OdU4BLSftTF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744726194; c=relaxed/simple;
	bh=p5lwpZZdeQ9Qqh/kugdDyPz39/FDgdmhR6ESB/WncD0=;
	h=To:Subject:From:Message-Id:Date; b=Jq3v65bE+hvp5qtQNMhn3zra2DVMbZ9oa5iChl5XjzfpkK/PIyj8v2YC7/PL9jDD9xKpDBgRFnQvM3bWPzGl0/JW9QJQNDJkPIxYd6/hd2ICPqzRJC4ak7Yic6piKebBqbVBLBtsQPm4eWkLKS56Hja3HDUXMkWovNph2QSAJv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpx9TC44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpx9TC44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6BC4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744726193;
	bh=p5lwpZZdeQ9Qqh/kugdDyPz39/FDgdmhR6ESB/WncD0=;
	h=To:Subject:From:Date:From;
	b=rpx9TC44csM9SwwPrsLQR4K/dHzkouQxu/fffDs0qLdY2n/bEW4L1/tMNlcg5WwQs
	 N1s6oU4vFfY4lPnst7m5M4iTCTZ6faJgEu3a8HpWFt0lGgLpRSOyeZViNJE6PiSTdF
	 3AMZnLl+tHvsFPyM98Y5eguS/gtbRiDDSeP2t6IFIPw94kI6zkqlIV1qQfON/EDOsE
	 Rn4OwKA+4ra59ebp5DuPu834UBamTilK3HlilWF5njM9h+rlLLxp/f+vC9KNsrGDZR
	 vqYNBsaLhqdE/hk2yTkoXA/baH05C9SBaT35twk/ACm6vJlAjU0kL5oMNgECFBRbQV
	 VhuSjRF4aBsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029EC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472619358.21953.14526540053646435374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f321b807679b13098fecba2da1418fa22095ea0452ba39e5c803b07ac85ad87
Date: Tue, 15 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744726193
