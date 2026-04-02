Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F20136D9E0
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775165734; cv=none; b=dP7qlpIgUb1eML4LmQVPjgXSB29XfaPFnMXp/yUJPQRjgWLsIX1J7R9DQ6zy04sOgw2eh6PRbn9kS9wPo3eKkvLyqwwSDv9KnwOr6Xpqp44LwUFWOGm8V7qnDvDsefyFo2y1CqawdGewDUWyvvsV8V5lDP+6x3QFi/349h2InDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775165734; c=relaxed/simple;
	bh=KaYZs+cN/WD0bvmmp+jugDxfUtPckwP91KUN6nUWagk=;
	h=To:Subject:From:Message-Id:Date; b=PR4z/eyga5LsEcrwXBvMGcVWtL2TUTI+VxnLaM05j/nAISn5nZAVf+qPpFUN4nQ3kPI9FYom/hzlBWH/YrIrArMygZhsSJRM+0+kcgz0DJyO7RmELBitULROga9WA51x0C5kCtMAFQuh3hfQ2BMlqGOVMpzZCCCGYmHhSlgwEhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6mBG4Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6mBG4Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB19BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775165733;
	bh=KaYZs+cN/WD0bvmmp+jugDxfUtPckwP91KUN6nUWagk=;
	h=To:Subject:From:Date:From;
	b=P6mBG4RoQ8U6PJM7V/2iw7Ov6PqavVJAg/eROTas+mV62P/wQeKhU5s1stAJTi6Md
	 gW8R9Hn90UQ0Qyl5X626P73JV06bF2MkN2E6kkYBdO/Jj6QaEFsK1IBm3sTwArx/hA
	 M+KcfESfRg11i/YUKSV0BA+2ez6rGaoggucjxvCeFpmMJNLhHqj/qGRkaqxcSLvYGq
	 bw+L7++2YLNmUd9RCStSe74rbXbN2aIPgvkgiiX2GVMUgO7A4hExDle0OJAwOjQ4g7
	 mkicSZ/dkc2+MMEr+Y2J2H41BAMxWLkmx3ghkuhZnZVxMNr3eCN8DaW6SaEcnxekwg
	 q4rNj8xNxJDig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B5D6AB17
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516573368.7477.16700072246266827197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bbc17565d6d8df7c19d455379c1726fbdd617c7fd1b83d0e59550d437d0b3b
Date: Thu, 02 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775165733
