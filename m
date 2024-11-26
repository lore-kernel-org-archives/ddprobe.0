Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D891AB531
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732614354; cv=none; b=SmW2a/H5FKRHWYluXrXJXPTiXNQiYOMAJ98m00uPt2jMb4m1oLwPV/77Ir20b+ifoTYo3CHhv+b5Hkq+gNKFYLHQfFuihJtliUnCqen1tO6kcjpQ4PZmmEtnCPuhk1IFO57bGibJWm4bltVyOX3xiXGG5o7fIG7N3wl+Act19i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732614354; c=relaxed/simple;
	bh=9NK5LFFCMJAj+houyF17yhQcSOufNrt0kOoryhiyr8g=;
	h=To:Subject:From:Message-Id:Date; b=oH5yaETnccHPtMIRKJJSSWBPE7D7jXs0glNdj8p0AqvVkuyonGaxShgPbT2T+6Kzkqr2rgR9OPPzTXhm/lxfMu4qQmVdIwX1piZMapAxu8bMNvi7eiWfqsvDA/sGPzDJTPSlPbnLNpg5Ah/P7AMAgBDnBdO1nEMdIKIYezbxEQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzBceSvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzBceSvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6870C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732614353;
	bh=9NK5LFFCMJAj+houyF17yhQcSOufNrt0kOoryhiyr8g=;
	h=To:Subject:From:Date:From;
	b=lzBceSvIJjfNiVf2TtM3XtZjpvvGtQ2wVo6JwrFe2zLK+eRnJpjygkG4CrPYOwLPE
	 1juRfXzvk4hb1lwWX1lzsOclv63DqUrofPxkGRaPqeoGJ7urDmbPixHapUsMZGJzIt
	 LTcdzJ9CpghACIMg7f/O7laeNPe/ewRtGz5pcqIATtEeQBOOwYV6k5AvqEbcVnuDs+
	 Ln9g7BOdM/xoGBb0TaFwyj+8wqpEmNPmSPtMo12SLjdu/R+WDalpFBN75KTRWMeCko
	 294tkGpLt0qty2QJOqjtQdw3DCSIGTkr7mwqsCh+uV74nUjFpMHRWmNC71jWrNpkeK
	 rq6pUWsx2/RBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A1AD3B7CA
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261435360.22856.1651458112480134812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1492a96851de0445c18e119bfb201f19739642bdc09503f64beac2b80ed8079a
Date: Tue, 26 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732614353
