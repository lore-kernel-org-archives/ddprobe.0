Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2733E13E41A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785096634; cv=none; b=fbvu2GN9RJjsq+TlrcSRru9VYhZ0e3uoX6pelnVoB6ymmvqZsUqkvrPAVKjn1yaVqdAHOi0gRuva7Wv5AGuAOfr9ylGZ1wqW57b7R4GO7Csl/dEYxBvNgTp03RyYJFnATktNMSgqxx312hbfeEY7RwgwJv0uUe9e7XjY0FDtOuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785096634; c=relaxed/simple;
	bh=etrduJMRdy/hwUi0O92mlp09QYuboPSTQu+bHXANlzE=;
	h=To:Subject:From:Message-Id:Date; b=RhJn88digaW04mJ500W7mWlL0CYG7BZWWDWIFuW07k2JTz+RR3YdPeSOxISPuB5GcNHyEeaYygoQKpQ3iKE0oU+DfFVC+KAvLeBMdxVWZ/vTI6b3egtXZfboudIoNxbJRXHePrR777FkuH/e1VvUCGbEXtDWpi8bK6Q6zov91FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPYeMyW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPYeMyW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1CCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785096633;
	bh=etrduJMRdy/hwUi0O92mlp09QYuboPSTQu+bHXANlzE=;
	h=To:Subject:From:Date:From;
	b=QPYeMyW3p7AtJSDIqQgGuKcWLqm7AHQ3YN0iWPBIovd3PLNWYChaSXhkLVchkFsLU
	 PEAvi/tSHSCuJLf7s0gWLpUgcElxYfGfaxTDIkkLTIzgaNz9scr4WvTjpA+cjIXWWz
	 VVOCh0ts4w42ouvs+Q7Z2ch3VQ2Plmzs5e/2L0y2xz4cahQc+QM5b/AhGncrQNweD2
	 /Vuc13v6WG0ypucdSV8UQq5lN9cp+hQ8M4ONkOPEOcW2i/+ymO+omumZBxuS4KzAoT
	 gwoUQtTg1M7VAbXyttjCGXVZ5trM2WUzn1zv42cjRRlDlC32WWRwmVQMCmpM/l+L7X
	 xnOJRMY7DTpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA78C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509663368.32064.17560567634438206913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35836c6cbf3fb23b61b19426c0b7dcd1a81a57b52d01594ea3db5a3a3a6a5945
Date: Sun, 26 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785096633
