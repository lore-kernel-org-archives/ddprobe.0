Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD5372610
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757912994; cv=none; b=hBWteU0IzpbrhcziZxfgIRHM61uvwkIdAcuSxdf7q7OieyNa1+nPMgSxubBlvPZxM6j3QiJNxe13JE6v4O5TCBm2Oo0znIxb0fDU+Ah4hxi6AVonO6zCT13DK8cN+ilq54/1t7+gy0PC+p90M5kgv5h9NxTI5pUnXSe7vc7mr0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757912994; c=relaxed/simple;
	bh=tBNSGrKOLkjqD4yXi11Cuq86k4hH1FcmVRkOFZsnFh4=;
	h=To:Subject:From:Message-Id:Date; b=ZvO1YH+LaWqu9vOwsCiPMBBbgOma37d1Y7Ud4qhO0REs8ZNvI0qmWm6jOKKTzyxLFPYU3b6xoNyw9CEWALXHrC/yuYub9tPOlF+cxSLRb2H/rfaw60OOPztujpMg+ApQUT2ME3FdBWcQkwOYuT8RtBqObvXOh1kyjKuAvQLTeUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdHpDsx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdHpDsx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5B0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757912993;
	bh=tBNSGrKOLkjqD4yXi11Cuq86k4hH1FcmVRkOFZsnFh4=;
	h=To:Subject:From:Date:From;
	b=NdHpDsx2tf6bS0tgtKpzXfNV+ANNNc4tdC9+Uo+uE7wE72DHCmozSv/Dc7PaVaMxN
	 u/BmcXxrVjYU0aAQ156AY1moOOS2tE54F0qXKUTIE1/nP61N4ycbt5o3KvT+t45Pbi
	 KKTqJkD7i9F6cQzm3lX/v9yepNaz9U+cAlwb0Kg5ZffCKcl4Zp//EYtHr410QHpKy5
	 XIAEptoYH8Guo+YEaoeOqngMsCHdUB6HzCDaCTXfvaI/oLqFKK4S6GhQlrSr7CcdZB
	 5mbMUa5u3cvtmIvyacBUvlxpaDMVC6arYMVMoQXGShaLTWmNpfAgMxoej739Kcbxpq
	 12kho0Pa42PyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B2CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791299357.3621.8338740336592392416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca639dead820c9bdfdfd4abea2610e7bdcb6c7421b3bbf3b3fb0b3255babda59
Date: Mon, 15 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757912993
