Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275AAA932
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757839794; cv=none; b=JCUEtRmtF8IFoD+0c7ac6VjARf3ltvRxQ53JbprQFjhmGIeIw8cE2be1yMaOMpAuo9NNVatY6YnphkKxvHBxJulfuVBjeBIUHO4IvzTFojyghw6PxVPmoehBa2dLYGyH1+Uq/4608LGy6scuxmUMFL+GWrugxoP5vfB6CwXog9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757839794; c=relaxed/simple;
	bh=cg/IwFJwobqxlVq6aWyCMFRseSwUUYJ9dZa+2XEFYM4=;
	h=To:Subject:From:Message-Id:Date; b=nxvlXFZ6kdFCdHe4WuvI26INlyhKRkV585mpwprnrcN3AA3dcZ/XCP1imhpU4VqFWOMBOHx1mfUxmrXjPKNBYIpVOdWmtYO7memC4OMHNVSdoUALyUwPZorRybxspbxyDZUxOuqKP+LFbEy6dHF4X1xhR3b5pKsSjEx/7DqLThU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6Q/EI9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6Q/EI9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C60C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757839793;
	bh=cg/IwFJwobqxlVq6aWyCMFRseSwUUYJ9dZa+2XEFYM4=;
	h=To:Subject:From:Date:From;
	b=h6Q/EI9hl27HGOgmhX2gSYiKxcmq0D57cX3LBGbzZ/Q1+pTr2TOU4eBCrXVWDj+Yk
	 fUh+Z3lFVPIyGwGa9W17SXQ/yaFyCPIS51bNDXIyeQx7NvXL4eu4XRMXn0PJW6BE93
	 8eZciJ9LjFTTXyq2PrVGROCEglQBav1qa6VFPOnbVOFmxsAuUbysB0yz0nhAYCjFZW
	 OPWRxVAhhi+mkPQVDCZv+vK5FLz1tvax5q5T1CN7cUyJ1gKoQ3kAz+VqZy6XSBSOHQ
	 IuUL1sU9pv/goy/rOLEfu2bswORb1zLHUIE9IwHbxrm0ST8KdseZv/7rXmJyHwhi1I
	 EBEydo8d0VuZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F255CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783979357.9311.10262267230791102731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b4f90bf291e99ba536b454e7a3cd5621a4d31bbdb11d42de8dd1738ed43ddc
Date: Sun, 14 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757839793
