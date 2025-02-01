Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A1AA926
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738374354; cv=none; b=YZR2sU6Y4vsySXq97/v6HLfLHTMfBPbTYCVH28ehXy750tLqvV0yM2A7FKoBho5L2kHQffvIsiC9otioxLaSZ7rGbv+UX1aQ1mvzcnNje69aczd6LeVc8jVaLNutioTI0l9unM6RO2rNSQuTrqaeRWSdG6nOn2GfUP29lAuYPzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738374354; c=relaxed/simple;
	bh=Gj17RjXfd6dq1clZ+J1mOJfaFDFuhL+BpcQSJcZG1R0=;
	h=To:Subject:From:Message-Id:Date; b=jH1ZM9leT5VgcKjpjRAkQxM3+WBewjYv70vdxRoUCpb+XrmylgZ8T/kRAgTlBCOM5OxShbjLuYyIvN/HTquknqjUwGK+L7b9JurcO1if/suK8Glpn4ZhMpfmKnW6SfuAWR5Xob0W3axY6EMLE+mHQHOMzSxUkDv1BXNFpxHzizs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lu2SVHHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lu2SVHHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14DBC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738374353;
	bh=Gj17RjXfd6dq1clZ+J1mOJfaFDFuhL+BpcQSJcZG1R0=;
	h=To:Subject:From:Date:From;
	b=Lu2SVHHCHcgLy58aLezzNgDw9NEEIab83Vt90/jMzQ7+2PDqBmjRCFJDbZT3O4n+v
	 ToXQ5PDPgN3AOVcqkNKOv65SxNnUcsC38UYa9xSuWvUBEh4RzEn5yA496lIky5pcBG
	 zEWoZVHmvrINv47NaeguhbEwKfAmoM7w587PqPEdy7SDXkjdLgfjZfG2A4baUweZr6
	 98adVfV7u7ofZei/XjPJuIF0MNfkBV0se7E7WTtWZPZBwSjL3nRPpzv5doP5I/iHqJ
	 0w3y7f/yfh8oZvKrpROr0Wu1agaEIlyVjJTZ9C6fS4ZBjtDczo9MaH4UQyZIMJ8mXj
	 b6gR2R0AlwgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02B7C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837435361.22953.12497723991586360742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3495a3c0697faa0f0e4bebac9ac4fea8b44eea13cdb98be54f0cbdbeaa9df93f
Date: Sat, 01 Feb 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738374353
