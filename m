Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654328BE5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720755443; cv=none; b=Wc2XU4V983JEjzae9qDrq0knk3JOMv/mgp9e7ARbC+LQIRLYRNJEFWL+r3oTPKyNmt7WcJ1ikUO7rCGnegxK3z2AGbXLH17w9LV208yA+ctzG4cWgdb1hNKl/z7KuoZ1+Z0kUFqMV5fJmIBmqHg3XLq/2dtYHRKmjoF7WOlZxIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720755443; c=relaxed/simple;
	bh=3LISMfsImzYF9SsXzwJhRak6d68JhXNdfscBIrdve+8=;
	h=To:Subject:From:Message-Id:Date; b=pY9Rfugg+iZZ3uzzcOfNPEp1T6ozTLqnAoQoogoznMIxS5aXp0S1Kl4SDJKjM/qmOzye/FLHdycLT0uEmuNQFSq/7GHCxLZj4oG1DGFX7ZSpGnziEV8Ufij6tOvG6vsI45qWsuG22FHBaZDZJ1yxRpX1ylhcqUijov+/74y7Eh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeFRwdrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeFRwdrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C1AC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720755442;
	bh=3LISMfsImzYF9SsXzwJhRak6d68JhXNdfscBIrdve+8=;
	h=To:Subject:From:Date:From;
	b=YeFRwdrQMnbB6tYQCRrPt8+SglgCcUwHhQ+5dJZf3+HsyCPpNN5JlGz+4+0N2kRdk
	 DL/Cew337ks3Av62A3hqUKP+z9hgmFElrHyNa1IzAK7xilVyQsRgyrl6l7WAk888X/
	 7uWqxfwDcWVcqySMAcwsqR0D33x1kg7rzUxkTze60etQ1rF6SMlUBw6uhu76RhWIHn
	 PNnSYZ09C2w+Tkk5QdWfsZ3vVl0pLkEXe1yYnCU2/IXFOAhVFNdZ1jCZjIV4Svar7C
	 QTm/+1kJv2GnhW0Zbd/8uiquNhEzD6MYcIBx/BJzbK7oLjC/sZWsaokrVBtYTfK4/D
	 g/OEpVym72/Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C909AC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075544281.11217.13252528532239957857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b1286eacde2f5b413b2e0fd0c8b1eb94d17a43722a85e22c3d1887c84a6f94
Date: Fri, 12 Jul 2024 03:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720755442
