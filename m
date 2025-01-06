Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B541D79A6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736150154; cv=none; b=IlwvivV7c0KoEP58zUEBnn0zToVj3TKKdYUBbH6U9kv/OzhCGJXP0JeF69Yj7XqJpR+ZPz+fI/E5CNLl0ncYphQTZndAXOwvhQ2WAPKdrBhsUaeJXlvR/k4t7zcJD6QsBG/52zRSmkTErx80NR1l9LvK6Nt2pDIW2Byakos4rf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736150154; c=relaxed/simple;
	bh=01b7rfX2IWYwpRrEOzEZaNPk5PSO0P6ViNA0LeXmYSA=;
	h=To:Subject:From:Message-Id:Date; b=sLyD2pBFyl6oCAmy36t2oGcIZtoc+JNGKlg5Ukfqvyk8HdYVZCydOvubmjE2YDg70w+jTUgLAf/SLWLd2h97eo35Zvjbjv2GZjenYYAb/ZaPus6nsI7I4PGIM5dqqFeew5ceLWcpZNoOaSSCec0wtgD90j9Wr1cV6i6iYl5/+bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZVDIQWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZVDIQWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CCC4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736150153;
	bh=01b7rfX2IWYwpRrEOzEZaNPk5PSO0P6ViNA0LeXmYSA=;
	h=To:Subject:From:Date:From;
	b=CZVDIQWF993XUR4alKcHOA3vsK/J6RL0OvECIlj77Bco6P0vk+lU/oOCHQbXA34wX
	 n1RQ3pfYw1ILXnDtxYeL0M7HbN9qKnlJxb7pwqGt/kYCKIsspy8AeBj+lJ5kBidncR
	 n0q60sZbQ+JIssakeNoiKCPOv+zeN0ZlXqCsN6KDaIZ9/KRPPg9uHY7EZ2Oqx9YQzq
	 10qQouq7KzL0d0XF+H7o3zsxcMw93u37xPzeX1FGCH6i+5sGjkWhaPxq9RdnCES1E/
	 VOXkr8L9LG9n/w5NDC6QyY1MEuJ3U+c4jjDTVab02c1AVIH5mRyN0jf0vw7xVKx+6M
	 bfqknQApLXTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906BAE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615015358.7856.1405013183738039745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e6288625f7f189e3bc27017c16bf09f0469f9254994ead83092d01d0f6e33d
Date: Mon, 06 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736150153
