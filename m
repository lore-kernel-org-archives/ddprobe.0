Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594541FCFF0
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740068334; cv=none; b=B7jWIz+PA+fnLCcBBhmc1H7VZY1Zljca/hRwUj0iby+JRjbvzro+dj2QLBXwMnXkYLFXXLbcfYEF4O8WUOk5fZc0Ic2/sClNpMOZcval+ii0VGGtdyE9przz4aQTH+SRIXYtI7ydJ+CpMUpSLro3PVLAzga10rfty61TLKRp/tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740068334; c=relaxed/simple;
	bh=RIIi+bHj3E4lbx+HB74X7G4a25L10AEP/cxaoInQ8Po=;
	h=To:Subject:From:Message-Id:Date; b=uM3aFEXiRmpFkP2Zyk9vMzHQyFYonwvcyeKyKCYUIAHIsxzVv3DRVJj9GHmJ9fjQWgtNfqxwnPu8/MdW9/kWwt7I/gPF1UEszHxLJrmgc6gLoJTIyqHvjtRd3geSDp6Gr9XrkN5PRDN5JBJIa3eOuetI4mBaWQzmv5JRpW0e6Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQ+71U1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQ+71U1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1326C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740068333;
	bh=RIIi+bHj3E4lbx+HB74X7G4a25L10AEP/cxaoInQ8Po=;
	h=To:Subject:From:Date:From;
	b=PQ+71U1hRl+U7H+lgiZ6BZ8EMlhpVQAE4dE7mqD6hwM1qzEJlojYE5aktedGOzFGM
	 MV35vum0ortFct59WIXkhQJDeGhIlPIvYGi44ukIs+vJ4V7Jd7qqkLIsx6kQjumxOf
	 QgVAfFAjB/3/otHkvFeX6YzIX7utcMjcD+D+Rvag4AAvh40L+PT3FTIA2WVGyfdy+n
	 tiLfDysFGDr0zzQupHOJrbXzwIIt73j57Tnh6RY2S1vtUzXxHk2fCvf51yGXCqlI8E
	 Lc7afVK4Bvvi2o8w5a1u9LC1JspuhoqY0QXL7VCwyOrT9EmkNUCMpz93cOQVeAvx6n
	 cfjNPZPEekbPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F3CC021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174006833365.16582.9868066795631338621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f161a21332d6900587b335b4246a390e75e6a6fe65ca93a2e00992099c001a89
Date: Thu, 20 Feb 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740068333
