Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C362772E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777491454; cv=none; b=M2QECUd4b8AxoXZAHliuSk2I7zrnXSXvS6vNM4lkQpCdP3zEJ2XROGrCOxqOqTl0arJUkgw2Tu4X5kwGD75a/vp9gz8gpue20oG7g7dn3XsOiU3QyZZJVXB+d6S5NlgS9M6I5pgD4imiDuiJZXbnICOjP0FCFNRW+jE5SD9TEyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777491454; c=relaxed/simple;
	bh=QxDti5iGeALbDL9RsDUqd+UqF0FHIqQ+xiIqsYEKUCg=;
	h=To:Subject:From:Message-Id:Date; b=qvkI4PlP/SU4DXtvFIlfXCkK7EZAkNV9cGcLlOjBYd1nB/QxUT5wd4zZOrrn0SpNT/87BGpk6mhTH1ro22Xh6ndoqmkRF+xAP8EEUajDczj2zJLehl9rcHaCHQVjjkFif+WZeZupsClaHsLpnFBmBe+zMG2vHdsRnbb+nC6YH5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOi2VA8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOi2VA8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EFEC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777491453;
	bh=QxDti5iGeALbDL9RsDUqd+UqF0FHIqQ+xiIqsYEKUCg=;
	h=To:Subject:From:Date:From;
	b=JOi2VA8eJWqKNVk1oMY2SFKN23RqSqlPg91GtanjkeMHGGSY0zgFF6U8+kLwG9X2y
	 9jsq6dQQ8OpNVEu06TNXFKmuMc/kRT5qpLgh/72mD2m0+SLciHIFJ/dt0WObaknQuS
	 narlKpJSHpCjVvw9EC1rQYlhDGNgBOuHQcQ7A3hDvU5MJ1yjJ/y0mgLNdneuqT5bTF
	 MXvAlkVVkXM6qxX8VlmeQahb0G4xddVRNbCmy5fiNvG4crm+rWZLSImrer27mji69I
	 4oXkyAtZuORJFkOoYItvRE2RElRF0ZEFG8Y/R8ms+4EWP8YePxGObKuL8tKs4//GZ1
	 v5aaa+wZuyzuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB076CD13D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749145369.19727.10847803025108692762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242bdae22a2d9d3d249cc6435a5d8a4241147535a94900cce4fd8502c6787ada
Date: Wed, 29 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777491453
