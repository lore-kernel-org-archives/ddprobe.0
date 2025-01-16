Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2557B28DB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737012354; cv=none; b=rI5RVltpP/IhB0UxTRarZbJuybSmY2jWAABIQb8Rq0oyHf+yDz0eHD00xhAGnSYhbdY0qcfR+pgkmKrgK38QaA1VxfdxWQe/CKjChQ+Z6VRBWKTAG3BCJHR9ZM/wlnytj+dizF9ZcnLHCXcBy86C9f3b84FQB0L5H9Q6iFaQ/C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737012354; c=relaxed/simple;
	bh=0GzVbfiKY0VNvHaIW7e/ZB7mn9JD4XXzEwhqXCldHPM=;
	h=To:Subject:From:Message-Id:Date; b=JB30aOLO2EcZbazwEY7AisLvjYNarrHPx1QDH5N2mH+dMHbWkd+9tKm1e3ODMyDQPilGtp28bmaXYa0vuWPXbEon3utaFBq0/0d6KIP5pzKqkzDwIV0l0SqVWRS8DbNKq144wnNUFLiTSKSungLjmLAFBr/NJ9JUiEqzkKrdsQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7p7xIxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7p7xIxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBB7C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737012353;
	bh=0GzVbfiKY0VNvHaIW7e/ZB7mn9JD4XXzEwhqXCldHPM=;
	h=To:Subject:From:Date:From;
	b=h7p7xIxcj1f+6uUSasFgxxIJytvDofZxYl//MiNf3q7542nPWD++0tsEADa1SRY4x
	 JI3cqprZNU8FpINdZIGb2BqbZH9PAXr5AlpDx/gjPvJErZgeLl8EFxxyN1dAJmOhrb
	 ZGI6n0MhJYHsYHN/6Ky3aHkB0/Pt0LEqqn7YwbCQ6PeFkjRVQXgOIFQkQ1PswN+Im+
	 dhSnC9k2k1nQPqkQuAyF0/gbXKzbx+C+8IJ8LDXcNhR9uMmFX7RcTClDYH6QqgbFmp
	 08Idr4FsDTeIeKo+s7wloFlVu3Zp+RtxEw9rYDv2raEUQvQwzbM7qQlRJKp5X6BPvN
	 hTEmvW9rdLJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CFDC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701235361.1742.7312226693693647950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ae7a43463d7951e1bb1e23963b955fc2b1207ac282da590d2c7ccd6bd95792
Date: Thu, 16 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737012353
