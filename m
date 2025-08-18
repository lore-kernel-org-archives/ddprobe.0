Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2486E27B352
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755533394; cv=none; b=InX27JI5lUQU+ZjUtSm/tXVL1RxUhxhB0xVLG+VqJ/IfYeoqKXOvRuF9gMRXgWJHSgIgGbUYzq1hKpO7NvddMYpL/qjO4XrdeHVshYVqbXr6EIwXy5tanlR3UPsK9JU4gXoh7go3lXIOe2PcMAC/tgnJgpkWs0/Zn0Th0VSSzSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755533394; c=relaxed/simple;
	bh=nMTCRZSaHa75XAMmvgG/Do2lYWfH+wHv8sRI8UuEKBQ=;
	h=To:Subject:From:Message-Id:Date; b=IL5Tf15IgE+Rie1ybrunR3mR0dqeOk2bDSd+phlpnvk/AqZ9r0aT4kKp0Fivc0cYfjESMG9oenLLaA1+kB3nqbNQaAE2EljY0l6X3bTHuKNRrfrpJExj/soJcNnRNO14T5OgUCu6W2TJ8TQBzXjJULAnBucYeGbLj/oWQfbcz2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtC3yYRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtC3yYRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99ABC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755533393;
	bh=nMTCRZSaHa75XAMmvgG/Do2lYWfH+wHv8sRI8UuEKBQ=;
	h=To:Subject:From:Date:From;
	b=KtC3yYRVxn8kdi8Gb7QG2oI3GOl/wBCsvp33X+iX25jpgoPn37cYtUbQGRD3LGKcY
	 Q7itqOZJe+OMwXddUR3kuuL7vtZv3mjbCGcDsxqIDbmqythCTIdezlDlUle4RT0W0q
	 mzssc4VBeEmMlxBPQpxJC0ragyeppTzJt/zxWRJftKS8gmYfQHf2Hx3Axxik6W592U
	 Nmot/pMvDQj6XhdljyMXUbP5x9dd4O8lzqnlIqVor40uJ2Hpv58ffHinyvsoUmbyo6
	 EtbhxEgOy+8YAu7StgI9fBuZ3kXlIc+4W91kimkc1MxztgatPHE2KQAxYv7CILLgN3
	 7frbf3MDh1VWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553339357.11243.11848876307482178974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9deaa0d89db0a66d3db75e51ecc73d01befeb7b9ac89f525b10b292fabf850e0
Date: Mon, 18 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755533393
