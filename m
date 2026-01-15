Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5557B3B530C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768490634; cv=none; b=cOTPUTGwgdag2i8HgH8eGCOt/ITbuSRbnzmCPSXGDN0yOCJ0RKuhfymkDk7SM9Umrbxx2BkwHDQNief04Vb/iuX8PcB/VqSey9Xo8xB1RMrEVlg+yEU7MhaRQfmbK3NVdLy6MIGcp2hVoI2X6or9jrQIjdgdNFRK5VHkw5jXT6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768490634; c=relaxed/simple;
	bh=vC0kUP+DBmBc/ST6w/0BcNTIpXPnjpFF/0zj27q7n0s=;
	h=To:Subject:From:Message-Id:Date; b=PBytHhlFbyDA1/5W01PlS+81sxJYnZw+61AgXZgJ4P0dVYvaih7ERppi6hzsbkOBIy3jQdUIyKtpTnRECCahCkMaZjsY08zrXftWeYTUQuEWl34VCC2G4n6+8XU6tHFxMn5VPiS+u6SFy2CVnuCiz1FoXPgOQdeq6h80OaGuKVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuYN4OA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuYN4OA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB1FC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768490633;
	bh=vC0kUP+DBmBc/ST6w/0BcNTIpXPnjpFF/0zj27q7n0s=;
	h=To:Subject:From:Date:From;
	b=VuYN4OA42S2va420GokR5a6T2VkeenptOwNWbJgc0cF9fk9BlLJpVqWA/3WB1H2Y3
	 AGFNmaL3AAp1/z/htSzglOeMotaZ71vq111/G1PYFh0P0290qQCmjYwgdZLofau4oo
	 Qir11CUS3NU3TDBz+qU/fE47x99Cm6oNkbnyoaQADa40u0K+evBQAkFckPl/oh4+Fg
	 YyaLXJ3sYWqMRy+hb+wbXOWdlNJBP/FDWPaJ/i9RLJgn7YHqezgfiXS+mrzYPaW8Yq
	 CGDzLMGAsD0lwxfsnCrcNzd9RteEhHez+TyGTF9IQ5c473kX5+ZJbowxOfvw8Pn+EE
	 pWQCK/7Q5EKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013AD44C63
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849063358.5041.3000128085183352469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865cff3519e250012b50f9c1cf72a39ec08245abedb0ab3cac682d173bc8ea7f
Date: Thu, 15 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768490633
