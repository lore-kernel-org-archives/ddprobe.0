Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE66517BB7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788544834; cv=none; b=QyQs5EQ1+R619WxknVkD2xjRAQtCIscb3m0y6WXkjtIWYU5VORkgi73L+Tl7UHkCIPYSHjXIx75cr7NRAVO3k5vOO37FPK8W2gL/PyH6+ghszqRMhuuZxYC7sxx01Ly+cA+5e7HJzpv8ELgQKXkFOm4CjcoNBodQI17WP3U90gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788544834; c=relaxed/simple;
	bh=zU6ZiYY4LprRXDeH/lA9/6dJ3sZoMx5uoxbkCzgsIws=;
	h=To:Subject:From:Message-Id:Date; b=WXm0v3cfar5IPlEJOz05tvmyzun5tFQi4V8l4iYoMHQwL2LrYc4qZbx+Sdf1h3tzqob2UyKDAYbwpE4yi+t9pwd3dRRSqb2bBOYPcDPdmldC3jdsMG7G7rdJwoLwmzezwtCKjIeZGJcF4wXHPs0o1rkzs88HMINJhzNUZVE4sn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmK0SHu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmK0SHu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04EFC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788544833;
	bh=zU6ZiYY4LprRXDeH/lA9/6dJ3sZoMx5uoxbkCzgsIws=;
	h=To:Subject:From:Date:From;
	b=UmK0SHu3J9pWxYwyDrVNYrCof5+3qr9mzHX3ZRzNYUldGsW7Esdpmh0JwmOvINsLV
	 C1PcpQUgPDlFs1RaM91nTnlw3GmjC84A2xAQ7gVA2mxqWirGjCKAfdaU9RhwI3cqcE
	 G8pBiE5FEGaBeON6ZA8D4m9Qz2cMzoA47JI9lTCI5TL7NAIxzcVK26CJ3PvTaio4Wi
	 QCU2LUoiYwk+IEsmDh3wCcpJJ3/c/L9EV3dTe46hugD+iLfAzvXUFNwQTVsgigOCnU
	 vrg/KAG6aqgJ0kwcCIGhmUIhG4AzQ5ksthVlaCEIZxOyEtnVfTZogmE0izSL77grtB
	 GxXYJKHM2nUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B5C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854483369.15506.12656120647139513493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260c79690aa171b177f317ec78c4a55aa9052cc732279d21b9704e42903dc0d4
Date: Fri, 04 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788544833
