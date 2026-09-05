Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2194C28690
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788572434; cv=none; b=ILtJGXPA2VSdbdpJ1QYIBm/4KX1qtKW6+12yVwcw7iClX6IwCfZnJaHypLaIL23owxAwcAWeRa/usi7jrZTk/lSsAMYPztpOgGw3VZxWtijFR7KGLYx7Qx9ue3kUNrvDjznEI7dtmbZ+fSJKgp0cAL0my+XPXuTaz5RKS4SezKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788572434; c=relaxed/simple;
	bh=jpAw3XIGsGTZMdzphxmXH+j2fdkQqsUU4Oxph8szB/o=;
	h=To:Subject:From:Message-Id:Date; b=jYGQbJCCT/gejVHe1Sq1ESRYV/JYX5hpQnldkWXnOQ8DdOtAauDBRjvS1y/66D1vxkq9SgTk84qpQnx9eA5GwSLP1+WVCi0jiKVxmKnvmFXN5/jHx4Ve/bt06sc7D2KDQ0hxjw7/ptRCwYuwSUK2BE8UyYlHWU2jtWUmABBvbBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7Jm4Mx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7Jm4Mx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D3C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788572433;
	bh=jpAw3XIGsGTZMdzphxmXH+j2fdkQqsUU4Oxph8szB/o=;
	h=To:Subject:From:Date:From;
	b=S7Jm4Mx5bhQQpjGVgwS59xYSc7W7n3+jJ3MUqTWEUzXhfvHH4tfx7sktL5Bturx6i
	 2BMxg0oInP5a5RWejv0bJeu7hYLButOM7osL9u2dkwJgY1+m9KB/V2WqyBD0riaCXr
	 7d+4uDQJy4/urjDXy3zUw+kZ8FEnBexIh8jubKGmQ8GehUeS6OyiBSdugIy4YHnFWG
	 rVBdH3Co/9scHG8Mjy6RsM0J4QxSbOHtfULB9FLo5iy0FvF7ARKfk2tniYilXNOuD+
	 aDbxqgRvun7BHjyeO/lZASh0cgLq3x2YfDfdQfRl/B3xZpT6YgeL8KaIAYIbQUn6Xz
	 mwTWPKQgX1MDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA248C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857243368.8166.401593061781683360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7033e8e2f32bfff147c94ea4c15081b28e4a9ff2c4336b219c46978445c85e1
Date: Sat, 05 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788572433
