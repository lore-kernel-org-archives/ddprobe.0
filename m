Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149F1363C48
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774680894; cv=none; b=SyoRwb24gALnsmMyKPOKOAiXkh/KL7oEeeL868tLQUlXp5mdtXagZPnAAqNErX0BPXeqY6+LmdzIlEmKy5eIW85u0PzGLqX1vMi+NFSWg6jwhrP0NtihdIrFCeBvXm8yuCNMC8/66MsjYPZyl+gQeHoQ+ENhd6+VnwrL47GPS0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774680894; c=relaxed/simple;
	bh=/gd+cLmhh1/QIuDLZUBD1vN/yLmOtTBdW1kzWvuUFWE=;
	h=To:Subject:From:Message-Id:Date; b=KQp4NYnnhOeVZ30jDXYUJUnM8pucfb9S7ORXJCRui9Oe0Bd8vTmZv+hHKwtPl8C+mVzA2kj1wdqJ3seK7Wt1gG2kg4oOBNBetFrcNGYK3jKdp+Zt7o9MNlZznaCwetx+avFTqxpT1mIn676JAzKf8XH9xri82ALox9M6AlqBWXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuWXYVhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuWXYVhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774680893;
	bh=/gd+cLmhh1/QIuDLZUBD1vN/yLmOtTBdW1kzWvuUFWE=;
	h=To:Subject:From:Date:From;
	b=KuWXYVhx7kC4Pn0x4nHmshO/60S4HM8XL9W8vHuuA7LADzunDOvSv7QJXiPAMfx46
	 TFx+X3xOx5LTa5+PpOSxbGIju0A3ZIkjI9URsv0VSG1tEynE6RyAbCt+f+rU3ipNEm
	 Ya/v5wulu+zREWYSvtpy92Q76UfVDMKx6/s836NWEQykFkddrKMsmwm9w0/i4pji+j
	 KyK6XSPR+zJkWaQYPUBFVziGQ5hgEOiIQsJj5F1gLZHQoS5GTdfXgZTxYq7Ku6F5u1
	 2vEautuMjhgVCrbeT0UWBHeIjYZ0/jcANpnAI2iAzSmzqdVsKZyHkmX8KwJj8r1Y+0
	 sOOl8D/Bh5ZmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F010BA425
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468089358.26511.4920937226142591122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9d62973c88a2f9653e532a2e2627c9574a7f2f8d2c452b7059a3d441f7fd75
Date: Sat, 28 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774680893
