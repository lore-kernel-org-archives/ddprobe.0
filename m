Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EE379F5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727106954; cv=none; b=MldT4nxv+9IKu87cTrBBSP6GGEHpDY+yZOprudVvXdKwRduJo/Z5ysSJtPXkbuxS8A4tRtYQv9W2nGLhLUL5+eo38F26fAqfYEq/gj7iMu7a5fxA7guT1ivdJwaS9uupXjDozppb8U9Wj3/XTu0GxA/y+r1666psBLA2sx/qDEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727106954; c=relaxed/simple;
	bh=VDwpxKcWslg+60M5YC28uScLVrLy4wZalrtSqzXhYw8=;
	h=To:Subject:From:Message-Id:Date; b=tsBUM+3mFjvAVEQbiiMJOSPiezCbQXI/lwtYoryD6wQ6vx7DZrDnKgnvJhFb8VNhpOjj7RpUBKeXfAf15rTZ2MK5oW2K/XWdmkHctDuGPcHg+ckXXbrisgOi4HZ1KJTi7hD8o03Plxz9HEnt+KBTvHsrmuM5crWg5T6Ulg6j1R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZYi3Dv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZYi3Dv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A895EC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727106953;
	bh=VDwpxKcWslg+60M5YC28uScLVrLy4wZalrtSqzXhYw8=;
	h=To:Subject:From:Date:From;
	b=aZYi3Dv+mnqEgykuXxRRfHo1FwVGQReupDN1B2ZsWKtXYhQAHK+JeBoiGPdb2RGog
	 ZUA9Pie/+NVXGw/xzICuYuhM5h0/wqCANmq90cZXLbT8u0psuhwN/E9/mhNyW1qk/u
	 eIZpbJijHeWWb0Dy/JapIeN9/E59I6pLBZaEyQZbU9Ax8njUH39pGumvBvj++WsC00
	 +fm+aDbeJpsSNIEnh/dvsdZwxRIvXYFKWPCF1lIY2peNt9mqPTSLpuvh5dhcEkNoLy
	 Om1IJRy2YmZn/sQSKx6ffIJhUp/gaMHV6HOIrhKuPy7fBuaODRTK1gI96iZOJwTrMo
	 lZIOGCODAChyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EDBCF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710695360.22016.10101343856854939481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e973082a43a40790ee6b7ba232cde68cf50e6f8065907cf1699d2dbf6bb54cd4
Date: Mon, 23 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727106953
