Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336F7233707
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765678374; cv=none; b=FeXSC327jFP+Mf4KTV394d7ftH5HiDSlRlt/2d+4nkao5nGm4qCwRe2lF7GEnhG15Zgj/QSALXbVgORjiyDKrezzy2dpTYWk/e/CnOkdcSF3A+ST2bvKBPEaDdLNlggxB+9TuDjCMMZDvTZaXBIc3A8f+YceBL8A4L3HMMOTGdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765678374; c=relaxed/simple;
	bh=WhHIoUkkygJ5dPt58gDJAqjBpP0b/O7G7G3GSro+gS4=;
	h=To:Subject:From:Message-Id:Date; b=ksfgGVMM6dM+F3upCHMJgwvGZNeh0GqAWBqX6e43bRnsBn2U82Fj+0h20NYjuEnfXFJxDPWwWAMZRScn+FjfQ3P9m/Ut5GS56ZWNYk/TtQ1eazwBlKjpNd1XTFie7wTIsHFQ1LtLTksOM1tF/qrt73vMP9FCdZ5/HEmSWleomCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ag0MBQRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ag0MBQRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE123C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765678373;
	bh=WhHIoUkkygJ5dPt58gDJAqjBpP0b/O7G7G3GSro+gS4=;
	h=To:Subject:From:Date:From;
	b=ag0MBQRyCn7/aLSW/UCC8UvG4qDiY0uz+st1CuoIfJnjw9Pmv8d+Mli9RaGzRbs3f
	 9rKm+Nz+6JLhuZb7m0kqhspct/zVVFMnrYWO8syJw8iRr5LMk44QjUYtbZKBdsaUjd
	 AJIab5HUjXk5hYgNAqQkcM49tdw7i3J9F9/Hu5NZxJuDzMBb499OXKagLCTz5F7gbS
	 xUihwQmBYDCZWMdXCM1APSVsEowlYCJ9CmkrgmZa0WPR3tNeI9RWAA2AwLUL710VJS
	 tgNuNMgpeTVJ/ilbF+se9UbYehmwOSXWNF12+WYDCDUk5v28NCqXRFz5eNG3EX6HPE
	 9tRo2htjMb9+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974FAD5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567837359.22820.7376510292298687669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be23b118f64dd8e1ea18d7432565f0f70c9dd0233ebff67da6c92dd2628ebfe
Date: Sun, 14 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765678373
