Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3483F2E62A7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744321194; cv=none; b=YidSdnSMZFLF1Fl4x/Qt4+8VCrUV/cl7Ue1nj7KPeLd85aPHA4QKVLNOnz5rV+tVRjoD/nTzmrlQuKiZdiMu8QK3uF+LhVrkilnPq8WaTEP39OLg4UvdI9A8iJQTDOwgtRyo5vLqVKWDgWJW+6N5fxHzM0BjEcN7AKLoRSp9c8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744321194; c=relaxed/simple;
	bh=Y9Y0UGchsE297fuZvLbxSr0gXMtN00HbmnCgug4grnk=;
	h=To:Subject:From:Message-Id:Date; b=RmGEcDyO1X1fPAQPPsJmNm+pCj18fcHHqKh0xpius2ehN7PC5FC4PHJUewqSYyuiQaf7r+VyttI7y1oj1YwPa3UOTPTop0XxfRRZlFJK0sQtW2oBrw85C4UyAg2o2iJK8+mPA0J/qUnYwhgXUTHjBo3z0OMh6uQrqnKfJTLANxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThNgcBVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThNgcBVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744321193;
	bh=Y9Y0UGchsE297fuZvLbxSr0gXMtN00HbmnCgug4grnk=;
	h=To:Subject:From:Date:From;
	b=ThNgcBVFLvUEX0clyVTDhpLER5GA453Z/1zEUQKk60Gj/sUcdLYBBiOpdSuHnpf8j
	 i877U8n93eQdCrqfCZ3ADlf47iA/z2488NHrdZu7ldQ723olbpH9nNpLUhuEsLZuWq
	 1CAaRnKZ3Co6/Bd6+fJUNypbM9KunWOzie2jRm73fkFqwlCYbC1Y299nzG8fLaCjjS
	 JgLeJr17AUA3ByS24qMtOFlKXkwvSh8vFgRGY9nTvclcs+DroJEVai3JcOL7UdH+vf
	 v683ntgnnealhep3AJSAgXx5hQdYe/96CvJDLqEiS2lYVWwrx9gw3e/IM6wTGSX4n+
	 6D227MLgICZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB5C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432119359.1740.8979750599095673038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed33035e14e08a233b99a337f4409ac4811c0bb0b1c0efcec83628cd91d99c1
Date: Thu, 10 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744321193
