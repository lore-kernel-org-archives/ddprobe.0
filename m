Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D6D354AC7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760852994; cv=none; b=JU3If5wBX6azKu/wB8S32J9Roq7aw4i1FLNCaKh9Wmne9gviCVK5MIBzhEOi3gDl+c8jXE0fbqZ73XACAaJO6Czd4i47E/6O/uQFoysqObCM3ZcvgpItE0Fz02d7BAWuIg1bT1em2O2rSdg4BlzSH8TvfX7LefRCKNTNp4gPlx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760852994; c=relaxed/simple;
	bh=f84Bc0JwaxQtkld6pSnlfAIjWvjNCY7xXMpByGQjNO0=;
	h=To:Subject:From:Message-Id:Date; b=YuQinMRNwK4RFwaSKqWmR44qWYSnIrq98btQSDLBO7jPMknaiJqlC08bQ6XAbDHDYyEMtxPGMIMDK230zBZo20Urxs4zGvKA0aucgSq4iYr5bCikQkGwE1oVf9zum9AkSH/+OPs51Ti1OmQX49KPWBS+NsPS8l5I53FRhqekf7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFukPctG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFukPctG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19EAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760852993;
	bh=f84Bc0JwaxQtkld6pSnlfAIjWvjNCY7xXMpByGQjNO0=;
	h=To:Subject:From:Date:From;
	b=pFukPctG545WS3OKAbvqZbSEm7VHGbiXie7AUyY0rV1Gu/xeMhhPPJFzFLC/1XbB4
	 VoeeZmezmNDPaLyne2hQuyZ2lntwWiLzKzGOf+kDxDdejHjklf+rbXytLN7axEQwuJ
	 gQBZ/LODRlKrrxd7r0mvvgQpjsPVL70ZSW+qv1liKyQPPg0+vf5PC3h61/aFTbLbs1
	 QsCj/e+FV/idfda7xfPs2u4DG5h65pbMn2S9G73Iv7cN3kOJYN0KlNHjHJlQuegCI7
	 Ztkt0pgkOAOHUajgha9Pp9XeAK8d8qHBZ0730QE3g/EAh0NrwpOka7YJX7mxj8VI/Q
	 Wk5n3hidjkTqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFBCCD1AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085299358.32309.2910057222567000603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0d18a0341efdbe8979cfe090dd1983126a76dba795645942d2d8b0f08218ef
Date: Sun, 19 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760852993
