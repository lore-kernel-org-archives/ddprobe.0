Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3263973463
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772420694; cv=none; b=QtT5XmjczHkdqa9H9sidSz+2Q1263vMovIwA1WSFgdzJ15i2ucFH2BEXyACBsLqjCPSPnYulhSP5ksLfc7U2+RiSlZK210SghkGBze6tpqLbe5nEZNsr3NXYz+KvTjZeeRqwAhFLtSDC4hmSk1g2AIVkRAyiY+CaPv2/8TPRWtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772420694; c=relaxed/simple;
	bh=BfrmuB3huB5UOlqQ8yxXjPYPKypn8i+TW1F+JdohW6g=;
	h=To:Subject:From:Message-Id:Date; b=J4D7XcuHXI6mMapHD/U2u8vnipWdgt9vfUMRn9Zxg1jWzTrMLkzWhEj9zTWGtEo8YGSMAHVRb66ExsAVuCLn669afQyjS8q9dTClRoW+toQ7ObAUgzg/uWgajR5quLuU563eQVGQqVKsu3y5xQbG8GQVZaQKH6qpBAhnTxCG9Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k95B63DK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k95B63DK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF44C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772420693;
	bh=BfrmuB3huB5UOlqQ8yxXjPYPKypn8i+TW1F+JdohW6g=;
	h=To:Subject:From:Date:From;
	b=k95B63DK3vHsJNqo63OMvNdCmG4lOh2PGYVbkr++NBvffKJmCVfMKGF4fJ4sYXCqg
	 EiouNJBjhMwUgdgVzNUuVQHY9tIE/ShDoHYLrnhH9sflV9sBGzdcnW16HPj9qwF1K2
	 UMPzuBElnJylaApGflGGwp0dbMbd1QUgQ4Tw4tvqRsWeYvwZMv3HkLvzC/3FywBKs9
	 4s6bnAPANIihilJdxXCKnfuF/JT5OvYsWhPVraN2Ciqsy1oDEyfodR97+whVKmTIXs
	 Mkb3A63z4wcR/DtIuUg508we30xZ0uE3nBb3X2yg2sMxTPIFH6O2dy17buwPo723wb
	 RSueDo03pzHEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD7D58E4B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242069370.23386.17462420052837395964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5661764d7d9733714bacac32edb1959f595b109bed234328bfca49f957baa3
Date: Mon, 02 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772420693
