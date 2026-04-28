Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAE737F8B2
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777387654; cv=none; b=DUTzx7ileFFE1hPIKs4NmGtZfH1dofLX3uAg+Kw3iHUcKFmHI5EOVjQX39PY8FQBt+kzXmYR57ZC9RG/oZOGShD2Xe5K0YxOwZ9rQmLEQOg3ZJ9pyYRxcyEyJg1g2wKS50xJlnc75o4Koqj+KkiE+6rKofcH8WLJO1kQw2clK4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777387654; c=relaxed/simple;
	bh=6BQ+q3J/XRvj/DpCT7g6t5AZ6tyQ/SUH6jm/lal5E1k=;
	h=To:Subject:From:Message-Id:Date; b=COqL4V4DsOdvFFpGitAwxjarB4j0ONK14oAPtjp3F6PWhq1ab5m/qeXM5WnXWpiUsHzNK7qEuHwG+d0Dr9RdVPXpmZ/EOt1+is9ensHk97JcqfQPE90bQdEUN0v7fBP3/KE8U+gHaAOfwSLYC8lENDOH/zaGk2sQiBCRfZhI6/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPsbZPD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPsbZPD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B928EC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777387653;
	bh=6BQ+q3J/XRvj/DpCT7g6t5AZ6tyQ/SUH6jm/lal5E1k=;
	h=To:Subject:From:Date:From;
	b=nPsbZPD5mA8gZRFqRjOp21hepqIW/8qhzKgB93vqLw4CkolmrvG4555bkWZTEHbKk
	 on2iHwr7oFQFTPpQszqK2ld8PPTuGoEn+sz4uw1hmuT666DH1Z3JY/n3sclPRMd/cA
	 A1iueahetzL1a3Hip/6sQaLfW600pTlrDNMm8uZEExIffdHnlDebzB7fbTetH5EAkf
	 nvWNW8XdEOEqGnvuALm/8k/tVzGln17JRemYztGu25JJDqZiMIZ+pdYp6d2PY6GEGY
	 2SW6t8k4sjY1pItunT3M9uqBSXWFZzLKf2bvj1GAEi6LdSHldCosuaGABjQ7w5ZJYF
	 ONuEtyIa6QshQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4AEFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738765368.11350.4616632996470158077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1dfb0b522693a1318feb57a9417c676619ea43aa102cfb57e7fe231ef9021b
Date: Tue, 28 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777387653
