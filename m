Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD503C1F
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763379113; cv=none; b=sWFAbggeOE7cAccjNfShGVEqzavE/XIDO+MHRkAu7Qco67U/eStNT7xj8CCPOEJjBs+nUDryI4NaaRM/+IolFgkARLzOcYMC4u0T+cBmrUa2DImxd5AwMbqcJvOtNMM9oIiqNTmnaVOrIzzUHj5bzulA0jjEUJ8kegQVcYkRe/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763379113; c=relaxed/simple;
	bh=BYFdSN4DMuYpZAjx1yTOG7aqcN1YIokh4fM54F+9/V0=;
	h=To:Subject:From:Message-Id:Date; b=cte3Dr6uC23BzDSdrzC/xVKfp++jKpp7suQ0uLOENDcsRNIchGI4IKW9Rqet8VdJIw8qugUPPvITFRj3ygTpP1/WCZGvFK8DJNe2J/0EHUK6FQDFlpxlhMaqCJaol1wy6xhUi1ei44YWzG7oRFD7zByPMeuQhTFJTBGDzImVtN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzBnuZHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzBnuZHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4248C19425
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763379113;
	bh=BYFdSN4DMuYpZAjx1yTOG7aqcN1YIokh4fM54F+9/V0=;
	h=To:Subject:From:Date:From;
	b=qzBnuZHru3YRTR2GRnkDaNG4wWcp1lhHUY+lXLUrQUKUJqF3J0YDkEUINAEnLKENh
	 kgTFoT/bc+UFPNrI4GYyOB1WCsy2B3xU5dOm1/KGDb7jfp4KkhAJU3Zs9sF5753k+o
	 r7seJkDljjoHxsqOO35QKDNjNsPojwvUMey9RodLFtRFJMPYlCRWsXQpAJ07t36Qai
	 nkolNTvGiCjFKjAhFkXnYMOsXw7cH+9/Qko7qQLiM6jF0WZVjrP3mxySq7rmpJ11wC
	 ApvRK78PVKH2afyZPqiVJ75nkFvasrHVlWwKM1f+6r1DM0vG7LSAYr20FgFMGeGmgr
	 XDuI07MCzuXyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B7CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337911360.27805.9166299417350222806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbaf20e2fb3b0170bd4b5f731f41981ad133c8c1aa826415109c8471fa492a6
Date: Mon, 17 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763379113
