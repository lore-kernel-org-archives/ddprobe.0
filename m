Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F3138DE1
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728571554; cv=none; b=RCy4TFkcVPM/VxbHykmZs/RC6YwFE7UqvqYhI3Rtqta7XxO+rEW2LmI4R45XoFt/cqTej0+6sH3wCb/1RVDW3j+UQ6HmA+lswF3otESDo0O1TkN+FOIrXWZLUH10PrDRaKbpilxMy5gVwG6mavHzjfCmKaG13szCQ4fVhEQ1P7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728571554; c=relaxed/simple;
	bh=qY3W6DmRkWmw2oQ5d45s7F7FKcagcAPvj9QYf6Emw9w=;
	h=To:Subject:From:Message-Id:Date; b=fhamv/nVaG+IhjU4cIf3QVIo3rtRoshd4bglHhwrc0giH4TgQ0avoeT2ou736TCfD6MQTp8E1lLqu6rjo90ul83buqtG/LLoIM7iy01E2CFjumFsCpQVqNupZwQK96FplUW/o/YoxzDuPGcNKlikAvXyI1AkjW5n59Rqb/sl/PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZcE6Px1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZcE6Px1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6367C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728571553;
	bh=qY3W6DmRkWmw2oQ5d45s7F7FKcagcAPvj9QYf6Emw9w=;
	h=To:Subject:From:Date:From;
	b=GZcE6Px1f+Ef2QCmuPII8UEfUP1qeCOsmQYWHOxeSXCJd1QHMTDJjKJ66tXSt6soH
	 EP4ksBxYQqNjA16xqwPI3Adt/FQ60wEBUWnxNAmeggpzL4YAWRvuDqOu7QNhL78sMR
	 dUJ+SO30FY+LoonAFLzxH0cUdZaCKFH5CMtp/2KzkYS/zb4RO/5gAqrnegG7YZYPqS
	 b5r7enD/l8DuAwrmh0NB7h5zgyT8dzohvDYiJ1Yxlhjh8rMALUXi/nQAcSGMRLj1+h
	 ghsXUOpimiYjjuWU8BaDCDC+fTlr4mbNGlXpYBJAS7uAHnQH7+UmPbU91zPWWcRdiM
	 5s1OtESM1abww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9434ECF11F5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172857155359.15157.14710395851502748321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a8acb03cea7037f908824eccaea06d361a6aa243bfd897218eb0e9197f8804
Date: Thu, 10 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728571553
