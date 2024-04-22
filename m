Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F087481CD
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 06:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713768023; cv=none; b=n6GQp2ww02Y7sJjkKzmMmTY3m3YwE3RF1eLFX3tOkbb8TbXVcePFwYGR9VhQOSdfR53qr60zKEX25FUVpOGtNZxEb9WLsUHOs7m4lVVx97/GkebhRcNyHhhGNoUxvV2PsO78gtoqwboxYJtIjRkTbPEm0gSYtP+DwPQtr9fHAJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713768023; c=relaxed/simple;
	bh=tfe0CXBdZeVwbX1Rrnu9fopfGltfas/Y9BPchAu8TaM=;
	h=To:Subject:From:Message-Id:Date; b=LOhSSONY+k2f1MaLqSa6quVdqxoZysbtm9vu0KyK7xHHl5/ohEtTZ1wEBD9X0FZY4bUwIh1ucCfExYG9uZldUJ+2jae5rfDDYUKU37oRAcuNzdDwlzH+3q8ZvCvVBnIQhg+AwiA5hgtFtQmOmuW54x8HC/lGu6Gk/dQE8yalHCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URrCFOnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URrCFOnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D645CC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 06:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713768022;
	bh=tfe0CXBdZeVwbX1Rrnu9fopfGltfas/Y9BPchAu8TaM=;
	h=To:Subject:From:Date:From;
	b=URrCFOnUwBhGvgDXtEULRKemgqqa73Qr/O+maUeemQg7tI4B1CyJFTBB+asYHgbUP
	 KpJqSkKJ7htXIXFFenYRQltR2QS1qA91g+A5+kQjD3u45lpQKVXHfL60mUBV7iAS+w
	 mpHqKzH8LqmJ/+ABJ36iDEBa47Pzq75tOMBI9pTQbtpZS0J0b50xECIY551EGlglU8
	 hRKIiX0UBLvYVWuEqup6KKrt/A75lFYeKRf+u8aVLecRAmktfg3wiNEC82hD1tqtVP
	 R7pCcZc06i80pgtpAfJERa8SViuNCXeuK0cJjswszwOVl6Z9frp1ZgFVXn7qn7Q5lW
	 nL0kjzLBGj5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3285C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 06:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171376802278.16015.9731890969190669881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcea6584d6fa014b034128e24881dee8590db5bf31b9d281783f2d0cf8be02be
Date: Mon, 22 Apr 2024 06:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713768022
