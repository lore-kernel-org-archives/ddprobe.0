Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F8520DF4
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746329394; cv=none; b=IBwXkn4ToyLeFWZCcM7BIwYYpl5EQQpKzBYObIKCRTOlBDlUFsTLPn4beKUEwApErrmbOuEYETkbXd3tvGsdFyEuLy8baXk8PJJDO7FrsAq1C0PtO6+j67aEcgv7ibYx19ofBP5jlPf5AXubHlGi5HHvLdIhuUVl3Sexhx3MdKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746329394; c=relaxed/simple;
	bh=YeiYW/oC3lEa3VfGoZME8WmB8AniP/k8X+ctrZvHosQ=;
	h=To:Subject:From:Message-Id:Date; b=qUDzY8TqZ171jj0QPY1ejQ/AmEw6YSZaomZ5oNSMG2CofWJqvD+ratN74udc98hjuxyYVQJB4ePIsPh+82tParpq5shAdBJRRoXzP2ePQDr9mCG3dl2o7oc0Z9+Eh+irfE06xGNJUnxqKC+E+RohxO4qvbV+WBdZMhmCKbsaqSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJgbNNhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJgbNNhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1535C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746329393;
	bh=YeiYW/oC3lEa3VfGoZME8WmB8AniP/k8X+ctrZvHosQ=;
	h=To:Subject:From:Date:From;
	b=nJgbNNheQLE2zWPJ3/WZlTSCvPmay8GqUO6xAlWoM4HH5hwO25B/kuf+LKFn9gF8R
	 l/MxzJPscmBMLKQ71aI3kUPtPiXfQazP+nz3PEYqneZ8m2RsMa1ttFJjJc67yeOBgV
	 SEho4l3QfBvJo7Pwi4+L05D8sKp95O7EKwE3LtPbpC7WHQWTjoSc22zqs9fxrhcWwp
	 56YalL5agXbT88Xycs2ZiaAHCdLNgFUsA3a7kocrIbJSUwu4G0Zn5QmCCNNi+4UAed
	 YNBm02oMUwsUbE87kDOZXgqOBahM0ldaFoq1ZQgXdM1X+fVRxX1229gtkokHzdsTov
	 T/i/Zr8KHnCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D01C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632939358.28599.221157838146230598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19a3c51f588155c8650e0985b05668585894026630aaede01149d8a71a1f3be
Date: Sun, 04 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746329393
