Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB9117A2FB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783234714; cv=none; b=VIS84EQWei6ct2db3bOdpuXzVCBitNl45hvwANZIeq2ZnFxzmxfME3yyg5mo/lcvdkTYl3D77KbzwjwmkZ4sJ4aU6pU/picoxJ3nmXGkheSqzt8sdrReOL+f+CUb1/JhbPpKkFQrDhbLybn67NUO9ixViyXTCZC2TByj/xYzFgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783234714; c=relaxed/simple;
	bh=GgglyVwq4XIOBFXiw79t6kLlYYmVTNvnWX+HVbt/TxY=;
	h=To:Subject:From:Message-Id:Date; b=Hm/IsBO1HDkRxln44sf9KwDtSe2wzN9LeU3pvWC5Rdo5QDIKKWfeUv/clQqCWpYtpozddBhEf8X5waxFeq5gts/KpWww/qISlhH5ORy6Q9IkuBDrkqHOr+sQ+1/dCQl+Afkfi+v5gBQwpbpnuMKsgl5ICEOKKHrbSYeauQf9jds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEzUyBDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEzUyBDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57C0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783234713;
	bh=GgglyVwq4XIOBFXiw79t6kLlYYmVTNvnWX+HVbt/TxY=;
	h=To:Subject:From:Date:From;
	b=LEzUyBDhTRIvMzJ2xC3AVZ0tW+x4HYk+DQ3d4OCHQET6yYyzEyV3PlnLHTI1IQtB9
	 suvjzzbxTS7sKSM8MpBEGIwhzGtIH8IKHdpoSQef6FrXs+BmCnLmVa4k8GMBmQXDI/
	 oavkJX2IeIWAHjxzZO0WB9d25zgKfSKbzZ723OJUwOTBtHLoDPKHe3/QeSwkFKELyb
	 XAnBP026bbReE8UL88ToH1UW1xkQiZQF8k8RwdwNo8M9zmWdzL+tefXwJrkd40WKn8
	 t/MzzmYJblqm86cNTCp1ZHkFj9sX7PQL9dbwj39wKi8+QC4wd1cFht+8YJfDY8RNEV
	 Dg/L/yqIQCh7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323471368.11568.9854911914495979178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b072f439ebde49bdb9a0eacd941fecb7b479720bfc66a1cda5a3ed9b2120c0a
Date: Sun, 05 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783234713
