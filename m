Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA19824CEEA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769642634; cv=none; b=Plcr6AeYvIgbLKITsKULZ+Z6189E46W86kO6clYkBaqdWsxcDrjrInQMYxEug0KYp51dWV08l2gjOGQudN5+MoW/sMUEI2jONDR+E8w79OeE0e/8PEE/8o2nf/u1y1ZKT4l/7pbcGQgpJAUpWc7MeNXAOjpcGwKaA7qzIGZI9Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769642634; c=relaxed/simple;
	bh=hqdyEup0byCwP0+Z5PDKaOdGVlPqcikg2SXg0ynLvfc=;
	h=To:Subject:From:Message-Id:Date; b=I+VdWUFMdKAH0wWOUOPp+4UNjZhYBBHgoZtf6MjDmx5gWDL771vKb0G4cbOpCxT98KfCQOmpG7ZcqrX6EWPV8P0tA8plGrvcyeeA+qa5IDMc8DDUGuEW8B3xsnxksk2dPuLE1eNr/SZcxZ8GinstmhjPUDA1vxAIz4zVnXlQIlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOxJRdVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOxJRdVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1848C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769642633;
	bh=hqdyEup0byCwP0+Z5PDKaOdGVlPqcikg2SXg0ynLvfc=;
	h=To:Subject:From:Date:From;
	b=QOxJRdVO6M63mvzwoJOXnb3lK3W35bBiZXnSikZrYRZRv+Cx3Aoy3ynJtZDsX8X/r
	 OEXtSFrg+mOGlF1CQl1YozXV2HxKUPhIuH7zShJtb/GbWhAkIbfziYahtddiH/qXgT
	 jxBiRJiinMfv+zYxLwy6YXoW2ujLqJCMAwTniRj2SGa19wjGCPc4DW1zlCov9rPYtN
	 ITU7kDYw0U4f21lIbHW4vC/5OmP410mvlDLnVjDq4YPXUHi2czvuUECHw3169S0c5u
	 gj8SmCFi0ARjS5HPaGGGP2oYnWbuqo9j5a62N60SsbRoR7jc4XfV+YGCQh8z0imtH/
	 Po81yXg8Trq5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F880D46C15
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964263357.2278.15345103101372532028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1f7053abfc9ee4adb598e9c909327d6a9e674770018a4d66d7bffa6464a66a
Date: Wed, 28 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769642633
