Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A35A26C385
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777043254; cv=none; b=NT0Z0jrlPoYfccZTk0ElndE+CVHkrEa60dHIiUhLDxUDPyJxY86RIJLN68oX1Xpz9gqY/T4wNJWwJ/52n4VsH65hdzUb6Vk1DCGXrN4Zjeyp05pLZZrc6cGUccBNqWJfnPPhNmzRisSnbjpdFUwpT9Kf+xjDXRkYoCIFYbkm718=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777043254; c=relaxed/simple;
	bh=CMc5KAfECD72X/ZOxPGKrTuNDYuIEMKUwzee+V0gS0g=;
	h=To:Subject:From:Message-Id:Date; b=iSOyG/SRSmZrzAIbC7lcuR/0lZ9pHIn7ge1AwQHUy/sn8CQJLxzu008P5RBAP7o4X6bO9bXTW2m5gYSrrbEo7tsaiqaIdqWMnvVv/bLRHuCJO96arEUjlKYbxQStGqBYGWhvNWeJ/hn0fhGALY5X+6P2rXvFcrzI+pv82xhwbqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJgiy/2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJgiy/2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84C2C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777043253;
	bh=CMc5KAfECD72X/ZOxPGKrTuNDYuIEMKUwzee+V0gS0g=;
	h=To:Subject:From:Date:From;
	b=vJgiy/2fu/w6BlDV3um5HRBbQ9Socu4pr0pIkANAgQTaxKiFI2bSTz2cNTnJ/ifLH
	 C0q9n6r5qz9ENsPUXXDKFGwqokCabxmsYRoBAuFrObsYmpZMr92I0SDe2S5YF0CDBK
	 GvUrMzCu0zeCYTo87d+ubF3yBLLOfdl/AbO6gfwz3xu4/PhqFncw2vKhuhJgCksPzY
	 MUoDLlQnm5+e/dP6ImA9sGXq+5YUEH/fl0EOxqu9t6riAdELgoFPUI/5HMpDEhIY4D
	 CnOiqXTb16a2MlLtPTiCOmmGyUfARfTw67Xpr4MSxMIRlCUak25vcO+4GQHwXJqe8P
	 jOOPyHvb0Tw6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E8FED3D9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704325368.5732.1633701258066853756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e1ec5a0c34aa67fb7a8babf7ae35bef48645819ce5f1a300363a37a4bbbcfd
Date: Fri, 24 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777043253
