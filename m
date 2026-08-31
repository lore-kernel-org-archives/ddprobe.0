Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BF1361978
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788207034; cv=none; b=BfRUgYqFC2g1WfbWX95ghSZAiMHRX1m92qW5EHxAL1V8lVvBDNGRQvVWphWtHga9ddHf5I21QgOORlp51YdNPWa1GgTeaZKu6infyIoYENQJyfz/8w2DrPQg81Bm+FeejU3llAvEQ8DvoM4bVGDRB7XqFnhKKYm0kqwUjOMAGiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788207034; c=relaxed/simple;
	bh=yDEFUkyNfVEZMCbWXKe/QyFLL47e+Z/Rz5cPBxkZces=;
	h=To:Subject:From:Message-Id:Date; b=Qzrd2rT3b9FmvIUrHkCM0TRCj1DuF1AFLB6n0lxfd/lOdZBTeR64xeUdRjCgstu7aFgDwcWF2QymcgnSWAx2q4XyOsriSbZB1qPCvhHyNWgaHeeS/e5nHvSVIVKx3PlE2lXI9AALHHSHL1qXZX/efwjr1uIzcmN46RfLscSti4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfoUIOeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfoUIOeC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CDDC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788207033;
	bh=yDEFUkyNfVEZMCbWXKe/QyFLL47e+Z/Rz5cPBxkZces=;
	h=To:Subject:From:Date:From;
	b=VfoUIOeCIIQNkgM/xrCfCkxALduukydluQVNnFCyJuaA9X2NWbXLjUpev/MsWhVn/
	 PrF3sIwUJqbELCTSdhMpwFEMlXYCwUaY9FZ8DgGk5110RB7OLGBPvvkC+mbBmUpP3i
	 tKn4bQxhP8J4FafR4cK5i0ZPhAtlT0jN0vmAHn5Ey9C5Zy8uS9wzj3rO1OK1H1kNAC
	 WWmJGAQgRp8LSrxPZ/WLrQ8gVqBDKIoBoaRJauvfTMmBp8kDwHT2YSI1e5JFS2U2Hl
	 nmvEN9IKYcGpP0UYFdB0q79zhgBrj7mYFNO0Mxz09H9IfbtVHrd5aOTPGGRmL3MLgA
	 yHhIrJWuHxOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEEEC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820703370.23228.16923596061752301833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d05631f89ba362abf91402c87e771b6b21a446cfe2c76999744e974edc7026b
Date: Mon, 31 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788207033
