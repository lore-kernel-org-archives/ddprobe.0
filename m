Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68035674A
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789767634; cv=none; b=AOzYJsdcndeSQnrLfK+ah5ju554hrOUhHjOrZ/iC8R6bEvjr8V9xaC4YHJfXha42Ah7Q+nELGlxgQmTpOpQ0BDnkokLiMmk9cDnCyscP/K5Ez0W8TSSFGvd3eowaXNJuRN1SjSAJuoUNHcGBaryxKawDKgoJuzgCBTPeMNJ1aN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789767634; c=relaxed/simple;
	bh=mXi0Rh0Nn03c9KyGP84LUciteGC+/QgEYxjGzFqnXUM=;
	h=To:Subject:From:Message-Id:Date; b=uGlg0j2RPhBNN74Y2vQ9hHvNT1K4+7f2MHNamia2tCTpPKnLD0K27Y5RSyP5GBJnA7oe2uW3FOPoqJ1CUHYaXh0HIMedr9LzMf53jADdiVO7be6o9PpIfBngj7NlkJpD6fIlZXgU9Du8+M2IX1jonA3RNKfXYlY/9337il6/KOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEhJuPWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEhJuPWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF17C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789767633;
	bh=mXi0Rh0Nn03c9KyGP84LUciteGC+/QgEYxjGzFqnXUM=;
	h=To:Subject:From:Date:From;
	b=MEhJuPWNg9ZtzJrGp6C2A5XVnljVIOPMeDpZ2Mvxo9+dR67y6lirtwIXaNStHAD/v
	 j/imYElTS5O9Yau2Ewaq2XtTaxCFEWZi0Nj2dy8nTOkOhRgaNXU655ROCPLVyywYFZ
	 4tejWhQTB/535D+FqQQ9etHVednFkrUV5DYfVdlU7He6MgA8KFbfnlc4FgUTv9lwHJ
	 lGC0dM+61c8XaKHjjGDh44Fb2CWjg9E+wmdpmsgYirlXU0hxr1UwvHkSKUwZnACjh6
	 WjBZSU6V5hkVvDqklrsAlDKQqmzHVhKP49d9p6V/EU06iIEqnAy1T+/MtvH+JDibUv
	 Ib9FpAhvY1wpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC07C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976763369.30655.6203921279448885225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e612b548fadb2a950acf661ec86dddc5f6e9822c50d0ee9e96e450d110e7561
Date: Fri, 18 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789767633
