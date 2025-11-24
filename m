Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4404D2FC877
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763983314; cv=none; b=ivrqSQMyL3F5nDFo5RPiWFIQFBep24RmTDqH+29WfcKjXBAJYJcssIDaXKd4cMhFZCqx1Bu3RKjfKFGEbZMwO/urMTrvnsDBDfoeVb9hH3n00rYkBAkTcP77Gzx12kAt89J/O14yzdR7AO50RY8V447M7oR1ZJMeXR/PX5UlLDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763983314; c=relaxed/simple;
	bh=/Y9DtlOP8AVhJ/mUzPSsJaQtGBxEGIxWlmsrGmhw6NE=;
	h=To:Subject:From:Message-Id:Date; b=nnD3sM7D/F9nk9tDMo1kjKpfoaR0lk2eFud9xVav6Xpbgv6fjadERkxdOQPkKWpQoKtkK9zax8F+kxpZzyWgt46ofvH4PAzh/1kGWzKMNeSstprO/DRh7yd4uza9YOdtCxlQh/xsNHXCe9vTkSbIvquKvnyp71FTPxdtqWpq+Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwe4XS0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwe4XS0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763983313;
	bh=/Y9DtlOP8AVhJ/mUzPSsJaQtGBxEGIxWlmsrGmhw6NE=;
	h=To:Subject:From:Date:From;
	b=nwe4XS0jfNF0nzl6E5RrqGLN6VunGhQXvZ8dBvkGsAxAQN0zr/740ODgdWr8OiEUL
	 i5I11bm4WpN2lnpcbKvhayRi9Eyu330KsFxqdtEwmXiEpqTBwAnxS0yh53sh1W9Epp
	 Cw9UU7/Xvpe0uu/CCcfwjMdTuH68T1VCQIJzpZn3O6d0yWNkTADHkePHNtTGTsygt7
	 P4G7Rb5x96kTkQuZipNTE3od0Mci4h0FDULtdE1BVCMFc+zX5BK0MlDjLF5sl6sqqp
	 epdKlQPOeR5HEQA0w//QteXoSM8Kh7WueB6pDsJGCVRQJpl+0u5qG0Xu8jOWHDGC84
	 0bnk2fEgWW4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F7CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398331359.12058.9475688307465414403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4610d220e5f69efeeefc8abe7445dc35cc5a7cf433044c3a225efa8729c303a
Date: Mon, 24 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763983313
