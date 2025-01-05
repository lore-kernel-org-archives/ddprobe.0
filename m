Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477811E485
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736084154; cv=none; b=bva0uosddhiRhUGTkGRdGiQyclfIeopSgyueO1fRpkPr4H9cf2fqmJ9ybqu/Redny7z3qcqqQy8wBKyNe/RX7A2OtTduLHJSkgIqJofR4p67X/43BSpBYCMlps8nCxx+RpF78joYanSo5Mmde6RoTbghBDXXlueCjIrvABrzxPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736084154; c=relaxed/simple;
	bh=IbrsUtRMgh3MHjNu6f+zr0CPZFpfWV90pcwiJ63O0Mo=;
	h=To:Subject:From:Message-Id:Date; b=ExtzI7oKRC3SLyMfLzmNVWTcFM5Tp/NCd9UamKNgc4AgzlZE5GvqdReAoFhVO9qb/OMlk7uBP/H3lTFwilFhx+rcX5U07hiqXEqmPlj4yz61S+FJRuqurJCKSaj1CRiHp7+JzZRCiS9psNwB4Umwu0x7N9MtZ9lwuI8cpSHc3+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1JgDrGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1JgDrGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDF1C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736084153;
	bh=IbrsUtRMgh3MHjNu6f+zr0CPZFpfWV90pcwiJ63O0Mo=;
	h=To:Subject:From:Date:From;
	b=Y1JgDrGlDYyvcE07mWWjmj+ls922crZ5RBvHI766NPBcphxJXVmREroxRh4vl+f3J
	 xkkNAD5pr4Zanq8p3VrPwCG1sUsG5wJbjaz4n8GyTzRbGPizZMeaXrXBdSJId2RsIw
	 jQWTEeb6++MMUsEpHA32hyc2mjCaq0NRTc+lJQDLfZVL9/AZExnSPHTEaoZuLEARNG
	 VPX+WqzhhQSD0ERYnEt8V+A5t8BmRtebeDLkEHweGTIoSp6LXi51/40hRA1kyj2pdp
	 rQHEfUDef9TCyPrmRqRvtcqFwSKFUf9KXtXbJNJZIMG0yLa9+CD3V5eC8IFEr+DsiF
	 EH9g7KLBrbfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A439BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608415361.2869.1380252968522449728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f60ca68b284e0beece66a792615688daf6ed097cc94072075f20d2982a94ab
Date: Sun, 05 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736084153
