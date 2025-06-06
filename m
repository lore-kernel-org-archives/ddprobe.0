Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1902045AD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749208194; cv=none; b=mGqSbP6XDIZEyadxOfMLXO7iYhAJAGFZGN2p82dudc8wkhGWpqZ8Paw+Q8vLO2NcN97ydpwIPPp5NMvOG0ID8zCAcleqVw1T81pfMGV/S3fnBKBBgUJ48sK1WdBXz3bYplviu2xyfRm5dCTdm4YH6WAtaHDW8/YiQxowMajVnBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749208194; c=relaxed/simple;
	bh=zBKBaTscy5+oB9UfYG+mzNDa9qmBeMqW1VaBrmOz4iQ=;
	h=To:Subject:From:Message-Id:Date; b=Ju2TuxF6wucS1ogVHXEfvmdOLvWeocQ6qI3HezvIBcN8FruaecNgQSw/avz2TWZqquSfrM1I+j9XrS9W0TZ/HXsHcdCJEFoedvIbsssLS61WaZISXll20B/sZ2xN+tWKJU/arjuHYHhRiu9YqfZ3l067uKcYULTHDQy6808PzEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZY96A3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZY96A3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D9FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749208193;
	bh=zBKBaTscy5+oB9UfYG+mzNDa9qmBeMqW1VaBrmOz4iQ=;
	h=To:Subject:From:Date:From;
	b=eZY96A3Q5z4LfnDg/Dgr+GUsbC4mTlfmKlInTnEgiUvkx9V/Y9FIupScyYiD0akTj
	 q75T6wVam5w7/Oyptnrdlot7wfBLqOfsp2oWF8U4cLZfMSMIGOcEwvk15s6ut4arhL
	 KLP/g+kaEgyqJ6IH3e9fu7cR5FUVGNLQ4HN86v+ILcP/cx7skiNkT1eP86PCkl1zvF
	 KX6mol2q6+QHC2pZN4qPzVpMu3L+89dB8JPCN34ru9Ndi4K5qR8Y9DxrCyE05fGVY3
	 XixwggO7DAx1vlZasKX1L3Wfv0ppS9upF9ZEoMJVsZWL7DXwREz2n4lZ1PbY61is16
	 lKyMK7VHsrSyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92418C61CE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920819359.20854.15820245211397044213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205472cd6485cb2857f9204cc9cb398e540849ff3178dabd2d6877a2bc874481
Date: Fri, 06 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749208193
