Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018B127AC31
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772441094; cv=none; b=g7omxouPOeDDRxd1Ck+UpvR3GYz84Qrtoi6ZMG9pNMZ6DLwY75PuIqdhY6NSvtffZxKqNX3sQdmf3maTEQEdkolCpoU0n68LARbca8yY5x5u301Zt9CthpqGSwk7gIMgcxb/FibGD3HeFHwnxg6YBKq/SXPUeVSCleBsPPhaGug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772441094; c=relaxed/simple;
	bh=cPc1gKLn22RnHD04K1V0XiWhSXU5NX5yUx5H8HZJqK0=;
	h=To:Subject:From:Message-Id:Date; b=pWkabuU7I3oA9WxsZs+EBc+GGJOiy4NhCHEEWhrzMW0U+mLySWsJDUJwCRbVOAXgztFE+l0c0qoA3oSNa5GsFRpEPEH9450CZijlN/BI2GNVbO91FlI1karBRcRu0ZZo1dj5dLgg3rE8SPLh9wfdoY5mdfvNw4S4kXzUchwfQ20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFZS/hp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFZS/hp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91ABC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772441093;
	bh=cPc1gKLn22RnHD04K1V0XiWhSXU5NX5yUx5H8HZJqK0=;
	h=To:Subject:From:Date:From;
	b=oFZS/hp32saiHtBIqjEpexML8gjEZMfokgCO3imYG8WMpLQdjFWzofTECpQV6ZMQX
	 YnugEKl9pzGMTeJ8SaY9hxHng9opIuZKHqr4h54j+kdbMeaVt3QyrKVDh9hupwooka
	 oXExZTUHHzcVVQnn+EvNk29fxSZ1AwYuohKJtAS/hfzhBWppUVJ9qMyti52Tts7OA9
	 4B5aLIlUJPad9pWiM0D/84xBxkK6oKymnLJUcFUlFOnHdrtHLY3BzwUQVLTGFd2iaD
	 N+R/l5r3fijodYWnSvgx5lw0SBWSDyyRpu9wsxYAtqiQlB0LFOMs650zZGOEUsv+sa
	 P3Zj4N0BIjqig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718ED58E7E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244109360.11164.17635039225015402375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b949a327190d68d138366e63c2245c0fbd8fc710453a4a6f6dfff9cb0bf35714
Date: Mon, 02 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772441093
