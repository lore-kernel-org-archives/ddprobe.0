Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F384347DD
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753817394; cv=none; b=RPLCJxhe5O2OnUd8VVvPhgyCb8FkD+BQ8IBWfkFv81tUZElNSxfonlT8FUnNbRnmkvRjAXR5v5aFezdv+fG8kDmGarTswInoWoz4wBs+vpZ72H4nz4nXAq953uqutOcz+jc/Uhj0Fip1f2W0xfQO1SIHklL3UUMO47vWgfLi3fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753817394; c=relaxed/simple;
	bh=+Ht86+fxMQ8QoqMXEO5qrRpOwUVHkZovjAdUMSA8Yyk=;
	h=To:Subject:From:Message-Id:Date; b=jPZqUMF91Cuc4snkHkFjg6ZmFJUNo4+IYhuDaCeoF8eGK27yRwfFhgiXS0os/jZ7qdEtwMmxe7WKaCwHjhNqemm5+USw9OT3syw3kFu/YbwsimV8K1PzZIw99V+1LdcmveBqBX5NmDCaOJNqephO49z3dS3cyB6djCSun1zvaQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZF4DQ+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZF4DQ+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54ECC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753817393;
	bh=+Ht86+fxMQ8QoqMXEO5qrRpOwUVHkZovjAdUMSA8Yyk=;
	h=To:Subject:From:Date:From;
	b=gZF4DQ+uyNJceq9+QBF03D89qJOghmE6miDtJmXmXomJ40WFhMOVWK+ZSCg5SeM86
	 24piicHwPXQqzCseKGfMNBcc6H3HsgqNwtMQSe8olO8VmtiUC9USl+wSo1qitHy+Qy
	 hBhr6JuiHAslO7P+NhHeoTRviLFosIr/0kRgyvfKQELg5E17O+mdMMNIAECjOltX77
	 AVLIOIq1Kxz99izeFpz5fbKhBOx0F6kREJwLYaUwelQQm78okhkvpWBk7/babXIPiB
	 4oZp1CQGKTjqGvA2cKqEIXu5S6lF6OXU6XUYMjWJRtsg/90L7+ZW0sMoAUPrPyWDe3
	 haG11XDF34ACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCDC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381739359.29650.17992504871723371762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b981ee344b3ec2db9eced3266562bcf868c4b7795b9aa382e25a23d2359a1b
Date: Tue, 29 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753817393
