Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BAE175A75
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777472254; cv=none; b=WyhkBN1NFnlcueRWk2mr18AAjxc2lUAu7Agw4YZWeVhCwsPaJCACmFMonpjpfbrL2lXTv/2VNU3gk/zZ1pzL3osLVMDp2ZzngpIQE9YcnKWBuV/so4aG/+0Gm4bgK7OEzu55MpUaxQUkQsZDKd2tlhM8ryL6aoSDlsnM48RiB60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777472254; c=relaxed/simple;
	bh=1S1d91BUs0kjN50bcZTzjR+/uy6sBx+ujkQHZh85nGI=;
	h=To:Subject:From:Message-Id:Date; b=qLDPSMwnrS0DfwgnQaA8NfNWxhsC0KF8M6dDjF+rcsMsy05K2UTbBqlDrU0IklC7V9GQidCaj5Q1wfE9wuWU3v7Oa2rb4p+iH3lRokHkCudHuUcDjlB8v97FSLVHOr9XdbQGiloJwMPrQu9l9RVxTbeS7CsxOQJYjrGNSobSl/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfcELcIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfcELcIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D73C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777472253;
	bh=1S1d91BUs0kjN50bcZTzjR+/uy6sBx+ujkQHZh85nGI=;
	h=To:Subject:From:Date:From;
	b=LfcELcIPkC6rlwfrHEnnftTrIfsETBKTMcHKq0thmOBSYZA2Oey5ggxr2biTTaszW
	 mkVrUmf4unEomjxVjflJqWTiEpDKen81NtbbJ+ep9tEYKXoIR2eFK6oV7+N7p4EX7E
	 OA+n83qurIefBAfVk0/oa4Q8x1T70V0/GA4Kfqq7qV4Ez0DurXWOgXfEB3FyKW0sFL
	 UOc+gC4Z44hApzUnmSpqn0TgeX8uYb3Jra72tUORy6KNlqKlAv0I7neOsyLVuoxX29
	 P51ale1QCvR6xPtr6D2O5GxV6II+h6mE/MCkvZbYpGx1IlvI+mozg+Tmytd5afcoq+
	 lvTq9ilzs/Acw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB035FF8873
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747225369.26091.1786570897277852903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5164d9f79a16e3b619e24d1840c216d2bf0c819255c0b7e6e0031d31b985273
Date: Wed, 29 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777472253
