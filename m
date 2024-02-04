Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8E321A19
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707046697; cv=none; b=Sh9m1ONHflH8jlzKxAsMtmKiz2GTC8ssKrKhRkMiywMQNKXK/OF2OteVSGRDC9kQISDKQneDqSV2RZtRkUf0xSKV+1dfNkLERAkyPhANhJlZ5WUpQfgMRVS9h1JJwC6JVKPNEmFFRcQJpHsgrCStqwo4EVOwVfq18qftSb0/zaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707046697; c=relaxed/simple;
	bh=dCkpAdcRB12qTHi3AHBDbAEysv//PvnA7uwVn9TjnCY=;
	h=To:Subject:From:Message-Id:Date; b=rLcwynTX34FVJhEdgyeruMldT77HoNrYAn710o8DqMP3n9uwWVxqwjseJBlBYovulq23yGTWxHY2FHxLcNlvJVHJfNPKH5GjF8yBVztzXeGSAu6kODEtSkpUA5Sw93+vEh9qsyz5vQPaTNrHaElcHXkazvEmNa0k+sXRjebj5Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJdO2udk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJdO2udk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 916B8C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707046696;
	bh=dCkpAdcRB12qTHi3AHBDbAEysv//PvnA7uwVn9TjnCY=;
	h=To:Subject:From:Date:From;
	b=IJdO2udktUoRLumbXopLYi0tVAw1zsuzb1ivHT78L82I6TSeUnWPwypH9YVWZxvuy
	 Jj/zaPhUPKEaeRjEHX9+Jf6qImSz1zXidR9dh32V+ys5ENCn3pDrdJPw8KNAK51LwL
	 mMeE7ayweAaRQ/Gmug1Oi0L74qneQdxfotdeumFA7Axw6CZj/RTVYSGq6A42jClsgI
	 RUH5E4kJygEDrm6inZ6AHu0RCKPQCQiaur0BVqcuVE6KQruCGpk2I3zbczQzvFjTU/
	 R7F/Msie4SNQZE74ae12tWS/Cxe8j/aPS6mZzg0Kn9BKkB/GNanSaFtaxFqJ+hkNp4
	 WK0B0t92YbOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68FD2C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170704669639.32756.8395106727276537070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e69952718b1c063a0ae53e12261df1b615f2b5374acbf6a8a071d4f95fd149
Date: Sun, 04 Feb 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707046696
