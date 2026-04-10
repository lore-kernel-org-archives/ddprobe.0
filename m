Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E8A1862
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775847454; cv=none; b=UxzJjoFGSOxz9M7oeBemvDk90wCwh6R1r94ncxxa9GrZpI17e5flMuDgN7WmmkFQ+xo4fjcxj+LjnvemV6kupuEoa3s1L9EIcLdFuu188UioHNzJPjBKpVZ3a4ZeroUvSTL8aH7uWcl6+z3P7JuxAmFsDeOEJkzSedt/PvcOFl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775847454; c=relaxed/simple;
	bh=YoE4DKXSPotsLwaheELKQwnQtSoixv4KohIsalelEpo=;
	h=To:Subject:From:Message-Id:Date; b=qmAzFNBwUiIdPI6XbRMSKOO9Qs/2ZIKdzL7zograP40sNREyRzc8HJqfxxZHzt35Z5glRZjjtYl+MJCA5tJLjcdaQE5pEs/JUFwwg1upivXfbaBAJp6NnS2InRUWdw0mqiOuBpb974+UE8xY5egA7Ew4EiQrpWp9UScomGy0YUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP2ZBpaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP2ZBpaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0765C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775847453;
	bh=YoE4DKXSPotsLwaheELKQwnQtSoixv4KohIsalelEpo=;
	h=To:Subject:From:Date:From;
	b=OP2ZBpaEnFNY01io/6cfKxxwrB1W78EJowDYZlwRTAFzv7ysnoI8CEMhKzcyzGwge
	 zYnmA/db8w3ZO/WEfcOQJvf6hb/b0h3ZiFwc4ddL+wvLn3yvighhYPA7vMscXJDSNo
	 SBXzYe7C1Tl9xs52K3VKUsHNfaoXxcsdonOWtOxkPaXuiWDhaZ/hk5HIFH77Do/26K
	 muF57QORD4DxhKc6odYMMZDYIxMJdYgVeswZWm/s4VgEdomjW+KkvZ7boP2sYt1/nW
	 ahTP3U6TNVP9ClJSqbcCrv8XBPmAdANK8cwpYGWHMoNdz56d0dZa4RHMVOhL9cNsYT
	 ZBNkd0hzEo2MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2FCF459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584745368.13234.11121839818026129193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecf3c361a3a1aed0051d24c84f85b62c6fa9b7b7af9e0f09e651a1c1f1a93da
Date: Fri, 10 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775847453
