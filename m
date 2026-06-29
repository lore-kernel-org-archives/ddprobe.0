Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B473CC7EF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782722314; cv=none; b=RNGtrebaIuof4tMRLRRiYgEhTcRnjzffyibKtgvfHvYypzrOXGMEnzxEWrVqyDXLkA1Xs63YTieomVlyuKXkZQ5Ju0HXtJPYVhV8x3afeaWbuvRBFH85ycxCsxvEWQytHL9mQ+lEryXzPujxVNuGwOk390APpm3cpRoBv+Axrgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782722314; c=relaxed/simple;
	bh=TdNj1Bt4OIsxMh8Bv4omeiQs2dP0oYE4BOdG3mHzKMc=;
	h=To:Subject:From:Message-Id:Date; b=WN9yVDQO+WpeMArfpSpMQcvoo/+OykYcyRww5XFzJAXq9rwLXB1+V0zx/u8gxkeBjD5izpX+360wF+ApEColv5MGJHETHtCJ9WHTDJ2qPMZ9YOuoAXNwHjeOG0mfvPGZB26HlLhpMXOLjimcHpO7oCfUktBZeU9sMCbEDDlycY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHqT3OEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHqT3OEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F3DC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782722313;
	bh=TdNj1Bt4OIsxMh8Bv4omeiQs2dP0oYE4BOdG3mHzKMc=;
	h=To:Subject:From:Date:From;
	b=gHqT3OEjbbp/HHq4D/TGvhLBwiuCjThusZQLgHi+SSc+BZvlRCFUC1fVl8azhSVya
	 4hhoTO91h+sKb8jFOpZTOHQSfzXQ8+uXFjQgUdIPqW8McyCrfzE6bYiU5F2oiB2h5C
	 T5GiiCYIquzud3afwPYje470NX4uFoXdWGFnT7cj0FcAll0Al7AbP7MlY0WizBPC2a
	 ph+Y3j/3HRPTQI2WI+hAyyX2ZdpzzJzbe6dmdaGnYSgELAmPK6MFfxHXGz8TruoTIG
	 gCKalYM5Pnft57AwP971d63YCnwFUmEJcYK22IBQdTJjhkAMKlz5BLNAmTcMcR2v83
	 xhCA9R9nWcp5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD45C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272231369.7854.11818554416667124343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8e6cebc4ad8a3657688d6e346985458bc828a874cff876402a5a95ce564146
Date: Mon, 29 Jun 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782722313
