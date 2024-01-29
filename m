Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9857179AB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706558296; cv=none; b=Zh/qtyrohH5LMaaq6oSEoBthpwhZXE2WQWOODntmE3LryTJrcSqIJ1VfRPR1eyYleo2aLPJ+Y9brEcpILJ+o5cw3kJC6AzU9txeJsJTNJ2njq5X1FbTvIUfVXgb7Rg1O1gkmVLbFpFMMYh5Fw2wl1CweWehDDbk48tnMtJfN+8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706558296; c=relaxed/simple;
	bh=mbTPjtdjCJ6twNW9j27zNYOj+3myGgEQawMGMFBjcdY=;
	h=To:Subject:From:Message-Id:Date; b=mHSCHGKDdKBSVbC5/ZspRJZwB7xMw7Uu9u0kPFjNjff4VtELvO/Xjoc6+CY1uW/VsAvcYTHonCvQiltghVJVxmCeC6k4iS44guJeCyEp3ALnH2shfI4oGT/Un4GKuEqTe7Yxfo0FdJifYU7TZmlVpLNvqe0vKg5h1OQRZrPTKQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cy32SeWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cy32SeWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E006C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706558296;
	bh=mbTPjtdjCJ6twNW9j27zNYOj+3myGgEQawMGMFBjcdY=;
	h=To:Subject:From:Date:From;
	b=cy32SeWBIztzTzTucvt61SyP5R0FIfDZCBtwjTSPVFdKjINBIlyoTKY7QMmSKvkXw
	 F35zyajNgwYEjOchub0BjyWBhoECS1j7npzHtFk/LpcQoBIck11DU4o7VtSfxWG4I1
	 L7+AxQnFlsLNQc+2qpZwwB8xH8X8PurPjIh5k9maXJbN4TdTu+/i/yb750IB+QGy5c
	 m8oO72DlPGhsbIz4QkQErcO43rSN2ZHQxmVwL7mFROc0ZTdWnFwDRCqgGzt6F6tAlm
	 FEXTSaHJIYM3M8lO6PIt6yjhMeYJcw1BNfMDsjLjnHn9me1yxb8qPWQzAYEhaQ6UQ5
	 ghrvGNeEFrfkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624A0C47DB3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170655829639.7449.9295152822624048359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b93914c9f87af4d9043762015bb4b95d362f7fc88487d831751e6a7381b23da
Date: Mon, 29 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706558296
