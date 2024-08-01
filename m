Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C16C1AED45
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722526554; cv=none; b=VykQg7keEpP+kC61dfvSSMzqHV40fjYBW6DZKGpKiKIrXiOiNMvqJj3pBU3TMehdzQLN/SpvuV58WnccXAsGv5YaQkImIvQAo3gxFgmvl2kuv6lDHh8oAvYE/o2AxqQR2DnSfvlqZ97MIinSmC2wGxluV4kSKAJfhqyEWAoShvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722526554; c=relaxed/simple;
	bh=WVfDSl2hExmf4XAet/g+S6Q8cjoY5k0D2hrEHSjN26Y=;
	h=To:Subject:From:Message-Id:Date; b=cMwSoqA3jmx+EoV/lr0lae15Ld1OTgL93LDvBzK8TbhCA/tOy37WAmQnf5rpoIzfaWt/5hSkWmAU/y8dp79PAeGfI1NM4GHsZ7vQMbxJV8xBuB1jgaIBY0h9biaex+xnCszS1E+VP8Q7AscQMigb+ygAYtVd4mKgv9iV29oT3mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzkbM4fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzkbM4fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEA8C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722526553;
	bh=WVfDSl2hExmf4XAet/g+S6Q8cjoY5k0D2hrEHSjN26Y=;
	h=To:Subject:From:Date:From;
	b=bzkbM4fySTi8oqr8Wtiv1JiYsHpduKgBN0eEAknbkco0PRssNTM+K5hi3lYfImA5n
	 0GgYIJDVO4JPxo9QvgUDGoVrKCdcQSQiuwmsNf6+OCKs3SStSlFQi3bH7Qctv4dSvY
	 03IOLMZDjkXXd1jeYVtDCI8H4Fjl13yYEqcrseTQTEQNWXHxG7y06zAc26eIUyf0/5
	 OkuVau6F1/66oLl1pxV4wu5JQ31UeRpPTWGHG9FeAMymv47PMJNqUA7N4wsILgWiW+
	 U2vOai/FdSFoIDivTjS2luTvqj7AAFGI4ilkwIjsXfpP8iL8bJ0sUK4jLBZv+Mj2/1
	 QIowpIwW2trLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D98C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172252655361.5735.17666870221729755901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde8b06f4f9e8a05c78dfd18652165ea9c91eab3aa1e1f09ad14ceb9b0bf0d8e
Date: Thu, 01 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722526553
