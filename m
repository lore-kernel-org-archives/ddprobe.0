Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E91443C2B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789132234; cv=none; b=ou07CJ+rzot9fWtUhH6swPdtGzdqsZX9MnodBTfhUl8Uge3MwXAPQHeGc64XuIcn4axfPS8X/esiSPnGCLF90Czv5CuR0iYspZA0fm1W5ro+/Lf+RfzNXTpLgC+ACEQ8c93xvyISJgEm4Zd3pWkpei2Nr7ztgsd5AqFUDGkrbSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789132234; c=relaxed/simple;
	bh=uA6nyo5Afd4OEn+Y0hyynx+TiASCBrXT73sv1qRPvMc=;
	h=To:Subject:From:Message-Id:Date; b=JClGPyDUkSG/FSBoQP6iGHAQ+KrsaS0TD00V5s+TKNZhPtFEbkMO6Xb7Yxi2X4px1jNOS9c3p0OKJ4F6QvLC0DXi9vfJ4J+bJWxM7xzyQ+B2qHJiJS/2yaIO4vnZFuvlQ2jjWaF/5naOPZYEyR1NxfdYka7wRAuN5whs4ZGfFEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOMNdCX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOMNdCX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ADBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789132233;
	bh=uA6nyo5Afd4OEn+Y0hyynx+TiASCBrXT73sv1qRPvMc=;
	h=To:Subject:From:Date:From;
	b=hOMNdCX77I6n04lepclSL0TvOUG6iEdMpMbsAqvVeqZlq+RFozjw0TPxBgZYDhqRy
	 Sb5hIidS0rJ1Mbu6jUd5nSACZlxPK8sZtBdJr4uBhcVplqoQgejRYTVilQkpzsNXkH
	 J+y40MVB+S5KKp06q9qb5bvzJyYNkCkvYLCNq62TIELF3cgcpCmXzmsao0xSwuKMUi
	 +Nmkc/7WwGurkRGpRjjKh9wKLKBIOYJ9WjSKo+SgFMKDt/R7f7upy73wXIPeyOCZ5Q
	 DzJmU0lFVN4LbJgx9hI67zA6OJpJVTHWH97QYt1bg/0pofRqfrnr70LDNfYi5IFQa/
	 vHUDu1j84b9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D27C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913223368.12559.17683867867340360834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cab9440f3b4e0d0a95d53323723eb59269ef75fc60d43645dd187d23a8e3bc
Date: Fri, 11 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789132233
