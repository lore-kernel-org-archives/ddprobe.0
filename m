Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E6E2FE577
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768639434; cv=none; b=uqGKs0ligd7MWEONXqmDaQhxc7ZzuOMuoYk8S51+T/25dEeVxOYxaR3T6CgUMj4LTu1IrsPVSwK1w7A3VltiBkehnIsM/SadVjLqW5oUQXPKh6VSXG1ORE451oXIuQep4siSVHf/40sOLpGeVzB7wumT0OIXATkY+yG30kO1+tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768639434; c=relaxed/simple;
	bh=FLANeALl5Uoi+EXCpONAA0snp7eu6/xQRH42MHxw+TA=;
	h=To:Subject:From:Message-Id:Date; b=iPlEikJmWlNDC2SbOtXcDQ2WIRahzYq+CQEs8tN25g/PmR4tm+gNfHcLykelQMZiLVzdnU9DZMVDgdQKJjYNoTpvjvB+YtAGYKXBqhhGwA7nvzi9YrAsXRQuGxwNcweMxqBT7PT0+XBjczcFUoQy8d44ZpvU+8BrrP30R9G5erM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXwOR6cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXwOR6cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA74BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768639433;
	bh=FLANeALl5Uoi+EXCpONAA0snp7eu6/xQRH42MHxw+TA=;
	h=To:Subject:From:Date:From;
	b=oXwOR6cmrZhoQLTba+1vD8t0eV+F02Q4e7Sp4bD72tY0YLXRWSNRGOQGOjTWRLdDv
	 cwVqmgY4mrmOvyk1R1kIQtdhEHnwtWiynm02TUKoe3mS16NxeJMz+ngoguCnWWovzQ
	 KboCczAeEYidtX4V/04CRcbPwLkcDwfeBpxDGX2EJYPu4ksSSamaJ+Kty+4DLZK0x8
	 MHyq6bT68rveMbJQ/yHln+X+itygDA6866BgQvKAWWgl7AfTgTDH/AYbrovLyWzVjL
	 HYqNlHDZP12IjgzicOaXC+88xYRAn4MkywpwZWXkLBXagGw9q1KaRsb7j61WRhV49k
	 qXlyc41Nu6urA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA43C98312
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863943358.26467.4060159826152227154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8348edd0888aa4fbfbc55ad04699404f2b754b770d4b990f24028550d848ac85
Date: Sat, 17 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768639433
