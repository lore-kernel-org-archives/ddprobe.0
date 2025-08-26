Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C3830CD93
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756237195; cv=none; b=IKhODWWXR5nx1Gwkju2JA5+DnmWZzdhNP2UVreoLHE0548C/00Ix+DNN1ihTeVtb4fHxKmHX103kk5bgf8f/nWPvhq+iXAEpxKnFRHm0lXBCB5FsRmJ6jV1sBBivwyewObV7mB+XRoxG9OPLyk6rdOxVKexagaQt6Sp4QHHdIH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756237195; c=relaxed/simple;
	bh=urYp5ggMMmt9fLwxvPPWWtVFwfNAygZ12PBNv+57plI=;
	h=To:Subject:From:Message-Id:Date; b=Elshji9nHUFqgx2cXJEKiLN47WbiJg76pBf2IZRsF80GbRH78tFLkO99jdaDEU93aGCglDOg7ijxGqRE90P8KyHnaBaYmLaivyK29k8zJsOO9dBfqVYny6X8Hf6qGmaDtUIvg0aMSJy06fNs62aYyZa8EVYb77LM2B2kGiF/Zbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0TlB0Cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0TlB0Cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E508C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756237193;
	bh=urYp5ggMMmt9fLwxvPPWWtVFwfNAygZ12PBNv+57plI=;
	h=To:Subject:From:Date:From;
	b=H0TlB0CzjOJqeA1AsHeUVg03+UgvPjcx05FDgwmmEZNEKsVcG4OQL358hGeG/Ap1Q
	 S2bX+AqQzlVSEbB18qdzfT+L++6nbaUtR63q/gvWhibLIFX5oGa2uFEBHSBlN2f5Fz
	 aSjwReLk313IfXBHhvKl37Bn9Hl3waejzSSk9dRhDsPOa07uBDKtP8R+HXvujNsI9j
	 KI3rklLvL6s9gpBW5K8vCwxYmFiNH2k7jTGUtBTCEjZh/Y2ZH05qko9sLrdX/MOKDz
	 CdiI6isCxjwqOAxt6jvT0GoPOdbBxFqepJEZSbk0/Orr30K1sI2aNzNUD0FHfDmebB
	 xJ/Iy66E6jf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F971CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623719357.19480.7306708271600089594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb13d8f61b4b3d09de9b7a353bd8aa38a752da7ceea49ec9965e04a788a7c2ae
Date: Tue, 26 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756237193
