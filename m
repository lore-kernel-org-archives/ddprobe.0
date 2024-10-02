Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139DEEAFA
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727847954; cv=none; b=DZ6UICdTS1qKZw4YntUeQ8uUIwAAUdN6JgrlGWofdWwasyD9KHK0gpHT7HxplkdNlhqI/etOZy5MZbk5jY+mKlFUHOveoy1zsDobUL6J/8sTIGR4VKaPckB3YSV/sBTXPaj5JjDw/UyXcIEQaXTggJ/9xoJKYrmgyI70TP17ytA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727847954; c=relaxed/simple;
	bh=/K8YhIXtxLiS2wKIbh44xZfI00fxR3BpfEMXD6peCrg=;
	h=To:Subject:From:Message-Id:Date; b=AF/BrbFMmiHOuTWprupJVyk7PNH92LIc1laxKIOGJ/+uW7177aVpQG8ado0umtYUwfswQUMnk8pFQ8+aPveptn2fyB1aEPbygL4xy3sid6e/aldLxzMQitpu7ZJuczQJxXQ4YXMT3u/ULQCUMoB+4v3tXBU/V5USL2l6I3I8cMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rw4pOprQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rw4pOprQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB8C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727847953;
	bh=/K8YhIXtxLiS2wKIbh44xZfI00fxR3BpfEMXD6peCrg=;
	h=To:Subject:From:Date:From;
	b=rw4pOprQwFf4pcsh8821kc5/9lgqF1AXU5TrdTkbi8SfeI/vVnpr+qhSquui3Lhqx
	 sFtoHFsGMZgdx2yGj0TTBdCes4RBA6XiCtDMQK+QwvwOwk4c1w/CeaWlHksYBIOl6q
	 mTX4PylIxFzb0qJvIQF66y3OMjIcN/ntA+P8eeR5aPowfioBCIl7pFNFCCiX6cNaxR
	 fvHD5aXTcqf5mG81YSV1gYEe3c7BtncC1bmjP/F9IA1mqGyedMrw31pi4lr/xwfwkh
	 B4x/P9XPNc5ie+6lFF6AKbxWKvc8XcN9hL46U08Yx4MM24SSWtwYNuvBFvRQtDyLgo
	 lqc/oGEq72D0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D52CF3195
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784795359.12288.6745733752344735165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ce7cffee7c0a4fcb7dd94023a2596bfb0e4033584d4f4c723357e21f5e6876
Date: Wed, 02 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727847953
