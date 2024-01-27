Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17451B275
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706390897; cv=none; b=i4kHfvzu6AuHZJ+M7kA8BwhpAV9RbbVCOAepvxy0K7bLL/78Skt5rFaGuCdVseV+ITS/INoK3m3rTg+eXkldg9/bnfWPCbLvhd3RqtLkGGfiqyZnFNS0JnXAT11ZXS0bUu+Rz5dA3brpilM5u6m0i2+y+EiKukl//BCa0ON+4K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706390897; c=relaxed/simple;
	bh=naMFjH27PUoCxcBk19lfsAj9MS7KWuqHVsQFhzYHE1w=;
	h=To:Subject:From:Message-Id:Date; b=uUL4i7uxUGbfCIauQJ2HCcaSEnh6w0Fj+t+K7vNbCjtCaBpieNrJXWofWHUZBCaQJFPFQSxhauZfIon4T29iuZE2eoPomCkgcAi60e1msLLODRIMJ543nlbRsMEJlz4bnqYHApxRqc/I1eevEIUNsevMyb7ivFfcwUFbv3a7Bec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdGd59Sk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdGd59Sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 870BDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706390896;
	bh=naMFjH27PUoCxcBk19lfsAj9MS7KWuqHVsQFhzYHE1w=;
	h=To:Subject:From:Date:From;
	b=HdGd59SkOH4msNMI2SBzwrihWyS8+tbsSnnPUsk6gOgANc+77VY6iSgy0hbnGJwqQ
	 qP6qDCIu3gIGEI/08wArYCl9WyqUIpnNzDCdaXj1w9p3kEDM6L8kruwerdQ5ZOV9iE
	 x9GyskW9fIomJJjxInatz2DKKi28W82xwQpNvg4R4rpNu5wgGk1cNsSz6dVJagCSHI
	 mys8yYCWckMGZ8Ne45sOZCt+deWrbNoys//5WEEdP3A9BxspipPSRdlpKOwVlRela6
	 nFIKCQ+9pl+e9J1mJa+sAK0QafQu3vAG0Pxsjuoij4k/6GXanS+mIpMfJmg3cYZu3g
	 wBERQyucdflUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670A9C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639089639.3975.6588943378338257687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa62181e3186f2ffd6d19b72118d7d635d15c47a245498d92947a64bb69654d9
Date: Sat, 27 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706390896
