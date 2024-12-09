Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453AD1714DF
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733720154; cv=none; b=jG3VacYTDpJVcvq5nuvP+8xAmteGB1NX3XC1I8xRosEMVr3tpqfB2Y1AE6WrdSOlfKmrYNGrAjbn/LP/1eIlwUuVRe+Zvr+MTYdGFsnTs+XFC7HcsxQk7mXQW5xiMyDouWrbDTP8oYcqAn0o5kzGwvwMiU+zkXUxUbw95RizSJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733720154; c=relaxed/simple;
	bh=+eM6RTss2EEuAeTrX01lLTv5vjB9GbqdEeaBEthbCVQ=;
	h=To:Subject:From:Message-Id:Date; b=oqr2orObBpCLOS5U+hfQZl0XDomKlAkZv3vb3mc/kBMXrEGPvJU+VLW3hP7wGvQ4mi98sWVliFrA3cepN45dvoeq1cp4tcEyQKvit0YhPGEzwuzUuoytG+gXOlTlVZ+GPuGcnI0Oam30zNSavCmLbUrMgMzobAJGOeLkbPlqFSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj93/nia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj93/nia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD629C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733720153;
	bh=+eM6RTss2EEuAeTrX01lLTv5vjB9GbqdEeaBEthbCVQ=;
	h=To:Subject:From:Date:From;
	b=bj93/niaxKeWtO/fWamWV0OorOqqTK52+f+z64DISnD+w9Wd75PZhNx+lxdF+F8tC
	 MhmKguh2nPxWwFBN5wZ87DrO4QdBynzKg/HfTNXi8O5vFj/eFCjYCC4OcCAV7fiRiU
	 qfTxN35zxceuprpZCWmDfRUXcUOgqVnnUTzVRjijr7nfyZ2d8g7KQwNSpSbKrp8DnK
	 vt2+29viEv0otHL2Cn25ByzfIOJM7x9F/m5y1LyxhdtTh1q84e74qnuIDBDJpGbd45
	 M2x5lvhxTcyfbeQMoCUceIgw5oddSpn9/CBeEKnDgsyZId5xpoOWqhh0GdGwWA9sGZ
	 j6rrm1IYej7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995BE77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372015363.10382.3820278918605724400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856605d80d588ae9fc1ae853983147f96bf2650846abdac8f1d949581775e317
Date: Mon, 09 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733720153
