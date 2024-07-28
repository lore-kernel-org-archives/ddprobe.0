Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E179EAD0
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722173754; cv=none; b=GcOmZ+95z3utTUL9bLrtbaWcCxbZwYGmj9Ii46uLbY7M3Buu1Urz9DFgdy7jLZRgi4gtTOrTpYFhxKPLw3z4Tpmu0iTZXrylpxjgc9CbPhieyAg+TudhKlcy++md+U0t5m/PqUtUxFJl7kE5WTpRnlDyQcPxHvkFLETTp0FkJGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722173754; c=relaxed/simple;
	bh=ioFWGWPkVJyFzlOpCdk2I5WqRb7izHtntyU+z24pmYQ=;
	h=To:Subject:From:Message-Id:Date; b=kgazmKInFlZay4DXnNHmRyA7XM6tZ999+/oaroJVy7igbaGxix0CpNR/+jHYCZ10NxBwfWwvk4Q3cZ9MGoTReRzWTDl+DKdjhbJPNrCm8XBQ0Kx0RzOCaOejNcNcrkV3WVhAVa1jj9FvzF2uetKJgoM6AbUNlchViyKWOiJw+5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqSl6INC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqSl6INC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5162C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722173753;
	bh=ioFWGWPkVJyFzlOpCdk2I5WqRb7izHtntyU+z24pmYQ=;
	h=To:Subject:From:Date:From;
	b=oqSl6INChRDNVIjFEJTECT59RPSuHJrcqSZy1FYY2p04eeNWD32ETmWf0u9ge8xwH
	 VUaP3HfB1FsCM3GncXXgKwQ56GRHi+ss8/IAEgXTjCVIi76c30GyiXMnLXbYWQ0Ux5
	 BDesK43BL3qyzl3/jjINKvLTN/ezg8mbVuMVe+MiyIiIdnuHrupNHAX8sYqQxOZtLN
	 gijD041+nTI8fplnM/hHTVB94nLjM9Kolq3aj9AXeBK/vzXU0t4yS4xOWn0hv+SgXC
	 Wszk1ZTlYX8ZVygMG941t6br09HmLSxRShP5V3W3y995XLRn5VcCX+lMgxRo8qghBc
	 aaqifu2DcwSrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7BC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172217375359.32582.12133999985143211442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ff8afad5cbfa133fd571fc0dcbe2320d6118baaea7dbf92d62ec87307ea139
Date: Sun, 28 Jul 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722173753
