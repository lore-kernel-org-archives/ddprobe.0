Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5F313AD8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719459803; cv=none; b=rszIGqmvXdd7dngMckErTyv010zMSPm9SBwUXvJmEqyB1Jf2Y4N+wBuPJPQqDqOuiWp3BmAYCxh89NHPlowUiVV0y2t6D74cqBQY2CYcbsQQrkdfxM1/gVtbuZ9O1gKJxrwy5oGLrOpVDSPW/6b0hOQf/1HVEKU4ADR7AA5SDMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719459803; c=relaxed/simple;
	bh=49YzAV1uuio4I3/rCkn/VMiAPSAAlfm9aUzT6B5HjLE=;
	h=To:Subject:From:Message-Id:Date; b=hh07jGmLUu75Z/LITJf8Trrzsz2/ZnA9EEh1pcwxScqt2JbwBNxC+Lxp8d1Ogh3r+CX0KcNh7Q57w78F6lGIs5bZsXUokk5XJESQE8tYL2sfavNYTvGteRqQ7qM3nVzgveK33OB5z1nliWep3rOy8xf/3UgZE+JfTjT2vZDpC1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BswXUeGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BswXUeGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E42C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719459802;
	bh=49YzAV1uuio4I3/rCkn/VMiAPSAAlfm9aUzT6B5HjLE=;
	h=To:Subject:From:Date:From;
	b=BswXUeGozF8qjZc/Bu1rVbj+Ib40IhDU/4J0o95J23sDGp6asdydYPvNg4+L1hMuD
	 t1B0I8unZYMsf35lBBMkeef7p+mm8hBFio80KejJMq3kITfuzL3NsPn820BzfvO+T9
	 PRN9uLGj5MLiqqz/pf4pvbQHdioqUurDnWhRbE/HFdnFTtqx9rphT0TZBCDdEzCzHa
	 c8eF3i/ZF4H8Yn3Gv/Sa9oTfto1htV88PaILJWJRlL/b3yh3lvF3BxK7G2Wz8IkYsa
	 V+8KGU4PmkfVW3+Wsi/u1e6w+P80kBweMMz/Buun2WW50oXF7t4WR9uW4KnQEPPeD9
	 /uC/uJLLZU/3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BDCC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945980279.21173.14268971231607159730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7685795903aded1fbfb92717d639939e8d949397b1ee416f68f8b1bae9d5f0
Date: Thu, 27 Jun 2024 03:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719459802
