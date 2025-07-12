Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D431FE44A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752352794; cv=none; b=fxrjgTQ3kjUheRN1l06syNllq0tXje8PM7HvBf/HymcUpHyLSgRdKx/WvjM/lx9mL6mbUDEqnG9nVHG5JEUmbv5ljoUhnB3c91TL7JKJBxNA7eAtN6OWGuiMJPZwMCcj6COshUP78/DokMp7NuAwp98osp2yOvufS/GTE3XjD8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752352794; c=relaxed/simple;
	bh=SQYZUFr4fpOmQjFZSeKPoZWYiUFkjLtURQm+x5LLbHo=;
	h=To:Subject:From:Message-Id:Date; b=GATZGJAe0CSLtHI6djhIOV622zxVm9UvD9tLukOiRiUkvRTXtl1Cfc2oYkH75mZanEY0eLKAANBfq17qIJNnQnCZqIalKAJRn5dUlVlWn8j/0xceMjkb+eg+GxFrZ67brEowL3nLB+eAJkDlhq7bogR/bxnIjOrHn/d4iy6W3Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGvUKfeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGvUKfeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3184C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752352793;
	bh=SQYZUFr4fpOmQjFZSeKPoZWYiUFkjLtURQm+x5LLbHo=;
	h=To:Subject:From:Date:From;
	b=eGvUKfeY9DOOzibV1+XwUmmfkU07C+m7d2druaRuIc5WG88yOgt+dkAsM8HVsEZkX
	 T3dBlFm+cyaENsxY2fA5gg58x0ib+iwRAE55SBLYJHaAeUtq+Rt89jtmM83M6GgvXO
	 FhxYRWebU/kmzJJ1otznRfG/ffHqQ+BZ/VJ9DX57/6cQYCI0ccFmcF9ZP1K1a/VjI1
	 eN3pS6BZ4+n857B53vXaR8o2Va2MwsBtyT1fuvIdYTDm+DvqvbGkO+EL5FP674hqxk
	 /XozbC7A3WkcCTsm56rIm8yK1hQbgQ8U6VjA6iZp5CSmvSLJKZQHmTrGiEEvgwBUpy
	 /MNbqfto7BcSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91359C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235279357.25870.490183012977726959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696e2662f6bd667839d486e2336a3f6407aa4233db2b8721df7641141c86c7b8
Date: Sat, 12 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752352793
