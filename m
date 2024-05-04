Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5061E51E
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714852343; cv=none; b=e+xQHugI0sL1XrCosT+C36Deo/SCu+RPZk03pQOrKVp/ckIPLboWvUS9COmYE5hNtHtiCOPqoKjL3A+Vfbs0EewNlcn6k0CxPOgaYvcfEYojw4I7RScQ0LPnrJqmjmZPDnufiL/3IbhEEwYXlPXC87MDwyJh8P54hlkJYO53e2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714852343; c=relaxed/simple;
	bh=E+Ttr64ubU7aGB+uF6RnDRVZfS3jzN8irYonH70cBKQ=;
	h=To:Subject:From:Message-Id:Date; b=phXoOk1R2y4y79evjzbTfhHiacEd3Jn2XUuwAWYCPFDZEXCVlTUMcbv6ajx/HOqumI2ArByFHYhXmFcCY+M5ZP7xt6z+uH+JeU00Co4cav4wS+W1rInWdb4fF4/yl9eWMgONzZCnPEKl/LGNkLnosEXdF9NEgHX2T06RSnHU+wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+7i5aLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+7i5aLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF148C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714852342;
	bh=E+Ttr64ubU7aGB+uF6RnDRVZfS3jzN8irYonH70cBKQ=;
	h=To:Subject:From:Date:From;
	b=V+7i5aLQzdM4nl94tV6CmWsPUZWw1eJfsr1ZCmWkDmY0IpxjkQvklVC64LRaf+Q8P
	 LVvTbEcysr3UyqBdh0+fdItjD1cumkUdA16IZywc203RZXj6j+KTNm/CRsaHs9UTwO
	 PTRrOG0ETjUNTslDjPmXscMoUbZKBmkDTFMV8MfYEhw/1vQ3HryS8GBGXX+vYxYu77
	 eqq3TxRRb5Rc2UOJ1hnhYzpKwiJwX4cp6b1Dcim4AE5N1raPzOiQZgbnwd/doIG5/5
	 KG95x+UbE3xyxJ/HYNHhdIuwLn1h19j/8YWXaxUzP7z4UjT+PhfomrL35T7X9JIF1M
	 rLSUkW4lUjlyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F2FC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485234275.27462.17579247149892270663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d73e4ad6adf6797773ae831e57ead874a753137d92889787d4ac74cda7c9cf
Date: Sat, 04 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714852342
