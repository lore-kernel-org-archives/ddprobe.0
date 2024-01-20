Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB4E170
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705709297; cv=none; b=YNcQr8Ud+pkTy5SnZGbGraG6eZoREQpMLqJxm8DGj/OJ5LZDexLRNC2jHjsfF66p5iVNXgxuhtYtFQJQp4h5hiqo0ZH78/gAKs8h3xazThWXv1CuoYkV5ItVf2iq4QQvd6Xg4u11LpePyrI+NWzkc/HImD+t1hhi76RK90a2Fuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705709297; c=relaxed/simple;
	bh=MkkJ9KGtHQ9SVZR3B4NXe0RCcC0kGhIW9cuOeI2JBP8=;
	h=To:Subject:From:Message-Id:Date; b=ue7eexQVYzWK/qKYlA8TmNGXTG1Kq6sbK9wgrG2t2W8lQ/mXByYOJ+FUmQ0RAcyyntSSvSqLAWKAzG2s2IGwWKIdzdv/GsETzXkS0de3YMOSK22maeLCaDF7fFwgy+l5Gq5R5IBA6hznW224xnFRLtw/V0/Sbzlzz090QWCTWas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bw+eVIvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bw+eVIvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCA3C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705709296;
	bh=MkkJ9KGtHQ9SVZR3B4NXe0RCcC0kGhIW9cuOeI2JBP8=;
	h=To:Subject:From:Date:From;
	b=Bw+eVIvZMLZvFzPcKy1QJLOoMKHrfAALDLZ1CRAxEI8KLX5KdV5LANEdrxynE+VCD
	 XPLnz62as8I+pFnXVu/o6LMCaGTDOBGb7qaejPnxfAjVqicnXRfxxu3t2GkPLFhSew
	 vTDcPXiyx5LsLJbEWA5RFe475djJ3N9rdnFYgOAUYnCuBqVFppd635peAwrrXTlDHs
	 pwTxjfqMdp+50zFKkL3xpay2Jx7gNTJSqUZMB1234RVvh4Q/fbUXinP4rWLmH38fUf
	 0nPgcRKpSMdHV9iH6MA4l2roJ/dvFsqO0YyMXbs8EdjBBCutiAZI/06/xIMuI6g9wH
	 4E+CwNckQ5ZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6088BC4725D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170570929637.22838.11831290636905044400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8592c1e8596375a04c210fafe796f2f6ae8492912e298d1701bdc5b492a9e7f
Date: Sat, 20 Jan 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705709296
