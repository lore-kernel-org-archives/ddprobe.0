Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B09E149E00
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740576534; cv=none; b=koQ0fYwigaWO8+muhmTu2FIJjp2gqeuTx3ujG8/SYrdyqD862w/qtjQtPrm1HlmMa4+OEud+o6QKsEbmdivb/H10q9KoMZaybGwg3Vu/g1udx+ur0kQzTrdWbQEl9Xybe843NHo7Q0v3za8FSJ/ldgxgu+d04mM86Red3EIewCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740576534; c=relaxed/simple;
	bh=FgFuATPAkFhqpLvCxT1F1naf6CSmQVK2zbwAy1vWYtQ=;
	h=To:Subject:From:Message-Id:Date; b=YygROWO9IpEkpy9rr0vmt9h+cydjR/Y0Wcl/iCg39YgJSBryiOiuHyKKd8UMDXamfA4/XVBYgGTqRj3kO5Tw4iEKlvNo5dbsDuyaMCOVUhYgch506+W8YrHVwin5vDZXJ9PLQaT/pllTD2PmbFHtG0p7vGyacKgp3QA5qFYPhOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kccFF3cK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kccFF3cK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC796C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740576533;
	bh=FgFuATPAkFhqpLvCxT1F1naf6CSmQVK2zbwAy1vWYtQ=;
	h=To:Subject:From:Date:From;
	b=kccFF3cKtTmnHSfcakEY6jHS80JImAskRC3XdFS8xIrYtSCsphvnu0nCnGwSBQSTf
	 SsXAZnPMXFhxyCta53J2hlcoZmtoudVxFVAbYy0XsHrRVPmY+jb61RRmwcahfO4TGC
	 XZeGYzE5wvwJdvMTu8zOyR2S8U+qR70dUthUo9rEGdevuTAYUl4CK9dwbYrITWqsNI
	 8jrvrvQqA3va8BmvFVS3uzPbyUL5O4XNlDBTR+6bf/mPNxygiE+Dkj5GqLilZ+0TxG
	 gsbOE3dJt6SZdGksiwBOIuG0HX5SJk/NfLYQ3NkOE1MeYTEc5F9i5M6bu4iVD95y8i
	 MeX7DddJzfI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0669C18E7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174057653364.11284.16254347520344598229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70dcf57209307a0a741666c3383eec989765136917965657d88ed1a4f699cbab
Date: Wed, 26 Feb 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740576533
