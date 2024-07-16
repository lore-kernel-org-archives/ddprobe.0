Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529F9C8F3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721105723; cv=none; b=qbuCJXy9R2Z3e6ieB4ADM/KBFLC+2vUSH1V498g7O4Gb+4flbvZ7a4WIqvf4zvSr4wZaBIh668Earr529PskBKwBNLfYZqh67vH8NdEkW0kV7JQqfJpTECqavMMNp3c+SpLmH6BV850EnPQNKfMahMwZNskypQBgW7+GyA/qpmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721105723; c=relaxed/simple;
	bh=50soKAxtd3P2I+sqlVIskODlxXxVHumuOlVi0lCZh7o=;
	h=To:Subject:From:Message-Id:Date; b=kUjUusaFs5KtpgFYiM2G5AeXOHVU2tTH/q/rOIyPloj99qopmE9y+yKg7JLC5H07zx4Vu1hsb2CFQcqtr0klZ8BCzpEwFAnL8FyEikgGxBFpA05l9nrKhgec2fjQu9c/JYMRntZfPJOI3dhGWPNDHP5MiChVIbApmcoCP451heA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR2ssGzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR2ssGzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5CAC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721105722;
	bh=50soKAxtd3P2I+sqlVIskODlxXxVHumuOlVi0lCZh7o=;
	h=To:Subject:From:Date:From;
	b=YR2ssGzdB9H2SqsDWeeGtakEdYbUUsIq5l5ZofOpgdxrviFyH/kAURtXIzVhHdcsu
	 pYgQY3SyC6VG62e5Sqtc8lLNqNjaaCsRtMgheRVhxNAXcGLeFvJkCgbM325RxFExMl
	 c6SrAk4YFO8J7VW9QtwGTGz7aIY1oqucn1pwvGQWIB/kRrbFKATlvJIwOYm9044eOV
	 Xv1k5ptz0ehbi0hSQSQIMFO9AnD7hHdUHpfRKcqQw1AgwJ3LwcPe/oLy4m5wJjDCyy
	 RBeRUfHlZDWfnOE/8GI1LSwc7amk3e51gzO/4b3MNAE/yQjx1Sp6cxFqFff6gn2kfi
	 nmC7qYCGxYSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CE0C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110572278.4549.16670960335262844087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918ad005a6fef9f0c96e1024fa3fbc9b884451b1df5a1502b6bde62a287fe546
Date: Tue, 16 Jul 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721105722
