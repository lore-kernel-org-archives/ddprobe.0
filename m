Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3E17FD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720604183; cv=none; b=KLD4JG1ruv9S2Yg+xAlSNY2IJf7yqWdZM28dptgEqLaHKvB9htXzjS8oqMvKQPE1U2BAUzeknJKXal16AVOINgqYDmeGZ7eaHQ8kuM1ZQge4t3ahg5Zvdb1+AzTkHdur7WyMVQLWska0I7GGx8B0uyqziM0ExgWLWdUtE0RRbyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720604183; c=relaxed/simple;
	bh=X1tY7IdiWGZaf6ti3N4cgTzwf32Pye5u9nM2QRNNxeU=;
	h=To:Subject:From:Message-Id:Date; b=BHCAT92smZe3rw+3Knma1EIpx3O6kwGe0mk6evrwoq+GPP/lwXPxz7PUjIRzscrMIpzEVr40uw6uyuizbUk+YEfu3KXLXYkcbsPvba/iV1a2tA5DlLItZIafIWJ69FOLTXTMbipBR9J9rqDUNuUl6NsnWiF08ubYUAj9D2IEsQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLbzSSm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLbzSSm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B7BC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720604182;
	bh=X1tY7IdiWGZaf6ti3N4cgTzwf32Pye5u9nM2QRNNxeU=;
	h=To:Subject:From:Date:From;
	b=cLbzSSm8kox+s3jPMXOSPrxXRmKnBXHlavIpDarjE6h3fAOlqVVGEVrICxdVXk2nB
	 7f0JUJRg4ErG3DPDOBBoN04dw5Vud8KC6U4ta8+moWEjakqcjIry8GAMMoDqFwpFsE
	 HLVxgLw1wHmHT7rgxJaJHW/kPsBNFmvXZgsZ39ByzyWqv8m6mVU9eBoBp+ZDBcP7/T
	 a9zp08hCJ7N1PZ+AYWFqfweqaD8zhG1Nk+Gz1x4KaR4yGOt2HZWAu+qC2DMBpUxGPn
	 iyy0Rd4IwO21jDMQgDcrBjoIFCjEfcw0S/Ems/u+HoA5u9FgrvXo866X33MX4xcPPe
	 Ns7iqwB4+eZVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB530C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060418282.21276.8028832094509686442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c42c9cf229d4a14906163c6ad19b444f62dbb92e05fa1eefc55e1b9290feaff
Date: Wed, 10 Jul 2024 09:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720604182
