Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC6A388E5A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782287794; cv=none; b=oQPKWRFtiLfV0qZ/kckYDRpyHjYDOuEtLKTla0378I0ihARjtn6JA4VHdY6eBbYlIEPh2VjrTxBl47c/afBYu/vzlvrgAW5w7X6avgiohsHsmXRRUp3JXrnU+g99z8mR95wnZNAVl9N/yQeHAY5cKjecfGqFQHvXsPZ3ZU02o9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782287794; c=relaxed/simple;
	bh=fJL+DzB0cwMZMxnmRfg3pSGRlGkeEeynpK2FCpUWDAw=;
	h=To:Subject:From:Message-Id:Date; b=UcuOR3lbxzOyn9q8W3+Evuj2SvHy7P8+vrbFhFI/JT2CjBeeVfxc04CIX5T+v5Tci31vbk920YNnXOOQttQTjucsg9/EUcIg2j9jnj5zegr/exORxpiKW2k8p23Q6k1rFEGw1GktannSPSEvQaasbmdh/LhYZmmKaD6V0iHAyjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKsQh2Na; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKsQh2Na"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C4EC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782287793;
	bh=fJL+DzB0cwMZMxnmRfg3pSGRlGkeEeynpK2FCpUWDAw=;
	h=To:Subject:From:Date:From;
	b=oKsQh2NaypZQ55+FcKP7wnVkUFUHxkhvXxJaYF8t+Ygm5Gh06bXfUBu/LToASE2uI
	 f01ZOKToDvacN6ir+X8fUZdc94rw07ImQGxns5G6To0cjsX/EyiRJCW37t+1khrLDm
	 o6O3nxyHfmRTDqXD/sS5XL2coRJXcCFvfc2d54ILgJ/Fke0zybZCbGXoUFk2Hqva9u
	 CxYhF8a9K7GPt3tPvG/Do6uPnW/7C3coX/vht+fKldfLggBYDwxRDUUE+uweGsGMJd
	 IMGqbaHnhUxAZ7QnrJlbvHmgDA6z6Hqzl9KA5DL85xBjdXXy56N3U+PYEgO42a2rxb
	 AIaF9/3zvhpQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0705CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228779371.20332.15410214481483992344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0049e6162dcc625c3486ecdd91981d68afbc8ae7fe2f05a236c82a3d9aca37a7
Date: Wed, 24 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782287793
