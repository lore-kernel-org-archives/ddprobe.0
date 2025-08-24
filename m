Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20822D4DE
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756075194; cv=none; b=C7ZdKppDXyJkCKdjru4x/HmWt9tzLGf9HTe5kzCF9xPe/tDLDt/mvejWfCW9CuhUoMoETit+hiWhi0OujU6/VUe0U+Njzc+TQHhxGKCS8IMgITYmuY/Ty2Gt05DPCFIE04u4sHXvcQkRzIVrw0JP8bDxQH80BkVfsuUDlerjXJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756075194; c=relaxed/simple;
	bh=bn8yapTyR1h5DPqyVng/9lWK5y8blIIoaBTwg/L9qiQ=;
	h=To:Subject:From:Message-Id:Date; b=aFZuYsXaVzcxJ99qNfA2kv4Z0IhJozk20eCRhwKh+ks2moMSI4810/1lLPCpg7zHUpsCWVZV2eb0fQ//C4amcfwli2/NsHmNtKpE8y6uDl0xCnpZTP/hQsZuPYhayneBvq9A2NWlnM1iHUIUeo66cY2JiRHZKZn1rCmKbsWQY68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdCNOEYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdCNOEYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1078C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756075193;
	bh=bn8yapTyR1h5DPqyVng/9lWK5y8blIIoaBTwg/L9qiQ=;
	h=To:Subject:From:Date:From;
	b=ZdCNOEYHRGZwjjUB3oaWqWQh8natUXzn1dcOp6efrXxENYYjyGwTFut9r8FPTxGuW
	 uaRHIAEv4lbaMOEwx1hn8D+m1n9vwFEnLH/zrrtsQQ7sJj+NWhB7/0puQoMLEL2J55
	 wnGPRAxkOsvVBdpyS85SA7Oxmyx1WGSXAupFr7gkCfsoy1NtALT8lKAt2OX1cbX63X
	 nLYdFz0yhMLnzb8gsdZhLGlnhuiuqMZR2mzkcMjCFylaR/dHbp5Xc3RtGMRDOJlwya
	 LNIKCt76MC2Zmt1OwByYzLY2SM5tP19AzJU/RQbknvVzn8+NS9WiMitNeZhUW1iKJ3
	 8r/RJvy5FIUCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00FCA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607519357.23840.10790323351876802641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103360befffcbf05d44298db6975e2d3941a726e3d808d7059ed4a880458ad56
Date: Sun, 24 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756075193
