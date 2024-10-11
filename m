Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC917D2
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728647155; cv=none; b=stSjwK7ixh5OKMRnUsqERqrgpvLrQiuwAYYxnZ67LBS361F0dsIVv7nCZv19zf2wAyF+n9L8sZFu4GYQ9/xC2jI1UBtDdDqyOMXwg72znUd4PTbttZukuUS/OTZ90zmGm8Ly5w71lquyRU3HdgD1S3UWkN/mcHRnL5Pc7k25xdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728647155; c=relaxed/simple;
	bh=oC1nDuF5YhUP/M3swkwFe+y+rwJYbqTq2SGgo0Y+4NM=;
	h=To:Subject:From:Message-Id:Date; b=FYPHdSP4Q9h8iZ1bMZsGgJvzuL2blWSEyClRa/G3cpAynCZgKgyg8sxuJnoqF/O8cQOVNwjLbidc/e5fUFcu7PE2Unnou8gOPxiDDfxmHcFU+N5iCR+F84LyzOKXQU2BTEqc7wHp5k0+q4EujnoTNrHX3u45uXKhRYziWDaxQAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DybnMjUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DybnMjUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8680C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728647154;
	bh=oC1nDuF5YhUP/M3swkwFe+y+rwJYbqTq2SGgo0Y+4NM=;
	h=To:Subject:From:Date:From;
	b=DybnMjUNx0oTsSgeFJrdO5ECKlKN4yVllRXp8wq38OUGyhuWALvy1j09xZot1TZr0
	 7hIf5mpyC9/6rfUel0utoBN9DOy0r3rAMGcFQpNYLmLh92tR82O60R+fUaaoLi7MOl
	 7tputI0soUyQCVQ23xuDrecAundXebt+h6YhjTgEu+0megwUrYY10uIiebcDdrbZqI
	 d+7l7kUwJRIUdvcosPSvVEByblgp9pI+Ilt+jUpR+IhAEqIl6AcunchDuIaXVxr55/
	 0n0td2AmrzIxTx1WcXpOFEi/qGh/8YFux0ULER26mm48d4k7PAoZjbUvpylz1D6ZNm
	 zoC4x/o/+XL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C15CFD354
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864715360.28454.6052074442182775689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1544f680505352ffad4b9689ac6d8201e0db5a552630f56e90248661570025fd
Date: Fri, 11 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728647153
