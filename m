Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DD5470EA9
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789118434; cv=none; b=dx7416VREUxbzcU7SfPaCG/cQJVvdtnoq57AzfP1rbONKqgdVSvb/gGcQU5H+GMVxhtEFCgQGNxB4BLpEaNZXfSsXXggceMHJzNdYWpf8csgY+52BD582pj5WjyjEmfVPFo85FTqS/QMZ7efGoGPA3oBhRw3LZjp+IMjl60mADw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789118434; c=relaxed/simple;
	bh=jyBok0wgoLEAJmfV0CiWujckJBkf1Brns9Xbv1irqW8=;
	h=To:Subject:From:Message-Id:Date; b=HKNTIEkNPlu8IxhCcEPRynXMv2idtU5kGA9WgNbtOkUyEsm5WZqIR1+/VAeqo1nSxaFgJ3BTSvUHTRIAiF7vvgypDC6axA19jmO8e4RokvVAQUT/RBP59dblOm3k+JE+P2PQMZQFlbHCQYEp6/AkeF/ptcnClAn1aFjGLk7fK84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO01R4ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jO01R4ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39EEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789118433;
	bh=jyBok0wgoLEAJmfV0CiWujckJBkf1Brns9Xbv1irqW8=;
	h=To:Subject:From:Date:From;
	b=jO01R4ewoSPq+lM9cfZifX5nJzhILetF0nDdCM0YGx/rlO/6nbvu8SXuzNV8VAHMG
	 ry1wgYqEzn/thOpcoUVHYqpd+C3qZJ9wPwzDbvrq9w5jTr9/D2IIlVTXa9f2i+wtvG
	 GD2AMtX7lb2cc7Bt4a58P5sOWviwDimyMFjnpBAZm0SWhIYXTFfXa7XfO0BCWjHcCv
	 nosrUHbprSHRn8jk/sideeEzdTcTFeveHajv0TPV7aslu549bf8Vj4F7UMBp2irqZ1
	 thD0aqZiLbsemqNb1O6rDwad9XDw4zRE6NRqdtI/5GLV2lY/1zhBB4yy240rxqX2yH
	 vwl7tfkXuqjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CDDC88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911843371.5410.15754127004013222344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6b57ac3ae404f6c1aa0bd7676907ee549ad8661b8de0c13359c069849b0202
Date: Fri, 11 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789118433
