Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEE91DFCB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757853594; cv=none; b=kOWTtTMUQh476MdKT0s7WpilxsWEtfcZcRPJ5+i+VRdyR8zI3lKS1hM+y4lNB25NXfFlXrQc1uDDHWFTaT9fm8k7TaNtCa+mccPy8DTyukjOYGt4LWFk9qT6UpqLWJzudKQfIxRO4RolCJJEYy/kZgFPe9MK66gnywdP5MADzgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757853594; c=relaxed/simple;
	bh=dW3fUOFHUnfZGmsib+bzMVJ+J6HIp60NG6Gp/ffJ+U8=;
	h=To:Subject:From:Message-Id:Date; b=BZsclvvelSv3KwLRBiluOF5ZjU3u7Lrv2GOnQHQf/PzXTRycTCtTqv1uDxqmeT7yEgF9g/q+xDNOO1GlSanYG7FZSd8rZ0mxcO7tjvLrcyyuirwgoiA5jD/aptNdlIpFyq4y4FtqfWfaTbvtlNHN9miWwNuk6YOOFok14bQyeMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlDw0ci3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlDw0ci3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA376C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757853593;
	bh=dW3fUOFHUnfZGmsib+bzMVJ+J6HIp60NG6Gp/ffJ+U8=;
	h=To:Subject:From:Date:From;
	b=QlDw0ci3CA1TKUM2RXf4q2xdqRgDSCRjSom7tTEcgNqb7Lcn3IW/8IaPaGWpyIbqX
	 +SD195Ht97xaP+Z2/DC6ip0QhVvA7bqFlrG+SMHkSBhLWyVYYmoNOmSp9d2DikgMIs
	 9/M4z82UG6jQrBB6xTFk4o73PlF++7nchoSV18irzMYC5LGMRUF1SU58O0j//G6gdL
	 QQ/h2VFeasqgVJTWmO9yHTlw+vB96PkP67iY4IaWrlwGJQTVZOhQ5mieVTIi7hZSZb
	 kIqRrtzzyP0JMbGnC9Mgi6DwDNMwqObvfDs9sBgRKKk/ZCuut4+OhCpNOg2D3eVOvJ
	 IDsu0gw0iws+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93456CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785359358.5594.6876130890851279388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d67e09fde479e92834e60762750361af56c214dbf7e7c921a617ebecb73ad32
Date: Sun, 14 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757853593
