Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DCF3C3C0E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783083514; cv=none; b=XF+/UGMz08t4Z3HGmESv4slq78qoybgrCs0fkIjvKso0YSqEGuFkUtUlrXKmQBBtiyPbeejTEcanmh/zUloe7c4/4GQOODCu+axzuo8cKgo9ZiV3Y8gL2MGYd0rCmvvjqhoWWehtNKmT8eMnPHTfAFhFZmWnETgdMhxHTIR6Rug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783083514; c=relaxed/simple;
	bh=1c6FACF2ss0Ak2gyGSGNynkFgBhXJgc+T384HMBU+Qg=;
	h=To:Subject:From:Message-Id:Date; b=VWK9E3ypu+J5PvrFaCSnv4wctK1gAKJ4cAYKGdzVQQCksogoKMvPENVHTbVAEz6vZMNAaYINtOScqS+lYgqvu0m2L9XtTtnFVvSzS61kBTKmKMA3eW7r8PIgiHN7Kcz4wr/7E4gnBc9pjqoIsp2NCsiDiFUj4XI3nqC3dg8xyro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFV2M2XE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFV2M2XE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB17BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783083513;
	bh=1c6FACF2ss0Ak2gyGSGNynkFgBhXJgc+T384HMBU+Qg=;
	h=To:Subject:From:Date:From;
	b=SFV2M2XEcPVNVYn367n51rtxgr3YZs6NBYuTe2/VPL6q7AotRSjLl/MSn54qM9q7C
	 fvANfGs3wcpLLNfcPhVTapECvzKFoUoFuci8IX5Z3tV9yXEfRgmLuHkQ60k4gUt3N4
	 eCPA0hs0VKAyfkxa6XGAwK6rDFESSfdXRS7i8xrXfeZXYtchXzc3XQKOJphXLEoFWV
	 59Y6hMCNUVTVHXbT8KQDxtBI9ONvEOaBoiVxaBkVmTxjhl0zkUs0srCCWj4j6x/evz
	 WgSpF/HVrUppcCPNwBeLVAvmaVxzp6wl+iW52cWW1jdb3p9q0ED/h81tiMlijF14gT
	 1AvQTdCORe29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96FCC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308351368.3366.15435542273727859631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37f2a33354fb68343be03b7647b8d20be157cd681b4abf9fef0f735a2399647
Date: Fri, 03 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783083513
