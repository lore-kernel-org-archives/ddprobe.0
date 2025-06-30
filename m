Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2187E1FFC55
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751319594; cv=none; b=QCV7jeAPErLq88wM/BD79f8ab+fg3l409I1Vmwav11Q0uQcP1f+SQ4E8HqeKA7KCxQ35wcpVt4vKQsVRpZi9ozxfYqK5u+3gCi1aqWX8mgRHBb9Qo6IEEXi3N0jnvag3JmKsXMp+wQ78+vdOpR485vQJ3pZ/og4djsTqtdi0OWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751319594; c=relaxed/simple;
	bh=Pt86BNw9zMzVLTzNp1QGAOAGbzvcAIpL3ZGjMDkq0Yk=;
	h=To:Subject:From:Message-Id:Date; b=ixvGupSzvIOg4/jtOpttWSq4w8gtseXDrPl9G0oqvYzc7E+SBA+Y0/nkEZEgSp3eMZSYGTtiuXm9IuYNhbedUwvMQX1nFMK4NHu96C8bJ4F6p37PgHLxxqWDhVSTI/cCrsYA6ANFtg3ToloDClkF05yO4oU/e7sPWGNIun5AP6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhX+ntbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhX+ntbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751319593;
	bh=Pt86BNw9zMzVLTzNp1QGAOAGbzvcAIpL3ZGjMDkq0Yk=;
	h=To:Subject:From:Date:From;
	b=hhX+ntbF0JeL/xpI7ND1wZDgj3DMa/NTF9ZRiXyWend8+vf1xn4VGZ4fr5oTsseu5
	 BGd1saCNqeya7a0d9qrovsFDDFUrDnPgjL4sEC9aLwcMBwfd1uW9aCAKmfH5xI8UgM
	 aSMCpm2GhpnIbc+65NiJKIePPNrIeVGH24N9u8IazSVqYAo/wGqfgCHRzadbVzct1y
	 CvPZN2no122DMttVdxcvq5C7BazPIAd9z5olZ32TmRd17tMp8b+OVc/UHviY7DaYw4
	 l2rOicnXc8fVmEo3im62EDVEucp16vgI4KxHlgysTSlKZ2r7IdyqJcGSScif7p8NIY
	 5jUaoV27bV/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1AFC8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131959357.27394.4995987949844987504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c91b382f32e03c258fc30ca97ec7753ff5f110e8468577a5b35061fcaf72421
Date: Mon, 30 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751319593
