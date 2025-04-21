Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5BE1D54E3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745253594; cv=none; b=F/zyOb1gil4XKbf2XveVmy8PNoZvh49nhdle1PaW/PUJN7ORxj8vR1gdj3fwdbTEBn5v+Z64TmSulZYqlaOmkPQd/cnFFlWYsmZlLrwMAKX94P9reJQsFZ9eTJepu84BdQNCMqTIERUyYFQS50cKgTLqXM+7AsJoTOmKLtje6hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745253594; c=relaxed/simple;
	bh=N3CVsq+xKhNsQNHby+WXAufdOLviQa1vR/8D0aiR7j4=;
	h=To:Subject:From:Message-Id:Date; b=KVG7tSADm4HhsiTlUwJmNJLCOxP1zm5R1KdgrcIEzsM8U+iHoj6Vgw1l/iMNfbZJUBhUcKSeEcdDkMmo7tSNmULNZktjpMiffvutqeBdpyZ+aoFLo+mXejcLAZvqqhB3u/te6NtUfO8gA00qpo8MTsJzXCA0VwulgoecRAd/Lo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLFKZpgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLFKZpgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4B1C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745253593;
	bh=N3CVsq+xKhNsQNHby+WXAufdOLviQa1vR/8D0aiR7j4=;
	h=To:Subject:From:Date:From;
	b=dLFKZpgVrKy+GHZjZE+z4FumaD35QEQtG8GD8YvprPQy8elog85uuM6agfC/LHKls
	 imcNPODDF06SelnYObnkfjrXkzDF1fMsnaYP0GTlrGfCjNHvQeKHFdK163scKQNPPi
	 U5s6tbnRQrfnwd2JKt2Mdj/2OY37DucB0QAbbJ7s8MvmDvXQcQFpXTcmBFOvp9Zffb
	 48mDgvZiYjF1x494bgUnvuj92gdofl3pXoshcFXJ6rCRbvV5FAvrrnTf3utL23jp0U
	 bakdpCJx6aBh5n2ATBDIenQCp//ggbAbYadZolQoPLjnQnxJy6tgYKKIqROHxUQuCk
	 efkhVnkYMHuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F05C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525359360.10114.17759091984145940527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b0bfb3c727439a9de5107917c3cce0ca01a6e09c3d14fa32c0e6eb1df81260
Date: Mon, 21 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745253593
