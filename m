Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCC123C4F3
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758298194; cv=none; b=RCKuRkK6sGWdByFYInIZJWU+252fDIYz/Ap8jZvt0ZMBjMimUXIIazkKHn5IUtVxLMDTNKafkoWv9YoeXKRNm7FuAq7aI2h+ysoaBwSeiMmQSq9BjuVyuQYDwTfOksb8P5ETijUCtKFAg9cmB+EOW7LN5xHCTdaqevGbsv4jzQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758298194; c=relaxed/simple;
	bh=0ueRetrYBblyS7cfPw1zzhlXWE6lGJpigEQUb4DQ5Zo=;
	h=To:Subject:From:Message-Id:Date; b=bR2fIKu3l5Qak3wK24TPHmEi21qdomHLFR0PzcFJdF9WhO0KkORU5SRHZpjOOsl3/Tet8yXOYxNXeuj7lXvBd6MJaxPVn6bE1Jn06PMgfMFW6M93Ug9ceHvgGi7edqeCrnYS8oXUTVuyRuzhO+6G72jJ943ak9kRawg8cZETeBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQjJQ4zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQjJQ4zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0396C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758298193;
	bh=0ueRetrYBblyS7cfPw1zzhlXWE6lGJpigEQUb4DQ5Zo=;
	h=To:Subject:From:Date:From;
	b=TQjJQ4zuzg+2ASA54SzarK0W2/FLydNOPwvAXKhkJ/h77GbFgWxt/dy8E7VXW8Jq9
	 ZMSEu7jrCnPf9Qdh/t8tt7M8iTRsOn+CQdQ4SnRCmw0cOmjZvkx2Hac4DoHO5wYGtV
	 t+poTupxUVn2UeiYjscM65yRTdabtjWlu6c7gig4hwG8YO850R+Nzar4uYYPdC/l7A
	 oXguviIQoHVrV+i0H3v1R8XJPf6uxD4wIgM8PN7ccp7URXDhVrReOXH6Z25lCMpHBG
	 OcZe1hVFhBRxiftjQCEA1p8ueOfa5kRVVZLbCw7RvPOhKvFsfB4h4U7hyceqZM3cUf
	 tZyywiIaHQeeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B9CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829819358.12921.16780534908534657985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339dccd12dc27d2622c8bb34c321e0f758ffcfd3a79ed18870b3a55e70ba25c7
Date: Fri, 19 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758298193
