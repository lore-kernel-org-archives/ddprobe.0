Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A130224AE8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762666194; cv=none; b=ioLe8fez1xY3JCw8lEInTSK02cNdgmvHhKwzpoLGBsFgvQGEHAPAfuLls2J6SRpt5M7eEHNF3TvmlA2qj8Y2Pv69OnourNXp381owt3gvA4WqHIZ96Q9+ANwDKRZa6/l76H6vuT/HYhRELiPxkumTcln3f2fQgOCYapA9V1pths=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762666194; c=relaxed/simple;
	bh=JW11DTIoUWvaAo+CfjlImF+WuPVfEg0Jq5fGmdBh5gg=;
	h=To:Subject:From:Message-Id:Date; b=GFCf+XXIs/ocsKAlm2Bh9zAlGd42vKfLdfbbAIM2Yxe2qyK3c7lUBfqyl0zzaWGrxxo1aEXsfC/GFhQAWJNWkVQxquk3sHIItiZo6/mMxI5mvYN21aR6HJkCsAjVzZ3KKAIauPSBIQaUlKtc1PBFXfP27w0hQLu9N+7fobfqGCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBw6POmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBw6POmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E4DC116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762666193;
	bh=JW11DTIoUWvaAo+CfjlImF+WuPVfEg0Jq5fGmdBh5gg=;
	h=To:Subject:From:Date:From;
	b=sBw6POmbAmL2qKu60WkDCqVL1YQ8bhLU51KpcQ7mV/hIITrA7NHWg49XDzSgqncbB
	 KOiFBvPZmP38PDndisJE5CjD5ou03h3jId8rVmzU9RO0OKwamgzTQPqYYNO7KAUvb3
	 URMX8K/g71oq1s2YHQ5BryTh5wxlt2QKxEdngbAacbq345pBxjSf7P3VH1QMoUTsW+
	 IHN91IQ28M6huVkPwr3rVjjTdQWDjycSiPPrCay4cDSuWjKeLXmwm6t+n17lxDoPTS
	 B66MhDoSqr3mmGzoVp4f/ORsk5x5Uzch0AmzDXTiEOFeLq5OhzpRCyjpo2ITohcObr
	 3sbaJ2RdzuH7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC7CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266619357.11806.18345545574441419200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cf602aaab151be65feb03f0c70bb6d99d500442a83c42d48632dbad3bdcdc9
Date: Sun, 09 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762666193
