Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3247B313E30
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779991354; cv=none; b=RXzzh+bJekfrStRF0hLf32erxoCFtlhGWrH9BtugsUnOMvsDU5VGyDcRKzGHJAKzeOjJ1NozK77J/VYaBBKpUvYI9XONsTtKPpGJKiyAcIZEqLBd1O2KlmcJLGlqtYg0XhLWWb/N28iWs5s0e3TfIw3pO0IGlbmQJiT3fZn0t8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779991354; c=relaxed/simple;
	bh=pXqe31CPWlcd2keeG+ShcRCH1fu9MMU4hwyQbkEWiXc=;
	h=To:Subject:From:Message-Id:Date; b=XJJSLH3C9g0DP+yH1xmd8mQJ7j62Ef3O6zfkcJ+JUE9oa9HJBqrOLo0wyGJVoHAglfZNwneCEhevWN/MBkm3FqcBfucJlXQuUGboqjCfV+dTFBiO9H9EI58uSvKajNzwgkWquIhaj9RCe+E0fZHjlSRTS/93vIrBeIaECb9Q7R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuLCKuqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuLCKuqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBB3C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779991353;
	bh=pXqe31CPWlcd2keeG+ShcRCH1fu9MMU4hwyQbkEWiXc=;
	h=To:Subject:From:Date:From;
	b=tuLCKuqoBRSf4TM41oi18qy1ck2D6yVJlqLkw/oyti4aFRXntin3SE8rvKuPWc3Wg
	 dBRGJ9u1ORmgLv+uuV9zWygAyUQRmAGOZCUA+D/FkFHKYUU5RY+Xi7GXRp+Kit/KDK
	 +CXcLlje/Q5uVpjCD7T3zlcLyd4+6Bvhlp9Nh52Dd25MJeGumx0jKYINDTc4jkRE/h
	 vdTNcXEu09XmAfzblk/L7N1fcesJZ2P2c+7E+qDbzwi1It5I8dQFd/641Gat/ZTG68
	 b3Tdh7OUIzWRoUmgknjO+O+JFo0nalYO7ds0K7aCMbLlXzcPAPTE6/UnAGGUiixoX1
	 yUMTFTjN1dPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9410CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999135368.9722.11402031760242203549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ebf9124c20b6b6dc763df34d4c709a49b205bb0196b08b03f69a99f2f1a807
Date: Thu, 28 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779991353
