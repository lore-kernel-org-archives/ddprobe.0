Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A331D88BE
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736974554; cv=none; b=g7E7d7DTIkt1Cf+8095nmcRfsTLLmkDeP1T4iBGnj3jKnye4+cfIJMWIxCvIeYxLk2jtUL4K8GWyM7kCabSWqz+RnX/HNWv7a+TSorkobAbSZbRxI/aQRhpoto5DTaQcmC9YaG/moJcOZpqhIfyaKe7rpxnqTbzYwFX3bTHRYiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736974554; c=relaxed/simple;
	bh=+B0SpITeNGmDUw+Su62MzrWNu4Afj8XoQya2veldfhM=;
	h=To:Subject:From:Message-Id:Date; b=M5SPcLepopNmAkfKstAQS5l9+I3XqiVi4dXpGZT/wyn5F+1zP3XB7N/SanuJ/zvkweZx9v7dDyX7hw04hjoSp2wiE8ww+F1ap0R044cv5pRAcHO3UfgXm+xbO0dk0lBJJPkj3g+HunUO951LmEbKmtivjy769fBKbkjf3ieBMYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C19y9VG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C19y9VG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A581BC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736974553;
	bh=+B0SpITeNGmDUw+Su62MzrWNu4Afj8XoQya2veldfhM=;
	h=To:Subject:From:Date:From;
	b=C19y9VG57xWtgUqjC1PHfAgA735mVqweFEFWvD9ZpnuVWQuYUPvkjsi1o7OwM/x+H
	 NXdC0/Yp1/bABi6rlW1VchaVTAcfUcv1ByU2re4B90nBdp6lctSMzmKxPSKzQUYaU3
	 sZXmu/wB5QuwFM0IQh8+TyEUvdWVCFtcyIAvpHcQhLrxQmUUfvppf3SZn+Pe3Httx6
	 hxDOiJSeT7LtzzApl9eQyuCFq4cxnnFENIUirsgLnl9k//U3WzeZAoeU2OER4Wd3AV
	 Z/Y5i1JgfD+0QW1d3ecCFg27QChYPOuVtb7fg8ooT258ChQS/+Hl5+Zfab21o2EfGp
	 vyC/UXl1wmS6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266AC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697455359.32560.2191908186135316666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ed540b271888fc6d94189f39d03917af21ce0557a4fd8007ba17025039a3db
Date: Wed, 15 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736974553
