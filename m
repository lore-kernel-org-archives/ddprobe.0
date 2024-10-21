Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9DA12D1EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729524354; cv=none; b=oTTFNJJfF1DlqTGE558anSOlT3MaJXmQa0BC/15R/MtSTCcdCoRMR0v8LuntsovcPDlLh9G1HeiKLv/VNfC/aZ2dNiuplNnyEOCCtTx7WgKm6vHbaIuyMQyrkCNUL6EQY+5rGT6dA7QY56QT1Mbtxw8kjYz9fXQWH9Kh3jNBXyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729524354; c=relaxed/simple;
	bh=60F79HAXmhsLWidAJAAl/WlU1y44RtJFFeakel61b48=;
	h=To:Subject:From:Message-Id:Date; b=jlYFu70owlhF2tzkVn5gr5XUm8jNk487B/QYSSS6ewDI67H0ypkoki7dLBY/jewVDKwZ9iX2UVhurIr29QMBrt8taPOQrnMW5d43uaF0L55Gu1bpQJNZbakSEZaoul9YM+DPf2kOYewq+3pbqd2u2ycaFqUE4gEFrllAjFO00Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6cQoprD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6cQoprD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A8EC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729524353;
	bh=60F79HAXmhsLWidAJAAl/WlU1y44RtJFFeakel61b48=;
	h=To:Subject:From:Date:From;
	b=M6cQoprDsc6LAEX4XL8FS28zpex2CE69In0VkhKfaCeeQfyMR0Htlf+kLtfKBTMOf
	 AzecC3x9IGE2NvnAXm85GvCEMY53YWT9aWtqS7GwurBgq9Tf0HWCbjbdSfpca99Wv6
	 Z88s3U6/ruZhC+Eggk5p0SNuEpwIsC04Ke6a/DbELsS8fTX5fNL998xLS90GOyRfqa
	 TNWnUM11CA081MmcR5uOJQmaTGpNfC72lR9wvtakuwJdd5lv8V//W14N+acSNQ2uFb
	 HPyk10WH5jO9KGkFNHiX6btYjj7Qmgd4C9Pf0CltglaKsiv8yX0O6DyVUwocTEL9Qk
	 c95AIVHGtJHMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A358AD15DB0
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172952435365.13518.7572949327850905613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91840f65699bb3f34fa853c3bef37a0342f558a11d7d41b336f507f7534bbda
Date: Mon, 21 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729524353
