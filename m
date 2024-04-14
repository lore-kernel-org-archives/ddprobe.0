Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6187B56771
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713113963; cv=none; b=C4lUJEFv5K3dg07IUtnfXOfT7tg9QHgYt+vppX+T+xyWz0tGfRxmA15J+ssoHQ76F8Xed+8zTh9VugHI4kiTg/wkKgGeOebjAk3krkY19b6RhCU27MQ0EtE6ww66t2E8CJ0BxdC54z63cEPbySz96Bg1ukZxqVClUiX4bsDTg6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713113963; c=relaxed/simple;
	bh=LB6MG0fAGF4+s/A6eDnEtzt0E0GEE1CrxXEcCWZ9v5Q=;
	h=To:Subject:From:Message-Id:Date; b=EiLTmGzl2O4NQkiDqJy9YvEFwvZEWSF6duPfqasObUgJXQrR5HKmt3/OK3DL9KFyC3IZmSh8RlKDB9ChBtQU1I7ZSIBHFWoCJ8G84d81/vSYdLNbpUIVKfKCnheOou/H8upVWizD10+DXfhTvaeGQYg/p9fbs+1U80aumRF0X/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J87WCTpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J87WCTpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EF9C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713113962;
	bh=LB6MG0fAGF4+s/A6eDnEtzt0E0GEE1CrxXEcCWZ9v5Q=;
	h=To:Subject:From:Date:From;
	b=J87WCTpRLk4ZOfwS6rqaGFJ5eiYQ4botVWG2psMJQa0Ny2IhaxezEkl6lGgPzOVId
	 fteYL6rswNVBjd8G8/KK5nKhgVfBlCS2FFSg0Pl0U/HE5aTgwz89gdDQHXwmBMzQQB
	 iiXihIUjkBzZGYtYrAsnV8aDA7xq83yYH15GeO1b0RTD43m937KTXJ7E/bUdh4k9P9
	 Mjx6cXAWzLtTLuBwtMGaSDpm2nWxryHYCKYaMFd4CbvjmY8QCNqc3AF/summOOrTRN
	 /49XtaZsQKYiV6sCjwHblzcuR7IkNihsdJk+9TJMRAfK6FuptN9GpIcEc0cenisxuL
	 ru6nKGX7lJTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC82C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311396275.28349.9698498683685433858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805c0a3d6fea07c263dd05627c1abd91b30d01ae7f339637ecf23983ee83636a
Date: Sun, 14 Apr 2024 16:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713113962
