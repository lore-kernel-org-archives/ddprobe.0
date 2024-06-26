Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2D279CE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719401003; cv=none; b=utCQX1Yh11wpcpNShBuFiVY1CXd1p/sbmOYcxMMPhacmYr5QHjBtTLiluvfyRV8l7XxyHmXvQY79LbgVT1Po2tRlIM/xOYetmWaVMSyBbOkJsAMspKDn86jMhHrf8I07M18SwfZmbUUqSGs8v/gcqLKbOh7KLD7A92z6vYjzds0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719401003; c=relaxed/simple;
	bh=FyKbldt2umsWFNDDnQJnw/LVOWW4awq/hRu0M2P+Duk=;
	h=To:Subject:From:Message-Id:Date; b=AlEOcC1RRirF322jO4H+i2h9qRlVzg6bkJ8thg4DaWqyqxEXqmHdYZzfpqrapSEMZ4xB3IiEsfx+gFTSA0rAKIN1oum8WeARXImB+ZyOhKnEcegLXNW8/3sjOVVV2GIy7gpZx75WKwC4cTZtszBZcPzWeGTKag/hDLSJwK4MPrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEITUPLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEITUPLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CEFC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719401002;
	bh=FyKbldt2umsWFNDDnQJnw/LVOWW4awq/hRu0M2P+Duk=;
	h=To:Subject:From:Date:From;
	b=JEITUPLVMbKNbzrKsYgXonyC0uL4LxIOCU3aGAbe/7syJgwRCybLMPuIJR/12P6tP
	 mH+7fgHRHi43Rt4I7LceOCLpmoQhvsYQAp2cU4pc8P/9rBlHPdjNXWGysT/rva8T1S
	 7Q1mJIm1E2KR8fb4OQSRPEdqnRXTUiOip/tRcOfifF4Xt8WNPSRMDwzt5XORmOTDz4
	 26Akh4AIi/LlHYayvdhu0H3vRQe2mNj/HoS2xqDS1dulgpqS4PaLbsJOBa86UWhPaw
	 6MlXUTsqjjcyH+UXOhFggV+AYQfbOFAxecoFln4mqktMLyn+9TRyw87V+iwO859Xg0
	 VHryX/cq2I7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0336C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940100277.22455.12797669705626520589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ee0ea4e44be98ab9648e58a96decef94f0db469f670e1bd1635e1dc670a36d
Date: Wed, 26 Jun 2024 11:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719401002
