Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5903C7E15
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774334694; cv=none; b=olclBkDnCxRXOwU6SBNHuu/51eQo3QhvB4jV6i86rdsCtFzt12GsckWW+HfQfjh44tsxMhRxX7VOQclRA6qmpd6z8E+oY9i60VcWfi2NZ3umWf+meNl+ZdOvGs6E3VkZpDKx++QLgi5jTg6x5OwGqoCxJJitbgLojkeQeG83LRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774334694; c=relaxed/simple;
	bh=1dDYE0D8OWG7C5Smxpy4RKPXpOpJdeCWjMs2ed3q5Eg=;
	h=To:Subject:From:Message-Id:Date; b=INf4L3kmvL7b6vTgBGV9+9VVLY15Cw7cWXcSANXzuJZNvnYCEk8nHuRwa+ySMFFzNnjSL/Ppft3DTDZiS1AZ3b1scwXkIEylqWndVaLbw+Doc5HXSqF1JLReJE1PGkr6RwbUw75kz6ylN+jeC0GMuqfgt4tUMa3YM0FVW72AlBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyyVXWM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyyVXWM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC0CC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774334693;
	bh=1dDYE0D8OWG7C5Smxpy4RKPXpOpJdeCWjMs2ed3q5Eg=;
	h=To:Subject:From:Date:From;
	b=oyyVXWM/qTwj/7pd3OquwieXWgtLv6m/KXB5FDchruJD382On9EZ0xdaj2Cd542AI
	 YMgbkHGM0do8vSzZbgYuR72bhaMS78OrE4jFtz6dt4Ea8K+qTHVVb27L3Nf2z1ica7
	 Nrdf/QqwSg1LT7Fvvp2mYYamIuUUasvL2iu8viAIaG1wm4ey5bFSITXae1pnr+wEaA
	 31LlD6sYqvHkih/PpbnRHxquZs/avlP4fBsGbrI3CKaZTrL9TxIGNzWofDyIIHprPv
	 C3Zmzv2EB15TqRwYvxB2oPq7GiieZFQ5R76wSbnsH1uWybJCbmDG0YASHoWBBfZyeI
	 zE0b3EBselT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9672FF532E6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433469360.24501.15600432245184754601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db98912a91c119a6d99a5dc3ebe3c1d8b9a0d35e68a20bad827aa3384aacbd2
Date: Tue, 24 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774334693
