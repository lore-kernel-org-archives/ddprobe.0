Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250052FFF8D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786560634; cv=none; b=XG4Q7vN5eI7CstStTZX5vtQz4he8Pl8lSJRBkNEjAmDSp+YFfpvT1eKER0dokqBkBuFEVtSr4HehqmDzlc8LBWrKY7TfzxC7YJSsy/5YiDmasYAQsyTq4RGK5xdOoVMV2kLhHwkO+rQ+o9jB3AK7m/QSNPjJluDLy25mtX5DwuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786560634; c=relaxed/simple;
	bh=GQ2Ltnd9MaZqg2zUG146bxsSK4c7A+geY9/DmGMjLgc=;
	h=To:Subject:From:Message-Id:Date; b=ffHIVjsMwen5znzvmgbqXgAt1lpPwkwnc8JAObgiHKjJB3Pw9hB2HH13qYUFW7Sb4cLPWbCQNVy9Er4T5mIq5OtXfRKrTi2Q4pfl1Q00lmzIgADYjGzSK6GJRYU1IVsgLirJPK0A/rgQCFf6ghPvgdQPA7t6aHF9Zv4Hr1Crfz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAnee1N7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAnee1N7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7B5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786560633;
	bh=GQ2Ltnd9MaZqg2zUG146bxsSK4c7A+geY9/DmGMjLgc=;
	h=To:Subject:From:Date:From;
	b=mAnee1N79ZIh9y9kf9rfgg4JAw1InR1DR2eY2ht/qcoXjzMMVQ7H8EVVYLVs4XWBY
	 7+lCekOelOT+DFMH3M/Mx1J6ESxVx3hbd2haFQlgJjwiOFbHHScmsd9R3rp1OxGXOu
	 lfbrd3254jsA3DLlmdXBR6EhH/eg+vtKtsrtl81+uhBQ0zKUhWgHqghKcH0ksy9Vvb
	 WJGVdI+Mg0kZXfHzWha69tyQV22/VYFzyU9rGq611Nk7cJBDbyGsumRSvY4oCGKbG9
	 7CERxVhubZbmvaVKldFaI0ARyWHRB5+G85OLd2EAHuJ6cnOPvxAGFbKUFfRHXIp16a
	 wXZ6d+PHpXpqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB46EC5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656063369.25497.9413652629179261580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ee3e341fd05f8f888a768892e6003560289e545cc95fa0579116f1c9ab845
Date: Wed, 12 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786560633
