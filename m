Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E372126C17
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760754594; cv=none; b=l935kUOWxeWk0dR7nTTNOTPMg0vjmCwMX708xcKLCDhDUcmcAe4ibSRs+GBSfypxVTRREXbOtK2Zv9FQydSb6NFJ+vs3R8ANJKNxKiLGEYFbpwxRXwatevlViYnbPzbFmkc48LqBTMIqPIWXfyNMHd8tr3JnKIzITR4xr/iiYs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760754594; c=relaxed/simple;
	bh=PMm2a/RtRv2sSesBMXdQaLU2vGxtyHGiOjy0Sh7oUDE=;
	h=To:Subject:From:Message-Id:Date; b=PQLY7tQIzwx74Qvr+i4F7D9NDrh8C6oooIptLHcO7/sqYSk0IV5iIYcPcambREeked1SJjqFZHAwIbt5X1zVBSko0Ni0Yp+BVpoqYDWoVCpnIUDPhQf6U89i0klmHN/Zay18mSDGutZJeUT8RALr/Lz/wdjsUP3k1PqUt1x+sRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/H2f+Yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/H2f+Yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7F2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760754593;
	bh=PMm2a/RtRv2sSesBMXdQaLU2vGxtyHGiOjy0Sh7oUDE=;
	h=To:Subject:From:Date:From;
	b=t/H2f+YxSG9ca6LEhGEQFxGzZb2qPCyOwB+hw2SuSS9dNueT4K+GvwdxyNR0hSAiL
	 dLc46lFD09URTVBNlRlv50hmWDfh/sbxgWLUhOizWgj6toVk6X8fRXpbVKge4LL2pA
	 SKMJWhoPbLBmP6zPIID9ZN8UBCSiFH8zdZmQ9GyWDH4p7qxZM0/VZH2BX4gMoLXZhD
	 sKczUncc2vewGxfdeGTrJE8BJDNxK4WzlgooZpo9oBz4ktDnXkCQT8HATuW8yQyYNp
	 F/WF+3+GLUGltLfBNmm9hc5tqDT82IR4pyjCwWlUPbm9hE2BrlP0eD6dXtPeRPWnBD
	 zDa4BJMVRd8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37ACCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075459357.30447.15368213583364349122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f2f0d745a40a320cdffc6b632a5a4a9afcdf41a97f809c2c0e731f540ba507
Date: Sat, 18 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760754593
