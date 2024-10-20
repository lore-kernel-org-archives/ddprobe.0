Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1766079F6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729417554; cv=none; b=KCnOf/eVUdOJ9FWADkoRNv3hQHeY9RkyTsO6ozOALNTMVLTCWTXlKK2nADzZWmpSBAcHe/ik1hr5FOP5q7c063X0dPdGYhde0vFOTbXN1YK+eaUT2+f7iMB+K+r+emcPVmp9mgBCoT84dskgbvcOpvfS2ub64NOFo2Yd8R7PnZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729417554; c=relaxed/simple;
	bh=tBVtcfym9ipH6fyAka45UZl9g/N0ozM+1P7EgMWPnFk=;
	h=To:Subject:From:Message-Id:Date; b=rf95oLhY10uvCITCLhTrIbbaL9z/xK2xZEFagkgCrpFJmtLRPOWeNoh5w6ESvLlNsI8eDk5BaYpgyoID9bJuN/uraQ4lUjDBfguk8SazCj/xPP5B/BxwgoQDM7hmGiHzbPKWFoPW0GfyIfHrpLDcbZWdCu+Fz1Ci7rDqptebkBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAgR67co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAgR67co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB4DC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729417553;
	bh=tBVtcfym9ipH6fyAka45UZl9g/N0ozM+1P7EgMWPnFk=;
	h=To:Subject:From:Date:From;
	b=tAgR67coYxbCAISmwgOyYhgbsqDMWXU6NPVWK1+/26MYfeXo2ON/jj3FNKQ/E1QhP
	 7FsUt1ir7ypTig27i09lJ8uk/GgwNKXfQoHeMHV4uCxwNy9Ft8/1aRmPEn2R6TYhMf
	 AWiqE0411I1ivvhsMmrhQ2573HWQLu6r+zpJhd4hduHUFuKlYaGwBuKFfWc+1E1Y6p
	 OtAM5/9+63qjOc+ZrVT2UBLbC5b1AWp87zDLnbjsG7sicsiUG+PmDmJjYzYoWrgo7V
	 3gKUoTLkxa2OqiTeRX25Qp76FFEPLAD9dr8skRYhKveYW1WzFTnXvLP2t75P/IOvYU
	 2HlxH4bXLa0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DB4D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941755358.14254.1678567029198432486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25cada83f0370c67fa926e59cc97136a9b570c6ad2e8e382c1b9c5ece9b5e9b
Date: Sun, 20 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729417553
