Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339F44C69
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728434754; cv=none; b=c1b+TQinwJXmyt+KOsbjkFJN1qDJdxtt4nbYt76LgbrT7EYdpVG3+3wem2zRqPRJJNQlmf7e4JvfQA3d/GAT25NW6MC/UA/C5C9+q7/xInEqfUoBf81os9SioH7vgIJinpNBo2/Tn0cwJL5G8g7NSVwwBjkTUjrBA9zQuWwkWzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728434754; c=relaxed/simple;
	bh=wkqArGCLHw6kvJrniFuZVEyJpkUp24CwcSgekdSO9JM=;
	h=To:Subject:From:Message-Id:Date; b=Pnw8LxTCmR1WDYhWhxDBL4PA5vJJtZnSvpE1UNdlCyoCC5zspTbybO+FtLT95r1/MhqntgBew/T6a7GEEJTOZbehwZmOzOtuwxln49hGniXplB/SYR4W/EdDB0/FGjplA7FO8apMkBfKHdme/ndcJwiKCMH5D06sLTuVhbo0l8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldbQExG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldbQExG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD05CC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728434753;
	bh=wkqArGCLHw6kvJrniFuZVEyJpkUp24CwcSgekdSO9JM=;
	h=To:Subject:From:Date:From;
	b=ldbQExG5XMbSUSkBqe77+XR+z3eS6jl+Eipf+akmkOI3RC0/zW9u8PG5CSHrXcHIZ
	 kkRAgHLJr3VH9T25p3E3Ujrn81afnkElZUwSjKlLh+7WC/woGJv8Gv4qDXNa4a54dS
	 d8VfrDdEOjwEWjnY/t2e+jSeosWLyboKmRPm1sZ9ZbiJLv2ZZ3zxv32t9Em4aomOMJ
	 pXsLZdOuXiY4sqiq/ns4PSFyqq1QzZD3JndJCNZP0SPNB+WXtdPUCu8GJUwQDdHr7r
	 TmAk2mHluES9UL7HmtzMbLgXoiEKjsIwh0KldOgZOP0IXgzjeycVTJmIbt2Rv98VMF
	 wqyYVaauo7kwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92322CF042D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843475358.26234.5704294895086783167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1c98c90c96844e4105177ac21450827a1becd456ec8729325272ca186674ac
Date: Wed, 09 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728434753
