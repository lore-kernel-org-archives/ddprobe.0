Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F251805E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758850793; cv=none; b=bZf6yRmJQj9bhRnjSoZycFRkB7kkutjb3vPAkSZt3geK5SJzEZ8htY0DOEgeA6jF34q1h2ZdBkVy+dASnXqW1twymHi6FxE9ULXFN8ewFJJ8YxiI3dIXsNHQngC/6e6dgRStuGl/9c71hJVQGk4v4vGANaWTH6fsVgildjP4aDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758850793; c=relaxed/simple;
	bh=od9BLEOIYsJk15hE/Dr9H+9LB97a+mv82n78OoG3mnU=;
	h=To:Subject:From:Message-Id:Date; b=XwTQ+f72sXrjw1NH91fA7KnGBVvzqQp7jqCD+0fixptfkRqk1dw5V26wEnQGmcNXqfIzbqxZTvj5XuXKkqjiBHKbVBrhZVmM1d/5RBCHjex0uO4qJf76b+4dlaHsVmckd83H5tvlPT8QmMWeD2mr397Fc5aEmBV5nbZC4IOexoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2PZROZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2PZROZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5536C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758850793;
	bh=od9BLEOIYsJk15hE/Dr9H+9LB97a+mv82n78OoG3mnU=;
	h=To:Subject:From:Date:From;
	b=L2PZROZ9KB191MqW6qsVhkZEVaQmuxbfG3MnWQfOn7+LP25WfnUIDAbgWpkcOqDfQ
	 5he8jMkqqA/+qTRBBF2iWtAB1wKVObDaIhEPgH24cYEcXpJfqFl1W1LB9A/4mP0TZz
	 G7UdZ9aeeZwNA6ZwuBZDf/YwqF7vc6il8IAqCg8Cic4m/EIF7EH1qDHYv+i9v+pfkl
	 L9bMzab1SXGvp51/7TujAkX6LNKU+FepBXUetXw5f6E30kClrJ+8mNyQSxVo8L/epM
	 CKHDgmBG/FCdQe+QDAKK1Z3GyGqo4h+NowXcuyuUvFLAO6sWAlRDaRqb6erjEAqTWr
	 oDyuNDLBzQq1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222ECAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885079359.25716.2603206651641092542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f53a7c118ffa6bb3067c74c10dc844084906c5dd6bfa6339211a3d06dde345
Date: Fri, 26 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758850793
