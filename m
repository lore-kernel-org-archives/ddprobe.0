Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349651CD2C
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764651774; cv=none; b=RUfSh5JxM2IV5cOSWoIv8ut4o/DDCD2fuGj7yjOTngspEotAnjXN2GPp1slxALcaJ3HNDnyCBZsQq0jfqM492kJF9KVsIwxHn71KmWzJ2Ol0WZtVXqMgiaPJv7aIMxYrQFVd51l9L5Bcl/zyjLdwBqJqEmtQPWEoYFDX9RKresA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764651774; c=relaxed/simple;
	bh=Qv0FoA7GkADykKD+JZcekktJo8/WAb30SXi+AdDNVsg=;
	h=To:Subject:From:Message-Id:Date; b=MmxaUFXD6HkpPzvqd0BgJFFvHL7z4iF0FRTGY48y+yFk9/KBjyr24oObiBSe9Hp/0ChDrLvyh26v8tYLvQr3D4Zdq3ABuGhhGBN5x8pBK58OjABuNjI1+4v4JBha22Zp6/OiylFQsSmHfsu/rcBCDj6qzsHx3pJpVZd+MJ988ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mg4y5SGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg4y5SGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764651773;
	bh=Qv0FoA7GkADykKD+JZcekktJo8/WAb30SXi+AdDNVsg=;
	h=To:Subject:From:Date:From;
	b=Mg4y5SGb8+ABV2o8OEUqgfAuVdPBuNedCOViVMEGAkQ2fDgykHdhNzn1NKuB5d8kg
	 GMwRCUHceDH4CO5xQPfapB4Pjk+HflgzPNDQQ+kbQkbFW30Qc8XD5z6CPptxsMdTgo
	 YOL5Ot9PmjjuasFhvMFzbiPLMv0mh4DaOxkLWPs13ibTKFaJL0hf/lSM9i3zkLJnTU
	 wm1VWzB4M6qdSuZ+vIvBIeoV+CwgJo0GNT0FgWU0BmXltW1zu/1OvaARfcZ3J8x3Fi
	 /LDhHdPAVl2FJBmTapfktChDhdjtM+ccuiKSX5i6vst4lQHLJPzB2M/08SPlaNlcco
	 nfM4zFc9UsiSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91260CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465177358.21118.9360183935589233740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347605ce6bee9f31982d3a79efb8113a186c7a970c0edc61e3d20a0a30e7ca4d
Date: Tue, 02 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764651773
