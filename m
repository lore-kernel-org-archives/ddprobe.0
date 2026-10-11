Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F05329ACCD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791732034; cv=none; b=WXnowLkKABkJLj/HHAU1mZfVzxZnnuZ+KTEH+kmce653lR9n0BuwrYA9EqzONVlCM1QdT1EafJlnK1LhmkjdNu1f7AtOXPngzHKVIS+J5gizX1Zm3dhB+GDfVDZ92l4qmrdVtjtl2cYCQgWUPhWx5z3YtsasfEhCXl8MudaORVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791732034; c=relaxed/simple;
	bh=oCOMF8RGR08lvEEWfOGnFB8M2uHZqBRwLKpL0KIVpY8=;
	h=To:Subject:From:Message-Id:Date; b=nij6cNBw4HJppj92M/lLwW+n4/I9rX6TACcsoqhL6r5+nYWp1/dCpF2qtVk8hyDfEfvho4tHLw5ubyN56KzSbz7mKnfO6VWSMS1Ro/NaeOQ9WC3qZULOTawHp/AYt0V7Y0hWZ6s9sgG9TG+Rz503RWm9aJZWvu6r1x3olgaOO1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5goW6aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5goW6aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC96C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791732033;
	bh=oCOMF8RGR08lvEEWfOGnFB8M2uHZqBRwLKpL0KIVpY8=;
	h=To:Subject:From:Date:From;
	b=c5goW6aGwjbUDtuzNlx5q2m+bhBl9ZKhnCYtNZNzQRzWvEw3fv++hxvROQeh5dVzY
	 +Zf8cFK3PMeXptOUyLgtdCVm4KRc6k3JzdH6Owygkm7WRBd+smUIgGYd5W+/AhIbMY
	 Q/9iAOgwu/6mkJllqEFroA1ZWEDxkPw5eSFPpAJXcYb9QUrtsAh6E2UeLmLs2FC1gI
	 sWH3hpV71m6EKQzRuwDRaKDCn5LXnU8PQvHcUQ3/27j68RjgW3C0ZXMmK1UVKvVrYN
	 chD2htGHCc880KY6mzPPZXFsCl/lWqzilGaSZxevE2F2+h5IR6gAQ/WaDmP0iYYK8w
	 ISKFiXBra6u/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB38ACA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173203369.14915.16077928149020035826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1052a4c432051d99e33b77816b015a7ccfa9ac8af8c42026710f101a5a58139
Date: Sun, 11 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791732033
