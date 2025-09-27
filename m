Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8B6134AB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758986394; cv=none; b=XTmbYlaOhfrdWscRwV2s3OXo2JNSSaRUs8FVV9Qw2iaZtNQA7yE15eexQ0SXk+2PKnQ0yLeLxEEaUi86sig0OwK0MY7h8pbFRk6w87x/XlK2QXt4pAlnn3m0nANCNEmy9OQJx7np4HwfmldFy5dGTUN7XW8uYljEF+pnfoXomQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758986394; c=relaxed/simple;
	bh=Y6HcY2eEV0B/0pe8Lv5elNtAFe5toEyVeCQ9+5+H0nw=;
	h=To:Subject:From:Message-Id:Date; b=QA6V+HFKPoc69TidVNOS9hdvR8lLxtjH/Iv1NfVa0ur2/plR/OsKkYJr0hTh98qkv2zmB78ZlNAS59lWPk/RDXydrCV49r9T8k97sVb9xS0X1iXObDs2aJJdZ4QPDHCfhsaBiUfJIvV+lCo9NtSug44fY7cdogHrxOUTC9fVGlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEqfexSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEqfexSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF350C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758986393;
	bh=Y6HcY2eEV0B/0pe8Lv5elNtAFe5toEyVeCQ9+5+H0nw=;
	h=To:Subject:From:Date:From;
	b=nEqfexStvu00M8hoxBRqDEE0sw3hAaquC+REbsm0tGF2SUhL+bqHRZPr372GwS7oi
	 eY16vEnq5HplpwTtfdHkxFkVdZQJNkK5JE2FNsiaO7SD4VRweUtPsJbM2ujoO244ki
	 tjevCSEJ9ClplE7f7x/LrOOiC6ljnIUSOJqDE83XrTyYGmXfxfnYlmJSSL8GfQp+Ut
	 QPzlvKCEJYNg/Bv8hKezUrgprt+n4voTI80Ss7VIVkBejVN630F8Wf3A/l6ay0n+h8
	 K+i2JF0twTtYoYR517ikWHL1Ow5m76+rFs4TsntyVigGq52agvm4TercVysENeIxnV
	 19TSEt7+5WzIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD6FCAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898639360.32694.15781291159662562973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1295e53afba95167ff95980c0b6fa0da3710603048c5387b4b0d1c3fb7e132
Date: Sat, 27 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758986393
