Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3432B15B102
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749607796; cv=none; b=PATMpQpD6RuiJHmehAfKGPsFLQf325eduTGrlzzHe0xL3Mwsp0oSEa8NfUCI/YlgTizXB4myhx5Dgz7GL0Ug+YEmr4670e1q57jtXAOeZDdcAIZwzpbK8I9CSZ2J6Th5LvyEIoLWtXJKAlgjtDknARDJ68vb7y7BAJM47v2/1U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749607796; c=relaxed/simple;
	bh=+9adflXWgZSgpFLxWnFGATSt5TzF48P+1KUREr3fAlQ=;
	h=To:Subject:From:Message-Id:Date; b=Y/yhNrPs3wTbzxZwdHR9488ffb0nQgr5rXXiWb4qpCd0+Cig7grcZg18oow7J+VhJ3r9abEn//E0kvEr0nHsBNlkqhKm5Hp6vO4grLvZXU+kHQRA0I5XqRusFnAC1SB4ZYOp7SEsiTmVfdXPd1lRySHb6ZfN0hbS2uZSKc7ninI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSLJuj4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSLJuj4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E07C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749607793;
	bh=+9adflXWgZSgpFLxWnFGATSt5TzF48P+1KUREr3fAlQ=;
	h=To:Subject:From:Date:From;
	b=nSLJuj4jCOyM0HSku9mLfJmx+yzl6SHHxKhup8eNoREGMyUo+clTPA45lh96zcAY8
	 OKGSPo27sxEixdkDQ2yXoDOZyarpOxsxvFKNzShmyuJDJOD1V8HV7cNyJD2xR/hyQ0
	 rlfSriaQBN3LZumHVKq6Vu5fMd9LB7lSqHoOfT6guuTvCzvRPc0FpTzSYyfx3VPYvH
	 e0VkDumKNtzhx/ZKcFIxLOCRzYG5E8pupDjnQRIzzqn+VxErtvAJIYYF6AMHmRf2qZ
	 e2n6KlxRjFfj4/gBarKnsB+OT4vGlGNVGhZPMknzlGASlumrQfSDcccgfzWxR+bx9J
	 KrZbi05yF6jcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDCC61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960779358.28563.16347681574232891292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804f39cba85e10036121f285abd4e8f807861b38cf7971a7f36001f8db85c828
Date: Wed, 11 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749607793
