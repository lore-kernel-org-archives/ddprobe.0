Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0355A33E8
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722307554; cv=none; b=Y3FASsZoyDLPIP5a7+iwio0BoeO88E8j7Ubo3gBFBQfMyh7w6j7zqY4ppwjptF8LyO0cb9kBVjQLdqcLjPJpWbdghxqwwEzuXrjnO3zEzUtnORLDPZvsNugaPWhv0LprjSsBagsnhg87OwjFoEjkBuxg5SDFG521Jm52pp4quoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722307554; c=relaxed/simple;
	bh=I84XIXYmLPjSBUB2/0c8eRySJWxRYQRsXpnkFrusVnI=;
	h=To:Subject:From:Message-Id:Date; b=GIrH0GQMWqfkEZp90dmX1udHmMPS0GjcqhxnPiNa65viObBrKft2V7Fx3vZmPbKKkC8Oc1II6zXokmaZeVMbYqOac66kLEG+L3xX/6Nlbup8EE9OqegGwgkeJgTBfH/kCFtCjPg1MANKjZnxPTeHnwEWpW5mlOkkUEUbv185aKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtrgFo1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtrgFo1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F9EC32786
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722307553;
	bh=I84XIXYmLPjSBUB2/0c8eRySJWxRYQRsXpnkFrusVnI=;
	h=To:Subject:From:Date:From;
	b=XtrgFo1cSKlnOkdJyWTP4n+m9hbZEYWxE8lkq/PY8W4kzGtiHGW9cyplrXslb/tAr
	 msLnyMRJhNKdfCRWUZA+eSPBvTsUs3lzbUJqCa040m81VA0AA7kOjHdsILBIWoqKK2
	 agE5IMFMYZiOQpMe8qv+pfuAf/8aaNAtfQkdfgqVfEhAW5RZeTtRUEovhcWUL8IhvE
	 mecvd0haAhchRbO7mwva+cr984Q2CK1YAY9F+X72njoaMoa9qyP0j/Mqc9CvAOIrKQ
	 f3G/YhGmuXJL//Cuo3g6qm5khZTm+vkoDHUVU8zwLUwwCVo+q+MODC7omg80n482dB
	 l0awxRSbpwHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B60C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172230755360.11958.14399721961915809197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfda69ce43081b81236257a7cca3f14db8c8e02006d63be50f8b6e71329e7a9
Date: Tue, 30 Jul 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722307553
