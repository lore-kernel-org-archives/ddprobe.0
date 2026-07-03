Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40696352021
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783069714; cv=none; b=PJ2FTfHSQ7eYqwnrLLQoTS7fdsPjIBBs5iBdAM/h5gdOjC+uKPyoeEYmTHv0+WK+mDKEq8Jojmx38ZVE+qdgySRFJO4e78l6Qi0BmjwMdfqsIoHCKKMJSmR6bHYviPrfRUKhWCyHWwhyb5LSzNNqvkuMA20paFWmJTAHh2wcEog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783069714; c=relaxed/simple;
	bh=oVJmHanKgqKq5kKwvt4h7udJu2NgqUnkHbehjMB9dxs=;
	h=To:Subject:From:Message-Id:Date; b=G69PxSNRSXG8weVQ9H1xFbKXSXWFPo6fvi86LtLVGIgJc4K7iB6XtiLz+WzIxKtFqtDypbELbbtVwFXmZzEvhofUk1fyPt5mAXdku1t9UbvzumY7BJwsEdqIitZBvOd4MSDPl0MkZscDeognDGAT/8rNmY+oLR5S+QeE1tjKSgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk4rsaeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk4rsaeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22D3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783069713;
	bh=oVJmHanKgqKq5kKwvt4h7udJu2NgqUnkHbehjMB9dxs=;
	h=To:Subject:From:Date:From;
	b=gk4rsaeK6DeF7akl9z8NCSA7S7IFfNQubQ9kmzCVjH93iLjizZdGaw8CyPG7tWINS
	 oO8S1r5imX7IzBDNeigW2nV9WQZWc72nDbFi+oIr55065QIleplajv2Jv7Bvk5WVGV
	 7W8qTtadC3AbIMaFgqklVj/WIb6EeJx3PKeyMAuLrrO2ZJB1j7VRcvSH0qBmN4khJd
	 ubc0VEmsZ/10CA9SVZsZIdlkLL0KdbIUOWQggrB+vKFzqwl0EcBOynKAxxT5ytkWfI
	 HSxRRtLr7hypGulP68Qo4dF2rCuH03nXYEe2gtKEhP2lVlfr57Gz7PalSUhwQX3XPQ
	 mzW74+hvrLE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE72C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306971371.6295.2358076261597754732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334120c40d1217f20ae614e07adc74594aa2864ec48a9f9073d8259923ad11d2
Date: Fri, 03 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783069713
