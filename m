Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EAB252900
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758601794; cv=none; b=fDldMzRdlEmTQtH5ckVkUohMBcm/XxYoJvD7l22EQ2eYmViAsijVxrRMKTj7lzYbWyvkrLSlkNQ93ZTFZjGa8Lss1OvP1jX0UyKNw7+4EfYnoA1iXEjaT5MyvUzQ2Rv3DjfrnDmYLT2m9YvtLcl8emix1bmEEe8bKZw0a/zaiMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758601794; c=relaxed/simple;
	bh=NQPKnyg/rRK3Qj2whLy54YCgY35oj0bSy5nbhdV8U9k=;
	h=To:Subject:From:Message-Id:Date; b=WyDekGN82DdUZSeXHLutNRv2EdgvStCqn62R6bA20twdV/c8d3q1itLxOG9wdie8AywegRZXwUZjV0RnCqUUt4ZcInOk3lWWISSgEK4CSG/W8/2elStED5VzMidbuZXlvp4rNaw3RPxVndqz2ezP6Bi4TSECS6u7KDbJ8zFw4jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtgIl0k4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtgIl0k4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758601793;
	bh=NQPKnyg/rRK3Qj2whLy54YCgY35oj0bSy5nbhdV8U9k=;
	h=To:Subject:From:Date:From;
	b=FtgIl0k4RJPdDqzJ4A1RVlf2da1U0+thOrancCy+IqOClKrwbPdVqUtQCP/7OdeaG
	 Td4lqwflEB1YVMwwJ0zvXzj0hRSAz+/zjxAdTmWphwXmagI1iI1JpLLE5PUpmOrUXd
	 AdOccD31rvzAf3hXcXy+CeXVDoU6DQoMoRz3t7o3knXHaBfkQjsPqUbxUDTpiTsZqa
	 nxWIGuo9SToVqeVE3KD4v2T1hSnk5wNEMQv8hRCBkzVrO5r3R0Qs2Sv5z8yHijRq48
	 z0brWMnNl6+W4BHCLY2+scnTN4KbmHjEst5TfxePP31gd4c/LUzp4DZIcMG2QTJiqM
	 KeroU+wwE7GKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168FCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860179358.8527.3112986679624524141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfdc66efc50ee392bb0d331057107d02d8c90e10339d37e96e04ba4da7214db
Date: Tue, 23 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758601793
