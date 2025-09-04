Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317B55B21A
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756948195; cv=none; b=pXwB11t0pT0G5D1yl0KXSPPdAoJU6127CPbVVFO7E0L1qHDEvmg55NWbpK5rr/oMUgki98KlYv71apKNzeUAj4amXF8F0PaIarV3oqQzNjW2TfZyZipCcZv8bmEUom4z9YtZzlrVLh6ynanTT6ffmXZiZp9jBbST/lXB0suqhQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756948195; c=relaxed/simple;
	bh=wV4RhCN7A8ww85rn46Wi56eoFGdX5jUcltjPXAzRsxw=;
	h=To:Subject:From:Message-Id:Date; b=rUZhPkeP+A7gip9soHaRE8SiWK6jwNY5KOBZcgY7o17D2MFsNj/HKqCJcITXGQQhKy7wOg3IVZIl0zueG7Zy06juztDY+iKhSnUFUB7gnq3oVXSL8G61k9p7J9AHknfLaxZ1JjHGSB1Ue93cJQ79l3ZTVOesiS9kcDLs8uu9orA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udOF8XCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udOF8XCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4206C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756948193;
	bh=wV4RhCN7A8ww85rn46Wi56eoFGdX5jUcltjPXAzRsxw=;
	h=To:Subject:From:Date:From;
	b=udOF8XCXxQUwLc7hemPIYQnqVAIohLW4DMpQQw6n01yKop2PUJYI1mtGU4RbsqIZD
	 CffwJVvlfhbbl7YRtYqHFqHqzfd4Zz4izv+CKizS8oobTi2ojTWBfNy1R5bnFRJ+jq
	 JJD9fh/HJ6RtlPPRvJNM4huAgipTQebGWc5uh9LpPihsKOye2ZonhbrKGMevrQHzm6
	 YC4o28qsl7ysANUEB8owKRFyPaJjTSW+m1+5etbjV/+d1g/iwyiBUspV+iI5SBeuMo
	 OfbHGvLAN4wi5csiVIBpI+iOJKAKoAc+QOfg9xhTdzwlMbqTdJgHjDpTEV0oP9542i
	 3J9NoByolYYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F215CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694819357.20382.1096459784337753979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e489d8a27815732ea60a77e23d70890aa7cb2c3d4fab99bf0077063e53b7b1c1
Date: Thu, 04 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756948193
