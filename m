Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6948D542EF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790085034; cv=none; b=WGrSMvj2nZq6qFLH0HFusU1+RRJ/lsRQnDhhclbx4vUTN/gYuHG+4pZtbvYx0mW8cZvNXqi4IUmcrfRsIRKczDcSjdy09WhjToSqL7oCZSrlQSEQWtUiWXc4h/v+NpYvDWjbdveaga0vGnLhdNcdJeKM8ve/+lnfHovCztNG9BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790085034; c=relaxed/simple;
	bh=P4+wYWqgYqT/Ur6ww9Fd63PDSDkZeZ8kdug4eOaQi4Q=;
	h=To:Subject:From:Message-Id:Date; b=sllyjjjkrV13WHUG6K4dzXhn8Sqw5HD13hxZJ1xJ5DVXTbILmjBPX7gMipCXDoMBk0LKwUycLKSZm5XOIyjIJ/0yPv0/aGhXbqBNkjAurHfQ5O2MMURW2guBuI6RdR47O05ke7bSiCzvfMg4q86kLNboD3eK2YOCEh4KblSn8s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLqUia/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLqUia/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0B7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790085033;
	bh=P4+wYWqgYqT/Ur6ww9Fd63PDSDkZeZ8kdug4eOaQi4Q=;
	h=To:Subject:From:Date:From;
	b=iLqUia/oJYdWi8mvIkp7H9z5WGhZ5L7PL//48nDjBR6UnfIxR+wzAjh5qwBnRw65L
	 at1lqhaSb6O7M4nN8+z569q7ilXgE+FJ7kuJxOBSXaCzzFhQBvZ46gMfBnDnpxx7FP
	 vy9/BNlIdS5DLcJqJGjxX5R5BthEe5bJFE0Zciei2/0FUNNMsY5pk7UuDAc7KEODQc
	 NcYIAoImDr/ouINb3aSIjue77AXdoCXFG+1OmQvaz2UkRFFB4X18RM4xlJmFx/s6Jf
	 5poSaYNwHgGHOk9dwirlrR7emqphb92q5CtQg/8yX7Mo98MebvqRVk+HEuZw/wF7a4
	 uNFF6fgzlvs0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43EBC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008503371.14485.16701603423619972551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7da0f189ee470d14309903f42e432927908629c121ab8b0f563278d631d9b6
Date: Tue, 22 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790085033
