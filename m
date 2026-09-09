Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4338E5650F4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788967834; cv=none; b=TRvpExJvgqroISaqSbbPLtvZDwUffqoFXrIIW2rVeO3ckn/j6uLkciU2/xqryLfk0ZSKyp/xHgwxH7/qjoCe2Oso9dbvJE1auL/uu57x3fCN+RhqMV8NIuzIAVmx8JHUOBRISByXThA1M6l6GvHXV1yRyjIcECNvZhvIbYzkt+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788967834; c=relaxed/simple;
	bh=wbjrqIRP/oYtmTIdhvP10upJhIkV+ygRiqMf+tvru/s=;
	h=To:Subject:From:Message-Id:Date; b=iMdyVF04A12mJ+Cl8tMlsnVJWoaKJxCXX8OjnvRew+BQty7lSiuBE6j7lKe2ajkE8ovr//o56e3XlQtsvNzisUEFpyxGcIMpTbOzXl3iYzqfj3BYvKzjLLEzbopGqEqsC0gfS+QjNUqCvy3OnwkC/X3fbvoinGYk7q39yPb/+XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqzsGALt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqzsGALt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5069C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788967833;
	bh=wbjrqIRP/oYtmTIdhvP10upJhIkV+ygRiqMf+tvru/s=;
	h=To:Subject:From:Date:From;
	b=tqzsGALtwMmkpEBo8o7dw9dpf5m9d4nwyIajMAhnJk8WzYxrWL1J7xxbXxiQitc5r
	 T8afFo0rm0KN1E57SNz7mcQuHa+NP3grp0u6uoKsFDJXgKNFU5BuMpxQXJcbzpaDiK
	 XVhVgn0RTYGG6BVG6M5gg3OVqLnloeK6IylGt1HpYJFpeYst0YXISoUZE3kE+OiUr5
	 g+YS1UBncA3cjaHlkgFUnwJrwzgaoWpVr8U4dUPA8zNrbJDumdeoRN75GqVboT7noy
	 bmS9alVcx+dMQSvK9DCS1v2vLchQvPooVsAG/Rj1bWpMNzX9S2BoRmgBCHSPqtv3Ls
	 xcGQX+3Xwp0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B297BC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896783370.22648.11852259158336939751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2991f2186b3b68f3b627ecd15c0659a0b463bfd5e991475371923b6163d270
Date: Wed, 09 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788967833
