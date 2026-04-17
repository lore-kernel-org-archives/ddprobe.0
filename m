Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D9B3A8750
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776413854; cv=none; b=liIzvdzSiJF8dEtFF88Qrz9TVsAbNZdeo5mDYEZR75Ct5CginGyuC7l4Ahl9no/E5zXQa04U/xE0rIFfmm0huN/tlrOLgVakzgXaLcpP3puybx1tKnRR7ybpoK8S38lVt/1U0FnrLdVdSAx/gDEXTg3QgdbQ6JzQs6f2d0TLO2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776413854; c=relaxed/simple;
	bh=S4HGvkKGJbEP0AcolyAzY53u2ipmiiE20eBDAFg/zz0=;
	h=To:Subject:From:Message-Id:Date; b=d6yGyvjFbYQmj6WC51QZuD/qQnVY8HbYLebdjTou60ce5vn1WwoUg7gb5xYokLXKwOZ9GsjFJRDd98QAmmH+6enTp25e56KdOYH56BH7rm7GI7vr9PNXu1lhZ4aAYYdy9Z1QTWbh+ODbbgutoFPiI8M9x6Xmw0dnBrUY8KbWI0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAMBulUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAMBulUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDA9C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776413853;
	bh=S4HGvkKGJbEP0AcolyAzY53u2ipmiiE20eBDAFg/zz0=;
	h=To:Subject:From:Date:From;
	b=bAMBulUnOp3flc90wq2jACeBn1bV5UfpS5q0/zOKRGmVijMhQHw48wJ3tLFRdpt4O
	 yNelGO2DN8y/mr1x6cCnb9TfIjKdvy041esAgbCXUsgg6c7EistKX++wrk+YU4MbBq
	 ylJaaybnjkid09FwsXioIe7C2btn2AdcdmCPuG3Q2p4yKtG9Wm4Wr7/a8U4nBIk+Ny
	 0RihPA91s4S8lSkWcO7fRIezjjnOSCELRRGFNoqm8xi2VSgy/jHczPrpMKFwOcc32e
	 X7J+W+OTddsFJU4V7ZW7KBMHYQg368C/xS0S/9FSxtWvj5voN5l5NFpmfgjy7zpi+e
	 sF+NOygbwzLkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977DF433DE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641385368.17706.9703415962861252927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5390197c25a4555de784785eaaad652792bc123399c4066ea7ad517a38430ed
Date: Fri, 17 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776413853
