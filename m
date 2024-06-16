Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6672471B4C
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718578703; cv=none; b=gWloC3i9Tl19qCwDspxqXJUXqDLaqV97GQTPdQ7TCf7ibGCMiqazvW8WbeElNdV17POYb7ZGMpHB7jDBWnPXElcJY0EY88Xce3xOhkfXt5Ba/VkmetoysxdOzhkxR0zRRel5jBn/wpruL9lC3f+KDE345IpUiva5eoL5th32y3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718578703; c=relaxed/simple;
	bh=PCLIO/6qc+OcgBTHYsLRmx/7w/qic0kCyK3f2/Sduxo=;
	h=To:Subject:From:Message-Id:Date; b=aeLW+uPogLCFnMglZk+s+sMKTacF7PRIPu3WT2jxko8t0W2sQigPd2nm8dGCbTbB3qDGh7u0+LyhDL4W24QS5b0MmiDpYskZlwu9zNnb60ATZc9wdYKEsxU4zfoofDBmWIGYj9fOUoHMA1mGpS3rhtHVqJoZY+2YKWriLhwufJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8zBcObY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8zBcObY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DB0C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718578702;
	bh=PCLIO/6qc+OcgBTHYsLRmx/7w/qic0kCyK3f2/Sduxo=;
	h=To:Subject:From:Date:From;
	b=H8zBcObYx+/9hkRtrIrE+wvXdeTEsGvvzTdArebzOyPPciiqD6lCiX89GjTOAjDt/
	 WkvuO8TMWCeqLVl0oZdQvO03/o8aRCJm7/7d38ALDy+j6ngv/GeZ6prfSFpaNTrOBB
	 H68+TOjDyEvZiGxpBLnQ/LV+2JKG602WyTtnpxLCki5yeSoQ8ULj1RikX6JRkvptGO
	 qt0KBNLfbpqVDbQRA2376eNS/yUX2SMuCzSWhSL/P9nDZRhGq+xG8h/XJ8I+Eg+UOI
	 kgpzfH/qbDx7b+lz/9jZzM3CNhoSsi3y8op6y58bAdhP0Jq4n9FZu8daiw2ZwcycxR
	 TpBIHKgV0jqgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C276CC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857870276.26318.16217837664580722793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5a223fd148fc22d5f17a569c0b3f351abbcbbb1e8eeb00737caf7393bf9897
Date: Sun, 16 Jun 2024 22:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718578702
