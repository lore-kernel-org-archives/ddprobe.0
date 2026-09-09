Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F68353A6B
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788942635; cv=none; b=O3exI/7cQQKyH886uQNwE7WFQSyUkjjXbcx6ytQ6S5QeLAM1xP7OQY3Bl26hcL/nqfcMMP+k5tZEr6USfd+q6pKSXyOFeWuEtGnq4hbrBYY2k0z4On/juwXaMpRkKg6orQjyVwIhnnb/PBhZDevMPHsoMftalt3skwM6amkO2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788942635; c=relaxed/simple;
	bh=aQAcwq3cOVNm60+pDfU02D/YTVd0646xs9tqSchWap8=;
	h=To:Subject:From:Message-Id:Date; b=E4UmeNpIA8Rp2oG+Y+TZF5SW2J342p6hwLTYdeK+yV7LflYQMfQcvqj2yUbaVsXRX3pcnNCTle8hi2BgZREKiXeoZ2KmFKEGL+938M2+m1cGpgdI1h3h9dPEXlh1Xq3McWbvTYvGACeZJJu62KQ1xwYd5Aq9lVCl5peNz8ZOoLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pN68WSNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pN68WSNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75F4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788942633;
	bh=aQAcwq3cOVNm60+pDfU02D/YTVd0646xs9tqSchWap8=;
	h=To:Subject:From:Date:From;
	b=pN68WSNfDOhuZFTNW4K63ra1SIn5HxJzKrMTHKUi1BHgUcbI9BlqOeQ99SnOcWWEr
	 b8KCmPCIexu/Br04wZIw2MdBbjnqFs3bCd/sDZUqgkISReyKPPRP5uOmMPrKhQrj8m
	 IWY3h/Wy5LF83XXRbprcUo2Qd53kFzWUBOjUB647CKd4Gfy63hLu4DYguJ4KAHYj84
	 Sxp6SQVPyk6zzblx2V3NI2B4LvsgW3rj0JEDZaI9oUL/aSmvCYbHP+5PT/uEUU6afd
	 ms23z/fdAhBga65rVajZypuVhhLggWR4khN0ShOrb66Am6mFydpbXORcoH2+dEriat
	 4KcsOjSbchosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB234C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894263369.30831.2241830764512777914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0436fe010a49949f5f7573db1382a888b721cf5a2ce514576b9a808f1061d82d
Date: Wed, 09 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788942633
