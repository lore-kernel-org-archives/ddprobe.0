Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021D43DDAFF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784291315; cv=none; b=CcKyIgjubqv38i+I9Fy7psUHObEqiAxaVwNrxtRmYNiuSzEz0oTayG14v2N3q5hTRcnA7pGq6rNuogMzpnZ/FG5T6hmB7fOvFBjyUb8QDICB/rRcFg6S2/BGybz3L5Yg74ouQ/se7iu8hb3iSj4wI/alxshnEgGIVWqIVP7JYt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784291315; c=relaxed/simple;
	bh=xqPaazVatCImukuxobiVEHk9/QR0M5QwzdI09XsXf3w=;
	h=To:Subject:From:Message-Id:Date; b=IN+CkdrC93briK655KJ/VzOVOzJvQl7NNQRzOnZsaqBg2UiUnV/Hnvta2c6oGf/5esQkP/EtsoQMSpKwbVgHJwvLr+nKuiqrawod3KFNMKm+k2RDlpdgbtmCq4nyi1lD8rRZQ9yZntB5Gr/qJUNWZtdzr+BT3P6HoLWTuvuAacc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/LrlJ+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/LrlJ+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4254EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784291314;
	bh=xqPaazVatCImukuxobiVEHk9/QR0M5QwzdI09XsXf3w=;
	h=To:Subject:From:Date:From;
	b=b/LrlJ+2QJExV7ZIg1ezhq/8mZvrjYBBMrumdNlFImS0kpZtqVk/picmGARDm0ros
	 HU4dhvUeaYJ4Pkv98oKZs9K+oBgoiP9edwfITxf+P62FpJ0qHUZITIIzAZ5AT9lfnH
	 x1cClGmYxjPmpkgi9klnprYpkhXJR/QRDQtb7OZ/W1xyvQSmwFHMVQD3T2yIIwnZpN
	 e1JGUEzBZOjKXHG9/GftPdnuA5Fv1nABUDzalVfZoWSA+nWgyNnxUb9td2bVPAhUC3
	 ybExYj1F/JNrUNubyealZES1JHQq3vtHjSFsUfqvLXN793uYWNjhiVpC1HcKqMBSH1
	 SMdYWsTV3d9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE783C4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429131392.11516.10538346785480574776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ae6df15cb54aa6c2ce2fba2a1b418ff6a3fde9963fea1b8a990bd148d07949
Date: Fri, 17 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784291313
