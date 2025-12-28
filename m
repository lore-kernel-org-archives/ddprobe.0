Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F55E1D86DC
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766911434; cv=none; b=dVOhrQnBPN4hGMgdjN1xRAxhaHQibOfxuG2sMmJF59CPmqG34DnyKsn8sNom8u1GwxeaerOWd5eZXo+qh/uTyOfJQ8Ig3O8OW+53l4vA6MSckEJp7oO0K9H1GXn1AdBVQq+rEabXWiQc/ZbOIULQmj+o7sPPVVTZT+64/4yZ0sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766911434; c=relaxed/simple;
	bh=p+c+Sn1GkaP7N0+WtMGP9+42RW5gWMsfni6mV25ZJNA=;
	h=To:Subject:From:Message-Id:Date; b=c3O294xt1uQdoo98zrRFFHDrjC3P6n8XkMih/xfqTWvuhPTqKqgxj7n1gba3CcMBOSQ8f/x6H57pfR6F+jJNCqdvJRC54fVdLV+eA6YdgFBYZBLfJecCYQDoPNI1Yg/jYoCfJNlP2Y1949Z3b7f1UDnLwhhapqERVMIRSrbTyUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc3B0Q+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc3B0Q+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7E2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766911433;
	bh=p+c+Sn1GkaP7N0+WtMGP9+42RW5gWMsfni6mV25ZJNA=;
	h=To:Subject:From:Date:From;
	b=oc3B0Q+IGgKkPTzjHAj+opbnFZqy5bhIPSxSCy3Joi7L2BEa41QiN9CN2/5gl+Yt9
	 chOxkd8FcEH7JxR0Tu4lFRSBGJdZOvnbm5IIE/39EbNWpHJPdoTIKoRUDJCMxfRCxu
	 a+M6fb3TPri1D4w41QRXXjjbhIYhBVT1nfRdLeOxrMeUlM0gntZV+U4gIAwVD5TsV2
	 ll7yQujPWRaBFH+9QL4CL9ACacZPmFjNTHfch/8qXgIDlhktekRIeXlMCj4+24D0LG
	 NjKmJSK//RFhwQoILDmKnZ7uFhwXHLpvrKax+Ea1COQu/Un9ls7AQQSiIR8sVhPmyz
	 UgzoeGfhAd2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588FE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691143358.8253.4452809964095899377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8421e5d72b0e9b6fc580c2acfe6f1c82b9caacc592d1205a866ebe0e2d80df1b
Date: Sun, 28 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766911433
