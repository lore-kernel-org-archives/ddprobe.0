Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379811531C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741892934; cv=none; b=Nts6+LpYb3naLTnRFK/CKZkKzymIKMSEVnKt/6XBvhPxqADK57ocUFPwOmDBqmI12D5QyCJ8gUfZOh+HYLSpcEo1DZzcUmQf+/64199d9ODLuJ/ixzghBmm1T4SJSzPyFvH/oOID43S+ybvAQKWurizoZT6OQk+E4TS3NyMgt8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741892934; c=relaxed/simple;
	bh=Bc7n0EmUoCBqS+miMSJ9gUv0+ltdItE1dgHfygcdjQc=;
	h=To:Subject:From:Message-Id:Date; b=K9huB8WrPXN7QMMZk4LrINKbTmr4Aj7v+nyB7xOC0bJMD6ovTA8Atq1CzhQlW3moy9+8lqH+yS32EZw5SPsPjUOS+nkohW8Wj9g3l8VlvwixshIWYNWpMDIrIflOaTx0siv1P0MB66wykDeRHAnqKpJxDxmLI7YouEMIy1XBhak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiYWqNN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiYWqNN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741892933;
	bh=Bc7n0EmUoCBqS+miMSJ9gUv0+ltdItE1dgHfygcdjQc=;
	h=To:Subject:From:Date:From;
	b=iiYWqNN26gAVMzzICHIS/zc0DaHx1NhmuZ7pdW4s2BHpvjoclvOyltg80+JI26yaL
	 giiwQXdy44lBCfyy6+3OxFj+pbn+zLD/v+DqyyDzONel3OVrOJqv1EhgA9XHmRzbaa
	 bGAYiXoyz2B6l0GmJOd1CBh96kli7qye+3b1LmbfpwU2JemXb80RcuGe01WJ6K3yl/
	 CfPtmE6CXDqBYywLWK+dwQaeSeJrG7Jgv+9c2vAfKykyYpbqDDuBrTdqPZnWv3lfqe
	 mu3BSuuKKj8bMDmXXC9P1wHwatGq4mOqDuHHUeCReGjuqXvrhuo+MaVx/Vsn4rzv5W
	 ihP4P3s8lJ+Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAF7C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189293361.17168.4801333685365517528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98e4d3f8f898a251aad9cdb9f6c6fb029712d8ac4f9aedb01a953a9365cf20f
Date: Thu, 13 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741892933
