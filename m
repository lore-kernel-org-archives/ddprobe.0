Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A08E59B71
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743475194; cv=none; b=XF7xAMXNQ8kE7P89wYIML5N5NBxBXKauHI/f1/Ew4S/69s5WhAAwQSqDo6Q77LOt1XJXu0DMwumGdzp494mpql2wg35nN+CYh0buO+Xc8tx0oPGr/LefIG7Db2RcnYIMaYTg0UYIVZKXGX1PZFv4TWXskS5KaknUTeEhFJJNwpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743475194; c=relaxed/simple;
	bh=e8w7OFYKOXlUPtoeH+upYWu6aunc29YPQez9MjZKl60=;
	h=To:Subject:From:Message-Id:Date; b=P32IqqoXtpYeRrcZJagvMNEPrtGVgiEN6yt0tEXEQbCMHcm08GOoqY6nPZPtoJVy+kdKzUQRC5Ev/QJxU9tFERXv+CMHspi6UqYuxa5BFJDFMjADmE/hZNtWOY1j4X4JXMOna3B2eXx/0bPDnjdM40y+t4TX5dLZ+sXjAWC/Nus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQXDNSfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQXDNSfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9722C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743475193;
	bh=e8w7OFYKOXlUPtoeH+upYWu6aunc29YPQez9MjZKl60=;
	h=To:Subject:From:Date:From;
	b=MQXDNSfuR7V8Te9+WP08o+8sNoZSDJWbtU46sBFnqfR/GiLL+DxmjIA+QBhhXQ6Tw
	 RNvuWEqBBs9C/fVYFuCnQnZYOEnMr0yOmDrrx0RHXDGltfk0nGaMBngGobXt3ISlBV
	 fumBK4rFmEx3kIchYXxR8rMf1eDQno8aMCtFXLOXpjwEmvikpCoziT5H6sfGdmZnS1
	 LSbNW45z3ZwVGwUyge82FO+7PIqNCF66exEo/EIprn5I8/fnr+mSUkkL6GHUqXSkNT
	 e5pMqqbTJEz66r47TjEjx1urlv43t3Jffq24YVwIKDZej67dTmWa1RHp7qNjqZVrK/
	 nCZd+f80orNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F45C3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347519363.13565.17840186681402353094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212dce0ceef61bfd40f433657a9f5742d3f72d59300efe04e1c30f5754be44d9
Date: Tue, 01 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743475193
