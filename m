Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530052877C3
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786404634; cv=none; b=nnVrtrnLDmXuB5LFwbBQPsXvGbnHekPmxzgOMf8CjCy3v1BFLpoQvzLPSGIP09Mn3EYKwITRoYJZ/+lqQ5YQi+oa8MrPHPZdwpwcgguueRdpE7rwXHkW5mpCUWxYnRgqmV563VbGoGxScvOKFCUrzK12/Sr6E+b6yyzQmWyGmcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786404634; c=relaxed/simple;
	bh=NcC3eSVBFUGkjyd6bQD6kQe0zFcLSaWYbHHsfuS/4nw=;
	h=To:Subject:From:Message-Id:Date; b=JhaDmWm5ipHmFxALm2OK989QTHAsvKBLOY5iYxv2mFKcZxARjITX29DNsMuevwPjaoFM3TA/8QaLOd/iKiTsNeKhbrkuiDnmLOm5C1otefvg4EiVGfa6426nGPlqDt0LidZ9sXuGikkCP78dGSY4uTWMio1QFlD8QP7upHK3acU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tx9w6Qz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tx9w6Qz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA866C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786404633;
	bh=NcC3eSVBFUGkjyd6bQD6kQe0zFcLSaWYbHHsfuS/4nw=;
	h=To:Subject:From:Date:From;
	b=Tx9w6Qz0Y+jCc0bt2TB5im8pz8zy5eQwnqZunYb5XWvf53CGafS0RCYgqMmvaQ4aP
	 AOWIMUrQvc7E2EbQju7RYaGW3+uqAhMCp0915VHRm3utl3X0daI+67tQUDhiCx8n/+
	 TNIKI7xw7mqQUwVIBdbDrTV+a8E+m90jPdf1mc82S5XlOuHJL7x5umqC2EcFmt9aHc
	 jln0NXhj6sk3Fy9k3obh2eWvSsNdPyZ1hJWfWW3Iy+ipCGeQ6/nw/w4/Ygd1njBLtb
	 q8fK4lB+on/egF0bKg6p7skblijhUFrdzPKv+Ctm5MfQ3/PX/j+XjXiPI4TVuw5leh
	 a3XnUF9XEMMFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FBEC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640463368.16193.12124911605139760031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfcbcce45d94ac69a2d5b0a1c958f233f66f99fe245dc461984cf3207db3593
Date: Mon, 10 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786404633
