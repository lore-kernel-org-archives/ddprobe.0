Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F8A33C1A3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963834; cv=none; b=BiIOIFWlL22B+C0Zf+GwdFy9D4EyBHDm/5D8s6ZN6R4AJCiPMjB7j3D9UMn/sOx2QnNTZx5A9OCYxi2TpF423ruOre0GvDtp2tH1DpSYusgTurQfvuHuQnbIxVm4BQBPOkudlztw4E7v4MkUYIA9iSRhUqDHQphfmMGcWwo0jEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963834; c=relaxed/simple;
	bh=QRCrrGnSGepsI0MqmqUSLFlzSEjWwrJw0AQRT+PCK1I=;
	h=To:Subject:From:Message-Id:Date; b=DcYNntP1oLKuiK6ajiXqTI+y3uza7MxfRN8mI1kRVfgwSVWpS7XNV1js1aWP6kmKqtpHAWrjNt4myNC8jjHOF5GFujzZ41ggjL/eSS7yhDBAyPj2mNtTonT26vwDIdFyI2kmSkL2oTdGOGm63cnwEvWX1/oNYoAeM2kkXcwazQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FM6TcP3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FM6TcP3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8785C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767963833;
	bh=QRCrrGnSGepsI0MqmqUSLFlzSEjWwrJw0AQRT+PCK1I=;
	h=To:Subject:From:Date:From;
	b=FM6TcP3FOtPqnw7mChNx7tFqdlhS1GNjBOupapUiwQ+CJ20pN3IkbAOrx8WiQnMB7
	 76evL5c4so7GWNP56uIdsKzNMqvROXgZRants3QwbK+H/rUDcLW7msJ/2jGOKfmdZP
	 cNrUISTOzHGBMD+amoOljrrB7fH+ZK4nm21EYWcof9f08+wC+T+17sWZGz/VzsQd7h
	 1LBMg71wqvlhIIZN/srZbxVAaYn63mFFDMfc1oGmM2FkkL2s/WIYSTav0KduzoxFnR
	 ljayeyF0FAfMaoOmU3t/471z416pBRGLty1jEsjVtxbB5LY2u/ZRBZcTcgganC8MM8
	 KrK4/MTmZZeBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B8D1A613
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796383358.30285.14936227409612787285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0757b8283d327641af53bc3bea34f26a4049bfd68bfdaa828511005e930760b
Date: Fri, 09 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767963833
