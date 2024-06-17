Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE8718628D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718611703; cv=none; b=MI4SAJ7pnFfTnreb5rcMVILKlQf20t5mdssIx0bfbAG7pmHDzEjT070suX6IEKWz0NhuwZhdlVCdwozCWcpZZsPEtbXv1CIm9Umm2ghbsjXkX4Fg6qrXY6ZR8zck9+VYtWUn5DUVJa/C9foHsbujthxxlY8KJzVKr+iZGGK+AwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718611703; c=relaxed/simple;
	bh=adg+q0MeG4aNB+exgpG+F77Efrz6ytkIEkI3MLzVQoU=;
	h=To:Subject:From:Message-Id:Date; b=qAwoI3A2W9SYa4N54akfSgzSfJ21qb1PbEWv6EM5W0UYl09k+tRT9OS6Opp1+qwb17/qSCRJXl+WMQBWvO7t2lDzNfwPJRhyNlvWnAesKW58ugoV+GZNPA3MBzOpBZE7B87UUUkiLw0B/dtBoWXVfLEbifMYmHgZIDiJPMiYexE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lONIHVnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lONIHVnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB57C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718611702;
	bh=adg+q0MeG4aNB+exgpG+F77Efrz6ytkIEkI3MLzVQoU=;
	h=To:Subject:From:Date:From;
	b=lONIHVnObPBIVJu92VF+Okb1HPAfdM5jpDQe0/G4g0fUyRKJLMPeYY2z+MqvMRasQ
	 yxXbE1/bIEgAuQZad5cjBrC32vnJQOm70cnh8hn+QKOArhreSdLLEoT1QtVGPh+r5e
	 Fttu9LdqJfN2Xs6isK3TVcrseF3Ylk3IhF9JHGTPv89siXFRSTBVaZTHAXLjf4t6bO
	 ufWW1O+fUGM8wPVPX9MXmQ/7aTyIR5KqDYrqaZ+RUQBqVCb17S6oSjDSufK5kcMyBQ
	 zIoE+m2tXPS9v3i+JDF2+tH7PS3EZy+KYWa2Vyid1TNGcxn7AiJFmaJ/HVAf8DbDZr
	 /sG5sRzI0t0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6990C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861170278.22373.18284487790860496870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9bfbbce0484d9bfcd7aeeca54e7e474541dbaa6ce39013705aab9a10d47a4b
Date: Mon, 17 Jun 2024 08:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718611702
