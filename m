Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F15D446C01
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785325234; cv=none; b=ez4BOGLc91pvh/4WlZ0AHbxPatKguSgz7JL0TAeURgAibERo9zlfFPtQSsS3iVtN5ZZb80fCl9t0IRFTJzd+4vWSHLPqkhXZL/ZqC9eHO4wMq8nL+QxUsvo0xYGCs7gmNCqXqTvzXvrZQXRIZy3aVKSVPlSyISff5jFlLBHnCeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785325234; c=relaxed/simple;
	bh=Qz8Bh6EJZgnDJn06fVWqAZoQhetf7prC1DcQBuDlTZc=;
	h=To:Subject:From:Message-Id:Date; b=td8RLfY5A6Lne5XhMnsmrZlP8cJ9U+r9nWpmp+go02fHhieiChOZfhcguG/GCkAsXgHXiKUj7A52HG20cpK5vw//2/8PovrB/tHh8OmhOUNx17XXIXrqbshr1ZaS9/Tu6EFBHO9PSZSv32UV7YworArp/2GZycPuz/qJilRk3sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEcBSrPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEcBSrPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D173DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785325233;
	bh=Qz8Bh6EJZgnDJn06fVWqAZoQhetf7prC1DcQBuDlTZc=;
	h=To:Subject:From:Date:From;
	b=SEcBSrPtcKw+QTBoGZkF/O/4Ha10G4dJW9a4FfhFszNEqgrddfKbLQIcudyJBYo6l
	 e6OePHlt2EmAomnjVyVkPtipnLdcnyRQBgzKwc8xr9DUMiicQNyZFQoO+C/I8V83dG
	 jBmR3C5h92QIS8jqXGvYoLaWOLkWSEeLwpUgKlgN7j/fNgdN6XWydEuLNONB7MTh5A
	 dcLvisBZhqFTwMn+P5JS/c4o/n+lOkWaXpL5dihlW4h3BjvV9E1Bl6hYtq/lt8B0bR
	 c/Cz5K6401xgHyi41w6WptPy7USn1ZlMcz6ktDvwX7WcPHe9xhks1klgSjCsPBpVP2
	 b8LR1glr9vf2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEC3C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532523368.12906.8349827866214272464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d34fdcd5ef36b32c37fa208718af85d3406a43d8bdc86a2bbaf072417cbd05
Date: Wed, 29 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785325233
