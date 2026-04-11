Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258231C5D59
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775872054; cv=none; b=J0rwx+eOFhvZspVjfevfcsKKItBceePs/WTeKRQFcUKSZZ6JORD6RaI37C22tv5vD6O8xv+27wOYx/e1y8//xWRs/M/2BkXZAJlIwG1FY1IgBWVdPs0UCh0/dzX4YSW6QFspxxlLhIsRZm/Y1SNZn3iW4e58kHrCLfpyLUw4xeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775872054; c=relaxed/simple;
	bh=enrCpnMy3BTUjQNgG1bmNHKv03G/JLKttCC5C/EUXxc=;
	h=To:Subject:From:Message-Id:Date; b=WF6ZXmDkWDrub96sdvx4jfSiVbrMQPpRDvSoERO1jQY/i1Bf3azFFl/ouex/h/7iwwDnsk5epkZMaM0oIQfqS/GoIjnBcGcwhRYNj3I2jH0/vGMtR2M4elDqgytqpGia60eLrqZNcDZd8Qnsj/cqhADbqqf5ENfxVtoPrLINFtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTSy7HbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTSy7HbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14C9C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775872053;
	bh=enrCpnMy3BTUjQNgG1bmNHKv03G/JLKttCC5C/EUXxc=;
	h=To:Subject:From:Date:From;
	b=MTSy7HbOthTMB1m0BUIORH4PXvmhRY8yF+efiU2pljrdrkduL8PCCtaiF+gkgP8uY
	 RjrnOtmMwxlK7dI7kaeZb42LcD/Inqa8ZGlxcXO1L6CwBqm4crRrIf5xxHkT8ChpG3
	 CqyJOQS98yrp/zzy9WWaYEYvphmfv0atvjHQQVRPIGlm9IqSXxX+KFSwEXOgPhQH2P
	 5Oi56V+IS4seOPdm5dMeIrR750KrdDAJif4DA9rxu6+/0Pyn3HlaPM/fVQKgVMA0DJ
	 6/R2YFyesS3HDQmJnXJ1Avih3hwFdjFUjcp3DSDZBAvelBWWmLwS+nMtDq7PpzgOqY
	 rpzrS3Ds8R6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF929F45A15
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587205368.27788.11490929504491685373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79aa302b27cf8f433372cc722cc0f771d9e94f2c2ac668c7ded7d2bab579052a
Date: Sat, 11 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775872053
