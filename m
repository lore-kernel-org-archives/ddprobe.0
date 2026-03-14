Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F078349B0C
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773517494; cv=none; b=AL7s9ToLoHCSzWAPzZZNbb5fF40Gr/aXESy1xFFOh+nchw5Oh5mATnAjiUBfD6VaWE1FU/fsuv+QU62eFf8e0q1TsjoFsXXVPnqwOwLHeXmf41oihS/07IhYKEWiJBj9YTcZQjhkG9NbNOzGIWH7s2fNAur9jgSm/+AcKDzAJKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773517494; c=relaxed/simple;
	bh=LuRLbdzuGFqG4gty6qLg5NiAImk1+/dmL8CgxWK3lfI=;
	h=To:Subject:From:Message-Id:Date; b=dsW24XGU6lEfSjXaQ2UDDJiA8lNV5rO5HhySrvdmahfK3OigK5mtTwChJ/tcAcEd7d5cnaSkNKtY4dNARqWYoFTJ/V7lWE2PiwpNCu4W1lWe+4Gjc/MNB6VegkLrdjW+tqkeyqFpKZZ/uBkmvHrOvHSYy7AU1PKr8R9G0D3+aqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkIVSKCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkIVSKCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEA1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773517493;
	bh=LuRLbdzuGFqG4gty6qLg5NiAImk1+/dmL8CgxWK3lfI=;
	h=To:Subject:From:Date:From;
	b=VkIVSKCLCx+M4yxQ3KRA4Pq/XYc0thfUq2EQlOSijUL7CwCpFvSh1RPA0TWaihaCV
	 xk18/nN84jPq+MsqstAYigHfmhw0hbdNUtvm8ua9o/9Om/wOgRsu6cHoLYucB2K6f7
	 MJHGnojNhgutdOgoxhpCHPQRy0qpGCkurWrWd6FTazVMCuLnT6Lw5JJkJLo7PyfZYr
	 xQsxjRZfX1Si+UsbHYCtJcmkxymS5NttnWlwlnwApt6BHQHo7qkQUO+YTTtBEwG6bY
	 U5d5z40mBo8xmTdRtvKdU9qHOgegyrPOp4iWQLaGbCCUzT2DzJhw6+3nnwyzX9fkeS
	 yzulksIcyuLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D33F105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351749360.3649.17478760318723784597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4005f01cbbb15fc3b658a4e2776fdf28afb3c176dd6b5f3ca80b57134e965933
Date: Sat, 14 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773517493
