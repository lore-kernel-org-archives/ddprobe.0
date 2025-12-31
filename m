Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D842D73A3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767179634; cv=none; b=NtnVNggJX0IkRStv3+GVIutud2tJZtHZmfc8ePZF7ZQC1AhLiYaIewvHSc0/hcniDnewnhYxXj1VMOVe7vkYS6V0TEobBCJkBY9+DLi19E1WeIbOt/7n8gXHE+DSscQa0rBNnfM4XLeo+Ur+YK8RHkL3djkvDJGffJP1dn3KcLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767179634; c=relaxed/simple;
	bh=YpOooU+OAHu8Tlurt5WcFIvPz6ZmspzlKLWTQXI1f18=;
	h=To:Subject:From:Message-Id:Date; b=g15GsnJcRbDOJd3X3JU0GEiJM3TVRGPip35ZVipYiF1+JoKeH630xhmBeFFozMXOIiUjszetrYU7siPXYzOM0AUHgFBc2JCGrLNVvYPJqeyDanq/jHctacLv9mMx2cclE3rTp8F03SNxZljPdz6S57MRaQjdVeqrqdx9CVJdnjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQ+LG/Tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQ+LG/Tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A964AC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767179633;
	bh=YpOooU+OAHu8Tlurt5WcFIvPz6ZmspzlKLWTQXI1f18=;
	h=To:Subject:From:Date:From;
	b=QQ+LG/Tfb/pmAkHXHl71ihzM/oi15SN9CvTBsF7zXREJ08EIjm08FHeGYGYAYqMT8
	 mSahaMrW2OIkwp1gSmgB4X0dcpLfBg5+UPBfdQr5FdCYP4dPIJJx/gKRYjDyHgGBKR
	 L8XkDob7DDc1JPzN1yUscJzOLLFTl2EVCNECE784MlsVRSGWwLVnTsCRwR/9dyfDMr
	 w+qas7EdUD1AlfRqq987EOnTh2USamFL1jp19yQGode59LRQ0Ie1jsYvmuVnGrDFAp
	 UOrFrxHLmDBEiHzG+iaWiORWI/eWilTqJY93+ZvJi9YTUQhcT1X7jxzOh8zP0WfcxI
	 RVOYfZVz+9MLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C4EE6425
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717963358.5418.159714277153788285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54bd5cbce235ee9afd8edc670d487b0e8ba9aacae6c43ef0737aa3261eb3f440
Date: Wed, 31 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767179633
