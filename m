Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183E686329
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760582394; cv=none; b=ixcMvXjOMfawz+u7vq9XKGb+Vf7opTWVRJzAh+QwV/+ci5RDBnlBTMS2IQLfgII6HScqWwkNNQzX0twq14/gB0dxkMxfrMH4EhrprWmRXZGBBPPaNJINGAw6yQT+MOIcNwrWHSLPWTGBGoHFzeACidGdgXMdT+RUg1nZPOdzbWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760582394; c=relaxed/simple;
	bh=LjTggxGmwsJjfec4i38lBWJ3iT3NpMnUtOkPzUPQ1Uo=;
	h=To:Subject:From:Message-Id:Date; b=MPsnTFheUbdlkHGN+QCPVMUWPvt6RJZkbpp3wm5B4oIRQscuZbTqwO3i0JWISYI3b89fsaZWp2Z0u6/Jn4fJCtBtCkgdDWTHtULyMNMLEeUYUWYNenvENiIknKMlUpfNbXU5tafdKWQDDCWlE4i14L1ZIB1e7QfWeKLiEQ0XWnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/hE45LF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/hE45LF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B9C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760582393;
	bh=LjTggxGmwsJjfec4i38lBWJ3iT3NpMnUtOkPzUPQ1Uo=;
	h=To:Subject:From:Date:From;
	b=L/hE45LFQRkHUNZ3iNIHwtWM/8J5TGisjP0JqdgrKGdD82P0/hG/etf/+3k/vkxeK
	 xZUAJ9+yFGBITMlh10+46dWnok1A7939X9xo9RJvak0LJDTedsSPBCIiagDpFkHDpa
	 eMj2mFqPH1wX0G94oQmYlOHFadKgZtB/WTyELPRnKWadM8SMm0mLAyjQf4bIGWYcNa
	 sDfXR58Fp9zGyDzKRBvtGm9cgz+SozVTDLAxF/ToNGe2stWpe3qOCMfkAxiVVloKtY
	 jJbdWyPQm1zk/fBfEecbo2czczTJdq+teMC0HxehLFle08UackEAdlQ6fQ33HS6Zpk
	 FIPn4Cgo+uIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFCCCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058239357.6231.4379510102949561461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361b40492c04cbdd1f8c214c10a6575145e0eba7f5d1c08ba94b80f8bc165222
Date: Thu, 16 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760582393
