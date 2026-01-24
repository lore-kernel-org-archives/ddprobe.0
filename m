Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE22AE8D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769271834; cv=none; b=symjcbgrwNdeZ+zdnM+82sNFmrLcPdj4G3x7L2c0WsCx2TMSwBNKlhKgZlaXZF7qaBDlV/S1MYDpSmldMGICLSKaaO/GXzgkCg2qcGmNzZKQ7dLvmeeU4FGhEuT4vkyKVH6ACi1zpet2F1xX5f99HZVPBRgNRZtS/haUlfFc4tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769271834; c=relaxed/simple;
	bh=zP50M0PE9Gv7psNmzKEXZ9hPLrIdufTQVl7JeNIYiDE=;
	h=To:Subject:From:Message-Id:Date; b=Dq7LbCS3HwpTuc8+vNKw3bJVny5dDczOaIdVj6gjl6PvfwPLA5XRGKHhNVP6suL8pltHQ4I7CpwO4uENbnk8LEvruaPEPAPDr5EANggyhxPlkYtEBc8nHRWcaHLTfy5eCYlDjKmZEmhrqCM8ZVJeI/b04gZIOactM6r4PEeaZBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1UMnGG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1UMnGG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769271833;
	bh=zP50M0PE9Gv7psNmzKEXZ9hPLrIdufTQVl7JeNIYiDE=;
	h=To:Subject:From:Date:From;
	b=R1UMnGG34arbCWbzzq8Spayqff3/TB9NSSwAFUBIb7fP3DeaVocsHkHgGb/rx2Gj3
	 CCZ7NaYFhd7+4FONgdP+PqPd7TuDTl3NGlj27CDNyYKx7yJ7jP/dQjf3dYteota6KH
	 efgGm/uVPMDgvTVSTs1vrkXNR5PLt90NnmP/UE/xl5NxnkSTrCBSfr9+zv3Wgy7xbA
	 47jfEAOM0AHCg0T3P2GZuZeiNbVOXL5+wC3/JFwRejmNuyXhQUhuzhwA0mZbfypmAE
	 k2z9VGHI8zvMahsTFezCoDwyJZp/0OqQatt2ixENiyeMug9HGR0Dzn2u2ozyBlK/Nd
	 /7+Nqwz+0p59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E76D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927183358.9731.8205090977824090576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f8b8a23c0b559600ac73236d2af0d0e59cb5ee54cb96ef9539f3075c4f1274
Date: Sat, 24 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769271833
