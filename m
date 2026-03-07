Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB71202963
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772876094; cv=none; b=agScXxc2WPR3TaTcbU83ay3gLXqCoHegc7Fdkf5kMqxUV0cGx1lcx9njH+6vZz26D0YivOVzPay/sgy6oM9+7KS04gvHp8KdUi4a69LDaRObVmpi/bbIKAIv2vIxSvW7C6GGKRUW7Gans02Xnw0fGbsuX79oUs5QC/DdtjfaP4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772876094; c=relaxed/simple;
	bh=ajDzp+luZGCfKMJUgM53ofXdWUHtHSJIPRAdorskBo4=;
	h=To:Subject:From:Message-Id:Date; b=o2TcJEs9vVIeDl0ys2aaik7qSGWnzZ1imkpT0HzJv5DglExQpanCMVr3Z9KFO90lktFrao0kmMIGVBWk1d0HolGTzip8AivxRntX+Nkxx3FIcZArEiR8FKU78rMrZCvO+7EYu1lawzpo+5lsXTyUncISgz+Oejqw9NQb/Q9YdH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9aWnktV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9aWnktV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E11C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772876093;
	bh=ajDzp+luZGCfKMJUgM53ofXdWUHtHSJIPRAdorskBo4=;
	h=To:Subject:From:Date:From;
	b=e9aWnktVjvyBKSqp93SAbVeHjqRG9exLS7A8M4+fcfnZ2dQN8GnAZirsXx1kMQtZE
	 xZAHujljO629WcJ/tN7gasHmKWP8t9LreiIkfhGzimd7xC9La5ZiyaRLoGHZKTydvC
	 iuItLd3U0Oxc1ZcsedoDjy0yDg9BMUuUZCs55RB69pfaty6auQn1UQG4ojjbvgxRM+
	 DZKkkjXo8GQYGWXEDnI+4tUTLncA0r86Su0EXUG0LqWkytkjz7wcwIsmByQJzJW3gG
	 G5IkkMjBc2ifcRmXcDUMpq6GL7IM22kfQO3ZRVQn4jdoBhdcr6n1NWcgLyxwVulwk5
	 mIumfuvPruUWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFDAFC9EE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287609359.5907.1969430649152517790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92bf6512322049befee63e304ceda662252f82d44b8e027ef6414c236c927897
Date: Sat, 07 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772876093
