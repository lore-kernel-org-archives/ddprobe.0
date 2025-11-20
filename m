Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2A136D4F1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763667114; cv=none; b=Ph5U9gX5lAKBXSnBfxIgOlsl3nx+HO6HUJNK1wwfz8eCjUDNhFodgs6C8SHs/k+d33NEL3f54yNYwrP1yOdtapndxKzpWDvi7HdGrSSxemJKPLE3PPpTzdfXfUGetJ1oItjihXYdfVuBxRrzdEboV8KvcoeV5u175vaJ/JyIMzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763667114; c=relaxed/simple;
	bh=1xrlBUY6O5BZuCmuZLydfbt9SE+/JzMRg9ToHBnr0gk=;
	h=To:Subject:From:Message-Id:Date; b=aRNqptGZbg4dN0tuqLJPQghsFjc4F5XH2RTw/bqHzVtEtMQZRPOcunDLs7i9cHjQZ+ZZgd2VMgWI5uhNdajXWFF75RFUnepM1CEeRJYUgUCFeG4gYDK+Lf6wTHFSXh/clWt+fCLTNazrwQX1UAvWfOyZbgbzv89o+rJ9cjUZXZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i93bwQad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i93bwQad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5408C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763667113;
	bh=1xrlBUY6O5BZuCmuZLydfbt9SE+/JzMRg9ToHBnr0gk=;
	h=To:Subject:From:Date:From;
	b=i93bwQadtyO3pV/EeztvIzjOaJoOLAleo97ydOlOr9VnK0+x7W/4NftEeEMBuRRHy
	 5WcZ3PFCHB++luVcQorgkvwdI2LpNSNCxBqPUx5Zib7UQZ6J+EVw5Dz7xYp0nbjF8B
	 eapzv4XEH4lxyuXSg2egjL4WMqpxO3KIOvxiP6FZkntonkckMhyxe8AODOABrcFhX+
	 s7UftqiinK/yP48k0Dkf0coil06WpYmDpsTqoa8poVZM7JFcMnCLCql3xCzhHx3FtW
	 Z20bs4R7bHV2WsZuAeb6I3W4dEyndeWKEpYeeUGmW0CdcHov8XUdzcWLYzp6mwiwwz
	 qCdgm8xs2lGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93420CFA441
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366711358.11460.11265934110021793643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36998925c3ed6b4f3b860ce7bce0c8c428ae3c5362011f1da6be990dd0d3bf89
Date: Thu, 20 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763667113
