Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E21735897
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752031194; cv=none; b=uQbQHgk/RTZ+tPtXlVErFWv1IJ9PQDvGW87hREMb8FP/+PW4fZ+DtIevj1ZEK7WMKI4Ohw5nUx2G7nJXQW1VWLM8SaMYXpjVuaYknKog1qLYZHhiOlqHrc6BnGP/x60ESbw9i+vQFcnjV9RhXHMdwEkQPHGQE7nnBhVHES/LoG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752031194; c=relaxed/simple;
	bh=4d1ZjGq1mzpAU8GDiwwRwADPX2jie+LWPgGE99Nf4Hc=;
	h=To:Subject:From:Message-Id:Date; b=Me38AWPlW/hujo2xhnVDmZEpLUO+my3eFcbKTQiJe4I8xtS01MJIBIJ0Acpq7hsLZ94KYmdPgG2QN0ZQTHeGTViE+bNw6lJgElrxkppyRlM/IFnkDD6pz/G5iBFG1ZXM9/aWFrlRivaNSIJ4Zxkcr2G4Hwx1NFdbo9/BCxQmjBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKN55FD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKN55FD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A7C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752031193;
	bh=4d1ZjGq1mzpAU8GDiwwRwADPX2jie+LWPgGE99Nf4Hc=;
	h=To:Subject:From:Date:From;
	b=UKN55FD0CJwhopPyGersdq5bk6WJKqIz0DJ0FaD4Wufuo80LSKpiHbQBwzzVaTkK2
	 ZaJK0hFcnI6UA7xP9SJMktGYMoXV4oZi6kHhUojlT/row6Hk3QNsjo4JefLGJUab05
	 XP2lavloU/PXIwZjMAXUIfFHQlsRiAcKgAtcId2XM4VMKvpj975jdg/1xQmxQVVvXY
	 +sBZQlR9O1bUW+2zGjOCRbl20hc3NWxxTEz2pgFuIa3f2wOVy4FGvnNyr07UtkQTuG
	 qLw6V4CPOMmTqLkmtpBVDrB7rXkSwMN6JjYPPRkgbI3czxP/egP0aCX2SjbhEzamK9
	 yFNgo0Iq2zFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D5C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203119357.23235.14350563160493878399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50134d554adda8f8260b25f62cd2511f95653e062e2fa896bf720451c95b7ef3
Date: Wed, 09 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752031193
