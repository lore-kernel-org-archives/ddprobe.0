Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088973D667F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785486634; cv=none; b=hZMTV0ybu9ASvdmpW6OZx5ntre0RbertJNhYZMpy+WTPBqKov+k1XA+1LJSady8O0N5tqHWoYnP5Hz51A7r39YIvwOm0lXuksnAUoUPYR+MQ/kLBH1xb0qZGHkTR5F2qNHZgkUFb+c0rEW1w99T591rvMQle5o4fEok4BkcKdvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785486634; c=relaxed/simple;
	bh=ix4fJkWoe0CCxzKPmywIomGCwznKXW034fx82Ho0sTw=;
	h=To:Subject:From:Message-Id:Date; b=Wxyjip/HVvLbUoQbm8PbKYVJuZahzqvEVeq5w26IoBqd5d+wswTqjlztLqhXt77iouuh8bjspexOwRiD3dPNLnbsehATgyLwZ0lj8F6ygW24ca01IKpsiyDz+Hg8E+3YH6PWpe3o6HwdIr0kqcrRJ/8+fu6z5b988fnMNIJa4Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPnPvf4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPnPvf4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD75C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785486633;
	bh=ix4fJkWoe0CCxzKPmywIomGCwznKXW034fx82Ho0sTw=;
	h=To:Subject:From:Date:From;
	b=rPnPvf4U5/ZXGtNveYMr9A6unVkWAbqhoEAfkr175Qy5IlxWrDqxlFgTdMebdAQQE
	 oGfPQIYfhNKKv7o8Ywl/4S8IXdIRT7Xg1egrG3OHAyTwFqM9e7HWjjwoNVawiq06UB
	 1exSl0/DSAoTy26DLjffuLxXkJM/sbXne4VZ0U3382aBSL/Fh316pyAVA01+ztGFAJ
	 GFmAdc41YYHdtjlc0fI2OnLtvRdUtiiqGoXVf7aOEHfL3vyNC8Yo3fik5qd5Q13Ime
	 X2jxIlPc2aBvMzwv2olNEU3EQdsw4CWcxU7NDtrs+mu2HjIIB1eMIaQYXnpiGKhy6z
	 OdQ4HZbNl6oUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABEFC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548663369.22305.13465960166986238427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd341ba2931184ed3e23f4434a8b2122a0f0d6d2a8cc700888dd96f861330ff3
Date: Fri, 31 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785486633
