Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA8914A91
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760660394; cv=none; b=k+3iIOsWu3HaVLSYldPnAcNcTE1jtokBZ33Oub/lYKDRQamM5cjDv9hJ5SLHhN2GFANianZrj8w/tobofzp69lTkUF00oIF6iO46CizQw0spPG595bDmcCx9h0RRo+KXlJ0GAaKqynxClPxbS6aXOF0GSH8DZAqGZb7M5JGGyOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760660394; c=relaxed/simple;
	bh=2TBrnqVYrG5Ha2rBcQYHxpI2P+i4pumKOQZldB29icE=;
	h=To:Subject:From:Message-Id:Date; b=aOKvNCbkH+QhNPOBHZn9RCzPF/YJLExTKtoSNLnVhq347aEIPjTViQS27SzUtDk6gInOldBtO8zXMk3oXtT7FonqsFKwqHScwqFpWU+EvIq+GTXRJkqIZ+za0pMFe7SlKw11bApPT8xxvRnFl1alYmSOvxQ0fCmrlGRXdsC6cpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYXWLqKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYXWLqKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D41C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760660393;
	bh=2TBrnqVYrG5Ha2rBcQYHxpI2P+i4pumKOQZldB29icE=;
	h=To:Subject:From:Date:From;
	b=fYXWLqKnH6waseJdUKVZsBre7oRPdM6fDy9y/rKe+JomTB/aLwGZ0KPmqbWd7h/G+
	 81awETCmHm9PB2nrcOi/PWc8sFSZzfs2ueqfNlEONqWC4BuE8bifEWz7A3jNQLpCkR
	 obG4aQv2WPTkcRLaGsoD0AU79o8C71vQk2rGIwOlfDIbvlM66rHCXzTtQy/wUvKiMs
	 kUIFt+i6mDj1DVd3GnDTlba/DCFSPTsdYpAflaAahMPvjw0BGnjdy0ss37WX6iJhQN
	 RjB+hGEtj5UGO8MYMaOP3nIARGwIqHkYRoZrBE6hkno3dWGKcydqt3jkCXdvuYNpK4
	 F8d2yxlpG7MYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B5CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066039359.18783.17419816900184105767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24b3c2adb613e941ad3df5f74e180388387f3bfec4c50306683734a60723a00
Date: Fri, 17 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760660393
