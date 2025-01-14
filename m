Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388814644E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736893554; cv=none; b=NqIHK2OB6rpnD5fezvvIWrLm68O3+9kfP2DEbA6z3TK6l4q0vmPNMlkQBNXLP/WJ6Ri4f1oN0imzMhGGZo3eKEJyz/rb/HsaW/zh6QexYg5/vmtgFI7PwDREJ/Jpo5PZtprz8TGujsi7K3fN3SrARb/OvnodBb/KQWRgexmEXGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736893554; c=relaxed/simple;
	bh=Nu2rKdmB5GnrZ8nDNzS/D6Yh4VdeLmiq73Nk09wKWuQ=;
	h=To:Subject:From:Message-Id:Date; b=QOuujR9AgGBUMYZbcpAam7rZS0aZ/vcgKMDxB5oIctfn3UIQTrccJT+cauVeCoUocFrh7AJoxhGrszw6u3UnMII2aAxp77PVQXvdQy7OSsz6gLcDIbc+4WHK73Vol6j3WhCPOCGMb9jM4Az1ZDvSdHUFT2Q014Favmp4nwp2ACg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEbGPsQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEbGPsQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE04EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736893553;
	bh=Nu2rKdmB5GnrZ8nDNzS/D6Yh4VdeLmiq73Nk09wKWuQ=;
	h=To:Subject:From:Date:From;
	b=LEbGPsQKXN+g6EWdt+aowi+7LvieGmipaAgc6XusDY4t4z4cLyYsQfH7GHF9JQW8V
	 av9uyIv7b7k9PI/QbuQ9hbnezk1qwkmDLhTiRJUxlf0BPIJBiD3Nt2/cPlbSQ/+dnv
	 b4a9fvFzX2wkmhm2eCi+i8VD1gqn1I1cO0cFK6B867G4O4CxIwAZ3dC3k7mP0jKp76
	 m5f1y0hC0nvPHy8xsknWQlZ4utx1A9PYII/EbQ7hdI//sdkIHJwp9PGQvUvtdMF4CS
	 vbzFnC3RN/KRtdwly/b5NiLoMgXt2XWifDn6MDET4CsF3A6fvng6RAq6rPwW/Qcht9
	 bwmR7I86YzOQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA733E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689355363.27549.1857348809618921945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3f8bd6778ab15d0365e490b6c1559d45b2c8680da3a086e27031cf71f17c5e
Date: Tue, 14 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736893553
