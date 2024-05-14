Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AE217FF
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715664743; cv=none; b=FPVXUFl06w5fEdX8lYbST8ManIMkttjlrA580DjI5um+loGgDNYJoHo1ofLdYtO9RIj2mxKF0ls2jS+/gzIexNKWoSYBLYmn2XJtKPMeR8LpEyAqtFFIwP2KpZtWCToaksGYuRtlMicVHAPFBPpGZ/kaxG3CtSRmj74U6FtT/tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715664743; c=relaxed/simple;
	bh=BrZHkHeiHCC/iiZ7T10E7foTFJodGaOtaJ1Y4BQibs0=;
	h=To:Subject:From:Message-Id:Date; b=gJOAm6MwFtByFZnKNhnJgjg0ZYxvkdUqBihdZwR+8/sRXoe96VY/jkeU6DMTQ6zo4FyVun5gK8oQySCyYOM0HgK6Ux1OewzMSpKVVc/7cYNB/LQ/IMLDC+P1U0evlm+VljKKZIzAMatdtgRmwGkHlv3HeiORk1tvriEW6uYmONc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzfMiK5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzfMiK5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DF9C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715664742;
	bh=BrZHkHeiHCC/iiZ7T10E7foTFJodGaOtaJ1Y4BQibs0=;
	h=To:Subject:From:Date:From;
	b=YzfMiK5JBgf+yX0hNzH5Ll4rpan993yiy/lpeaW7prQlnMlBlM6Xs12TOyt86qo/+
	 7d4yyk9+fi+u58FESOxek7/Pmx1OhIZnOA6F2F8QFDI69XYQ2Epo21OwvoCpXDSP5r
	 jnRLugxtr9BZ4jPK+ah+qXX0W2EjEdRkPKZRMfPl+KmSr4Q4MP24NdANAWU2XlPXTq
	 BehnGTcCA/rc66AuNEDhF762CocJByquESrzBhK43Rfu1fLo0we67Tyz+MCryvdrh/
	 lHgWkSCyuNo6v+/1o4iyWw7DiAFeZT8Y5ZeKpKvrdYndekgXiLnYZAFpLELMTcJn9r
	 qpU0RWe0mw1Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBCAC25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566474281.28606.8723300631131240765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82bf7cdd785019c920dd44918ce505c5f6ca9ce5c16dc802b715432d040b7d88
Date: Tue, 14 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715664742
