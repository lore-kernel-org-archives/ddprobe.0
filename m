Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711463A29C
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719747263; cv=none; b=CcWxGyruKnB42QIHkJz+kUTOam2/iq/vVPaTnxJmggt9baCMisAKjCEohP9tVYxxSyNZyKvTgXVjr+lDPBO4yg+u94sWjOJ4kitgk9AxiAosAxw0iiFVgOEGNvb+91+3JMSpWN+8jmC5XDPuTHBy9p6cq3XzZJHQmHQOI4czYyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719747263; c=relaxed/simple;
	bh=R7NYyYNqNr1CPvhUa23/AVJRWmhVuzAxr+nhZWz5eMw=;
	h=To:Subject:From:Message-Id:Date; b=YOiH+hdCrW3cDzX0DGbDrJmYU0jy9nm5rrKEmjRuimckifF40Y7rxlNVpO33UhxquBqCApWkquddzBbya+GvyWhyMr5BNzje6U2gRxB7cKth4OfLORx8iZO2dqaYwMVp6jd12AfPf2kA81QeF/ePhGEVn2NooVNKad6sot3wGV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUgzSLwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUgzSLwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FFAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719747262;
	bh=R7NYyYNqNr1CPvhUa23/AVJRWmhVuzAxr+nhZWz5eMw=;
	h=To:Subject:From:Date:From;
	b=lUgzSLwrECBL3MVPm07GfEV2FC7o1T+HocOo1FSYV9VuZpb3xh72e2KNbMJPceYnb
	 V6Xdu86/fUKL9MPklCo508NtDA8qLoyUQ8LQH/6j/RFCVw7PmsDiHlePIUTu6PLIWH
	 9WBZk2wSbGE3OxXGY75MxNyf9iFwbKsyuY7NBUiKCgjJxEDmI9dRk00lCjJSBtegv5
	 MNoyNKlYX4GFex2XFSchmqsrdGB0nzDqlMtVWTSAYBPQ37rttYp3jVh4BiKa7lXGGy
	 iujw4B+lHmz2UN37eb6K3YKg+NUKYbhFxoaeufy+Q9qvcqROK4hnrLMvQdHhAy9GPI
	 WRFiCX5QRSc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E66C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974726278.1946.10301105712645507593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fe0118369051b28147bbf45adfda1e7fa59da47860dd8dd92e894694e560d5
Date: Sun, 30 Jun 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719747262
