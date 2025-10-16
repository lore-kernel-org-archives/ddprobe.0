Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13408DDD2
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760589596; cv=none; b=XvBB/3ov0uY57Gg4J2NQ4zsqL+1zCt3CgwLrF0HXQjq3O0ppPWPNK/0AF/x2QlPBs1Em1iBk3Fnt/xHJZRzTt57+V37iu8YnrAXsKwxsu5N4MIiPu5IBnfX6EGsabwMXXQpU4Z6DDysg6aT11H/SOJ7XfCBP/a0X8BIwhGxqUgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760589596; c=relaxed/simple;
	bh=HWeG8xkILWadoGzR493zRkDQSoRXMaa+hqAOQpoAdAw=;
	h=To:Subject:From:Message-Id:Date; b=Gn7DU1QG1UFsDJ5hKNRQ48THlBIKD1fZplgjVo8oXFE3sMhs1FNx3OqH/oWzpX9EMjLSgjKnf+qM5exSRIlw6CuqbglnK7rPt4eDPXiqb10QDUGCgn7us0LgOVCpKZFz2S/1eXqDMWxnT+5RPED8qojMAeDM8CyDNd6blB/3MI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOiL1bK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOiL1bK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD14C4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760589593;
	bh=HWeG8xkILWadoGzR493zRkDQSoRXMaa+hqAOQpoAdAw=;
	h=To:Subject:From:Date:From;
	b=hOiL1bK0iW1XPMsA5sr3M8ztOJSBXo1+19HhIKEIicJ+aluRWnGm1DMwkXPrE5nEq
	 K11yTLoLReBl4nrjRe7zQrsH6bIvVvKwDJK1pdRr6T4WY1GDdCPQcDe+orBsQhNqhH
	 rFVvijhX/Sbc667uGCQS+CWGfWHRqOa7cDepIbtFSaULNgdtkRNKCcBkyw0z2uk5NW
	 qIKa6QYE+FVpOe1RztfDHPMY8d4OkdmhDUZ+Q+RSXLWUMEu5rgC5qEHYjijM75CEXc
	 zZ15gxxTUDXipYFMJr+2qlNbPbm+5fibwIdf1ZMKbWcl7IuGLN4Vyh3bH3v3hOToGo
	 jNVrh2VTB5LMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90263CCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058959358.8584.16841678052595473005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e071623d61e9585ed21e94fb911b6d0f6cb8ed34b8ffdb316b727ad9ebf4c8cb
Date: Thu, 16 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760589593
