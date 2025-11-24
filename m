Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C912B2D94A1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764013973; cv=none; b=knAHPiSsf0NPsogczAgjhFd4kZ8LhoVO1Ugi0jRDA9qd+jT5EtWQ3N6pUWcBZrIsm/skKkIEiSbOhgiVgDWcZ7MKSTubWzkN9AW2gSR/4MZDrvpiTH//jLTF4KN2f+uG5a8J4pZZFFwWzgIEj5CYHcGlpTGAbqvFcvdpfaf7aZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764013973; c=relaxed/simple;
	bh=HkoQY84E69J9oSrJDnJygf9vLWCrS22MUN9vC4RAFeI=;
	h=To:Subject:From:Message-Id:Date; b=bRTFpRWlr1n6zX2RtfJJhPobhbBwzf/kjW7Lau5klBWNviDoEMWpetKF2ETmafV2U6r0Qf8ngaW7t8caGKp0M801IAdPq/6g+N3TmoLUBCHfnWGKGO2teGedyrDptozt1zzpPm4eXzWeL6M//JdDNFh33lYGEYaOG5ISpjXanJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6Q7DvXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6Q7DvXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7837C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764013973;
	bh=HkoQY84E69J9oSrJDnJygf9vLWCrS22MUN9vC4RAFeI=;
	h=To:Subject:From:Date:From;
	b=r6Q7DvXOU6CdO2zBNtEsWykR5AL7EsqxibHmLE7PYjyQ+saE/oDOrc257jmb0ae5+
	 rR5s5oNRAGYssM44lpFzk684KmFxZR0sXM268mEaX1hMTM5loYYqXcXBJSJUsqzBxa
	 IMV6wO5O3PbrO4nJIJCT4Ma59bNlF0dw+Y4sXgcGP8bCdMfahdwmfL9TeuoGONttgn
	 EZStPEMIoGMnshlV0KOLYNgRJZef69vM1DmtL2D4XaSZYkJlMwb93Oj6YoaODx1gj/
	 fkTjTnGC8ElKzmN0opLIyetYDVeIRdb/HBXvTIu8HELnM03hSozKhZDmaZVbqCCb6y
	 xqQjhRn4hbP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D69CFD352
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401397359.12517.16434826039146976226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f20a73d0a2da93056798d77171f7685c077723b2802550da94d90b861bd9cb
Date: Mon, 24 Nov 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764013973
