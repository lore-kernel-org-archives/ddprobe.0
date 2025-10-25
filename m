Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F221EB195
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353994; cv=none; b=PxOj2N2wOWuMljCeLHD0niafUZJ3tCfcE72CHB1iSDGrojcdekgz6pulIZfqf02eRh1EccM7J37IlTa1TskHPS5LAYYxwgInJ2NG911+wURK49bYDvgwLzOfY9/T5qniJe413iOiH9VfhCulAVLpjQE0g9xR5KC6NQbWLso44Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353994; c=relaxed/simple;
	bh=qM12UemxuFJ4ZvJXEJJxSVPvO8uBYgdrawKYlwJ86uY=;
	h=To:Subject:From:Message-Id:Date; b=mF0wHiB7XjT7TG82Q1C25Y9md3hezyXPYTZbdzfFfzMga+0GPfoFS0zHP8WAjqQQdwVVWnFCJp1O1CzH71FNMKs+JaqSW1/gQu6YaPcpLUhBtJRRH2Tn5yU41ErfB3nED1ii2sGX3viuxSeT6efe0aYH43dGIpKiuGNorWuuuDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmODVPmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmODVPmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83EFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761353993;
	bh=qM12UemxuFJ4ZvJXEJJxSVPvO8uBYgdrawKYlwJ86uY=;
	h=To:Subject:From:Date:From;
	b=qmODVPmiRfp27HcITFrGkMGqK54/McnPC/qhcIZI6Odr/u2A7S2s+OuXc48JbvS6B
	 /dfXWnY0XsuC3xmUdulES9bC45sFC5r4gOdLv5N3/VP3y3XsurqWmnRJlFK5WIFzZe
	 Kl8ysTA41eDic5waAJRdaR6CAKccG/uvMk+tJdmnaLCE8bpkuDSA2uTyvrZCZQ/l3Y
	 gRPsHU4vs+kz7Z+LoNnKTK0uh9MfOkFQS4W69XPViIpg5mshXvNEP/DBXaXUkl6/Ay
	 YjMfDTjNylsoZPJuRz7ivNnjLKEsYeTw+TxIWkAawjb1TsBl5GxhL++z/wpTzp0ZMj
	 KdTxQFbSnWFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE1CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135399359.25139.8400023627357396001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c27998cb6f0ffe1199984266fc228e616b63ffdc7e0eef2bb2a140e200b8be
Date: Sat, 25 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761353993
