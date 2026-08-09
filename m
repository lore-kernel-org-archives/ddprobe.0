Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E436B061
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786307434; cv=none; b=Ldbcvi4kSxWvhZL0MS/mj5Aw6iAEr2pF7Q0PeiIUUZvVE1apAQTNT9SkUd0M0eoqZajRcY8rM2ubY4V3fAxeAc4NjGEV92Bsm+jGPfuCaMcf2mO3NTiyAI6TjX5lqKEqnATh9mnt47BL7EN9Jhly6XfwgD4V8YwMoxVcl60JQeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786307434; c=relaxed/simple;
	bh=jp935V7Qevirw1HxmhlFo8BTH3yQ0C3bwPJGfLVHlAg=;
	h=To:Subject:From:Message-Id:Date; b=UpqZtbQx7Y6CtruZosUe+R9vlqU3sSBufR+I6EWN+fF/9h6O35pblCii3eZSv0gkQ9QWIZhJ7zrceor9f0lyyBaOSHPffa4XVkwWVDeDiXaH8y6IVphiqXEOkQf2EAvmNcn6qIk9zNidErh2oe+26qxN0mJUp5bs1NlzwkjKEks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXrWiYPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXrWiYPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC68C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786307433;
	bh=jp935V7Qevirw1HxmhlFo8BTH3yQ0C3bwPJGfLVHlAg=;
	h=To:Subject:From:Date:From;
	b=KXrWiYPcdP5xXBDn83A4rOMClAKLa9V6jqv+ibPDoDkC8kFg183/Cnxx1yrbAnhe7
	 c/QaQYXqAkr6ozvF870+iWxuvst3pEoDdW7J3yBDgkFLA9R/hKyTHViTq1AZ2VFJLY
	 AWoCxZ0NGBRovQuh180vElXARVVMhxSU+U3gwCVlND/CwFXcYVIxx11rvEl+1c/jTh
	 pVpfcyepNQuCkufcJE7Bo7cvysuSrubOXPFriiq+8zz/vZPoDaoh8pspAEVJc1BtUH
	 P6VmeNWyAR1+RRtC+Kmw0KPK+VfvzdTF7uY14HAz7TeufGwnKovbtrF+CfMUko0BFy
	 TBHhalmdimYnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA720C5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630743368.20178.11967982148352071693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937279fe398095cfb4f6e0792c5d7b53aa1d0ac6c1238e28a67fa59926e04643
Date: Sun, 09 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786307433
