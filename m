Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD5D1366
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723408554; cv=none; b=RZEA3/9wEZVtwFCAY6beCy1TdzOWDHS0e2h9k2Dx3kJ6/yJph0m81CrIE/kn28Bww/PkigA1kFbbVX8pXL6hY+/dJlqswO2RbB7WhOCDIBi2/JG5JFwblIVXxG2k2f6FM9Q50V6GnPcZ+WUvtRe7AOdVqNBdoN2eV1M/TofBER0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723408554; c=relaxed/simple;
	bh=kewDgc0r4krLw47EGkiCn12ghoVth5gWle99prSn4DU=;
	h=To:Subject:From:Message-Id:Date; b=oMJj+5VSfcNYKh74K9xYTxaUCKLKyzxbNuo420a9f7yzgaiIqpP9faIMALf7pl0+XDvEAkcC2KtyFLujojrCmYfjbbTZ7xbXcfeUnb0kTzB7DSplAdrjH2QlH0VsnkQZnAEJsWiHzdENBql68iGaXgmbUFP62LWb4CnWiN6s1vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgVyT1xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgVyT1xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC45C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723408553;
	bh=kewDgc0r4krLw47EGkiCn12ghoVth5gWle99prSn4DU=;
	h=To:Subject:From:Date:From;
	b=mgVyT1xWBw2uebZlnCg6l2tV2CqaV1N0hZcWH8BSJiQzNZrYNdfRtOPgt2/M8CbCJ
	 6RC5qLHtmOc39kIaNDjrtKZO3resTINHzPicXEShpkteJhdCDMxYCTnj/QDkHkoCPo
	 vTSCqjFWUDAsD1PbQzrIZVxuNXgyEo5nbkYWuY2d2ZNb9F81AhmV6G0C+SAmzYyoob
	 40qOqNBdV06DFmbUhHh7ocpI2/Apm8Gp94UDdAQsjRb2qsBg8NSdsD/KA6nEh8XcQN
	 ipQaDZGaMMO301PSn30BSPwgzmbFUJiTyzYBt6BT09ZV3lIXJQ+G3bWkQoxBulS8El
	 ofgXvJFE2WK7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A1AC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172340855360.31028.4318262047616396325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfeca24a7e051a93dbd182cdc4b0d281e2bcf04b81e0bc473f2ebe6aae356bf1
Date: Sun, 11 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723408553
