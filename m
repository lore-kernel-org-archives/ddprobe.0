Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610BFF9D6
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716914063; cv=none; b=suFSVldVjV9adJL8xsXFO8CD87UsyylQ3cjxOafpjH2aGLSZmmqZGeh5gJBcGZFwglec1wco7GabpindG2cCB9Yjpv8itKBeSlbmDcii5HG4u/CMtghzidXLfI+5oogbdxo4uNPCBidMKsKKwX8j5gwnNUPD0b7/LlU0csre8t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716914063; c=relaxed/simple;
	bh=Qgbh3wsrewUm0M3Qo+6E7Pvw4CsI6jb4zOVC5PfeNJI=;
	h=To:Subject:From:Message-Id:Date; b=pOgDCixZIiGl/FcotSAxxO3nfm4Q5LTFHZcmhKpuU5F8cbPZJ7+3iLulI81kct0XXlEwgv9bfWAwT1SACXesS1BfSx7Wr+6hhdrYAexB/gvQW09r9ctnTngWvxaCoELUrg+rFMbPb1pJuxScGqBgQ6p8W0A3JtuZoUj5YWyemFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyzsLNle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyzsLNle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD478C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716914062;
	bh=Qgbh3wsrewUm0M3Qo+6E7Pvw4CsI6jb4zOVC5PfeNJI=;
	h=To:Subject:From:Date:From;
	b=fyzsLNlelVQd9oEeLt7+gv8S4VgGK7xz3Om8MfXpFybuVo/o9TJkqq+Ctqqx1yEgy
	 rmzj3d1obIcsnGv74GSmHf/gD2hRO9iZM88m0kn/uMh0mXD3MdeAEQvrj8NataMocD
	 jqlpwgOqdgfWnHOxi9zmpojvL1zh5E9NK63LtNtOLv01ic13zIhPH7RXYcRkkHslzE
	 e+4SG+ds6rIrwd3Y2VSOAFmNbpzdxStz0Ox7Ley03NJ8hts3vDjqEvyHiEwJ6T94Vh
	 foDe4a9tEUuGEG/SbV+/T29GVOlB2iuTieBAyzChQh9ycBhMnB3JSOOTjoMpm5cDww
	 1m3E7XibvVOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA52FC25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691406281.11692.6996628329564420900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964a01f2eea81f204443d50488be580ae8573660399fdbf98f5bd99a3feea759
Date: Tue, 28 May 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716914062
