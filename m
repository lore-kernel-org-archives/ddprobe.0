Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597102B2D7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721174723; cv=none; b=k40Md6BCtpaE/9ze2g8dHcFbg8/rkodaUtehdkRg6xLjdFQBBHhcGqkVkphHDU1diP/G6H6sq1OzQpMUgCZsHg4U6fACjiI0tFYUMGSCIT47k+VIDu24E2qH+RrnksrtTRXyILJUeRddIw9XMZyl64E/FOqlqB2mbrYb94OsKlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721174723; c=relaxed/simple;
	bh=GbaQ2kFlD8Wok9mp9kEZCSvrKJDtNKhVi9yaKzfBN0o=;
	h=To:Subject:From:Message-Id:Date; b=agxhQP1ztocHq1c20oH+AFvnehyET0t/TqYgRchBi2Ugz44moccUsZOChLEgTeabUcta9ObbBUU5UbqlHN3siCe4S6PcMOMystbT9vIeIj0eDNqwRn0F6FLG3YeZtI+JtAdv7rJvYD0A+bStzYmxBcj4y1grnX6kG74Nc+LTmDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqk0WGzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqk0WGzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2597C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721174722;
	bh=GbaQ2kFlD8Wok9mp9kEZCSvrKJDtNKhVi9yaKzfBN0o=;
	h=To:Subject:From:Date:From;
	b=bqk0WGzw8oLSKzRtLLzPuaArRZGBtidBGDC27lH+UFOQpDplCoOp/JBkgMdMmXh1F
	 ebDofBAY1V2bfICHLnVIkJ3jWZ7+KwT6aqAdm5DYb3KQfcquJ8U9B4neUhsNfrdYPM
	 98Y0GKC9/ZTNJDeQr23ivqxRYesgCxk6zgoH3ZXyEJhK59A2wusX4dmYRvsrauxJe7
	 5lMncKU0kAsUZIXx7xKXw7VuYYnWKH6r7T62NHsnv2dMmLul44ZYPWeVCm6Otj3FBp
	 mLsfgO417AVFH+YaXD2dOEy4RLqbibTYIBcQxiiEqltR8cjFyrNz1y5ZMx3J43IEc5
	 HjkWGIFVYBlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCFECC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117472280.8291.2310020437718307149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5144689932042218806e7f899f1891589d7dd499f77ca83effd9eda47ef2b1cb
Date: Wed, 17 Jul 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721174722
