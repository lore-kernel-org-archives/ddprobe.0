Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BFD38F225
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775496934; cv=none; b=bvNhbx+wZfjFPQ6+zEr8+OjId7GoJeghgk9XRAbVJNYOgsqmXpBCZIScJUt2lx5v9z2PbxGAuvPjhvFUf960vlENV19bOTFYvTHg1V+/e6j7kA9QoFyIeZCNMPK8Xnb/fCmQFYfJ6wFQvL0fBZPWgcJ3ZEh7gBAGFSoNc5cSGXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775496934; c=relaxed/simple;
	bh=W6qn4jx2HfhjD0mnqfa24yAHcFo5t2iN0JT6fluLitI=;
	h=To:Subject:From:Message-Id:Date; b=IeV+V6L4uLp0RHJLLxPD4n2hlsRSVGOki4CHJ03UroecPE5zELmuQapwEB8zNBJcUDaiZxAV2oASPNx7L6p9LYfeTGEdaoLkG/2xjqaqS+yDs2cLgPlXyMuurnIJesK3YM4vM62MKJ+R1QETLPKvpBQYtZsWKAXGJknRFYBQGZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJEGooEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJEGooEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD98C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775496933;
	bh=W6qn4jx2HfhjD0mnqfa24yAHcFo5t2iN0JT6fluLitI=;
	h=To:Subject:From:Date:From;
	b=MJEGooEhkUle6CpHrSh6RWGWPIHQnPT7+jPLf5jFU2GfIAhqYE99c6COd03VyXc1S
	 q5Oy+TLC5V0YcwMLOIEPpdfpMq0qiTKFRuDNiX3/xSQN3BXPfAj4f+PPT3IVQ0fHrk
	 MZp9GDakHiUsWnDIaZTQt3ro3FeRGePHtlOXKGr035vvoWroTG6sBrxk2bEUWUNr3Q
	 2PyERTX3o9gdq4Y/t3hZ0xSEa0LgIaIeC6EmFIPnDmNeSI8h4RyPhs59cqxoZXg8D1
	 HgRoYK54RTY/eaiQl2sxjFBqpbAWh/aJjVOZCeXUQcaNA5yvXuhCZPEvG2lKc+gS1x
	 0V37ufwdCB1Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6E1F46C66
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549693369.9479.13953731405453321749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cfec52904bb9731f3f569257d619a76cf9f9123bf1f511f49e3a313bcca3d8
Date: Mon, 06 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775496933
