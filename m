Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4590F26619D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739463534; cv=none; b=JIDrfxOpstApvghnDDkuqHvQHSNhGKVPvHoCvj+uAPrmUrt+9lIwcnylEAfI97QFtJp5xMBJ+w0RZU26HJK9OJNqyVSC58T6jtnQ+waqOfxUGjYpf06FDv6fbZSgEJ8lcb8ZAiBqcWY5l12lt+vLkKQkwZe51NgBytVUhlyCrBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739463534; c=relaxed/simple;
	bh=lwkGByE7autRZrfKDPOo8KJSKbd84ePQ1d6F0+0cgJc=;
	h=To:Subject:From:Message-Id:Date; b=Go18349AkRW1I5P0/YSF97lmvwLi/N0iI1S4sQ8GTFV0LV2q0dq5bPIsicgXLgCAFb7HvBdLIzrLUbxwZHu9lobvXqqibegA4Bow7OMLQXeupKXXZdiUiQnka1JxEYb10FE1fQga/la1tT6N8aQoDRfzXoSNkH2ps7zbSTWegbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7huzVP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7huzVP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA977C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739463533;
	bh=lwkGByE7autRZrfKDPOo8KJSKbd84ePQ1d6F0+0cgJc=;
	h=To:Subject:From:Date:From;
	b=C7huzVP5KJU/9VpIoLx1FHudB+j9s7HQ0KLrn/kYxz9N4IVmN6yVVkxL8bBIBnDfS
	 iBH9bYMAC7M/iR44IBmGz0rzK17RefnaYcfCr4f4SQNzyRiYA5f8tyFTqF2LUIKECp
	 +4DGKIioWpJ8eIARr1g+F+KeGClXBV+TJjcYr+0h1pZom3kSLhC3sW7x+KBTBqQmBs
	 h/PTa9nF02QMsZ4mIgtv+rFy3qGxQLyOI3dMwutEBpvWBU6YVLubEHsz0hoaq8niG7
	 j6Yy07MYL/HDVYsWz4E/+DwDUo2wb0OBDsoEWh6f7eXnUUaPUmmjTWidI3VKLXe0Xk
	 Z2v+l8puISuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0FC021A4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173946353359.10087.10409451847771264112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9802a03b24d9562e277bdc4e90631239d82085f3badda17a1fa1a169305d5deb
Date: Thu, 13 Feb 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739463533
