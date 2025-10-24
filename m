Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BDC219E8
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761281994; cv=none; b=X7UgfyZOfQ5xdCkg9dFVHFDEyiICi26ldUDHa18dAXpo6j3unhjvMAw1L5IDLmV4WesbQYk4US5HPhQmYRVJIDkGoGQ+piUwN3JkBG2HhDAPNk50pfqmXxY7p9rx7iwv71hGDNiWmpknl1e68ruLKaJokhMOdLjKoKpF9L9ebjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761281994; c=relaxed/simple;
	bh=J/0p0geWL8XBSZLtvCqX/wEvhb5TkixcfxifeEjyRdQ=;
	h=To:Subject:From:Message-Id:Date; b=DkwhCg26JdR+50TG2xegWx844bE+G59FwZ2fy1oXG3nhSTPgvxHp2lFAUCUkNigd4FwSOkRRa7LqNjlwZ3Y3WPobgETochQ8SKElDnXecp2F8FwDOlUlvKV1GHn14ARJ47V6gueo6DUgOWKn+pi7jDE45iKnE0zM5Kb98h5aBH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+x5/HCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+x5/HCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9266C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761281993;
	bh=J/0p0geWL8XBSZLtvCqX/wEvhb5TkixcfxifeEjyRdQ=;
	h=To:Subject:From:Date:From;
	b=j+x5/HCZnxFPM0rR3HT58ehsTNgBtxiJmvtq2QFGf+xtB+7vb3KWok64WpevIOI9q
	 o+o1fP8Jx78shXXO9t5e1mBvZ8y8HMwOAxjXkYy/Y8WYuVNgcpsm6IP7gL1NcYXXff
	 aYX1rWBy6A4vBAAo5TiolM4/aO72O+K/hFY8nw8x4kaDVOldWG/rknAtcnEm61w2cV
	 wh+5trBJ+Ccwsn2PGB3ng1Q76n7clCn7XpVWG+D8Iz4bLgL7bmP9gxlSQucHK8PSwL
	 w4NwOsxPqR2jqxLK31s/YMin+CUQTGmsJXXVtvjqIGubk6xEe17oUtM0p7SQ+WiYIw
	 6iKn9DmYoDZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3C2CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128199362.12512.13104809729763454028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e764f07e02d8bac86fd84e8547c7c82a4a3462cf034c9ab8fa6c919bcc7a32
Date: Fri, 24 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761281993
