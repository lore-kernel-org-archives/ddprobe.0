Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2AD1BC58
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718674703; cv=none; b=VDnVhKFLtBV4xaDr9DgzaMcYxQ0HYmpdkjxtqMUXFDPpUzzYwJpaJ3ZvSeWunrLp+Yi7azDO+mTQOohpBH5siG233jQrmeSPgoU1vzW6w80Wwm9Qp2hsbOlIVooSV8Rtf2GVcL9MrvXMyLMxDN4hRWOUf0UH9I0c+Dm5kG8Temg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718674703; c=relaxed/simple;
	bh=k7jpLkTtQFsLOzAaPBK1RX9+rrLjt6WG9XpGPg/DVJY=;
	h=To:Subject:From:Message-Id:Date; b=MNARAt14cxgJm8WXyJbGp5OuowtO14G9qv5yGRDJJ74ZZdug+xuway8NtbEPLOi61MH8pzykdFOuBsofAXbI14PLLHKke5wDYCwqYeQ6fNwWEuc3H2ZQ+q/aKaZrD/aWcxUj2XUmv7T0DW/3mLwfgA+gbTo1EuTFkJa9/LqCM8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyr4OwWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyr4OwWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED4DC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718674702;
	bh=k7jpLkTtQFsLOzAaPBK1RX9+rrLjt6WG9XpGPg/DVJY=;
	h=To:Subject:From:Date:From;
	b=iyr4OwWHBCME4wbgyiV5uTPTHF0jxYcpcCTWrFohb33GsRB906G6bShDLqGGVBSbg
	 I5B+Cd+xIhvYpkHj9w6VjvykW+dFfUPhFgzwnURo3vlj0GfOo66fG4HT9bX5x+Wby6
	 YmCdjk2uQTPnlqF2skSmDycctU4DgrdP/k8uyxcYLuK3pMOb+5uxbcRsqn60Gs3536
	 d0C4SQjLEUYWaj6286b4/X1DeH+nFizy9B8UE48IHnkCyPp0L++ucxwn8TA+tKXHhX
	 HP7sMzQWfwU1ZiifRiCfJD39aa7IgPhS+/Esqamn6Vdh8uGQHCWcKAYcskN/MlHptI
	 LmvqJK7HKMVbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C800CC27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867470279.32397.15942156340652753067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc57f7d1a9804003cf4f0f98f363fdf963a8a9b141f1abfde6cb256148aece1d
Date: Tue, 18 Jun 2024 01:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718674702
