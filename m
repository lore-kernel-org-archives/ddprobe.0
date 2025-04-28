Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A111DE2D8
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745843995; cv=none; b=AniYQqv2xoUzGakvA3oRGBiueT7l99wx37YK8bTLw4kNhJ0X7mn3ii7sillJu3MA9erBkF/LfTAXdOvNDnmy8pFBLeFdzXeIl8c1RWJReW1dns8cy3T5+XfRSBxoxqynF0B4v5o+OQi81jXYX5iPy6txC5kvqMSb/oQkrhGbIWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745843995; c=relaxed/simple;
	bh=e5SOeTG/ZHLL2ExOiYrEK19+aycpSRbzzpokbsvdNd4=;
	h=To:Subject:From:Message-Id:Date; b=d8N0NtUud3Alsktyj/FzWcVNBfKiuuKYeYEZj04uxEnlys7IzEou+6+HuWxvQC7nUcxJAjIc5zpmvg56v9DnOieVcB1TBenBVUXwstdtnis3URMkOCCSROE++9OAcWEGkUodJT4dW/SLD87U9iyaHwvmVcQ8DmXmtm6qKU3i6X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw7jJg9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw7jJg9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A887AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745843993;
	bh=e5SOeTG/ZHLL2ExOiYrEK19+aycpSRbzzpokbsvdNd4=;
	h=To:Subject:From:Date:From;
	b=sw7jJg9/Joj8PyJv6HxAZhylNEPvGMLS8D4QbPo2KW+fgvXmB1UjO9SlA8PPqwZiY
	 7fEBuvzbB7nZDjSQP7kMZCD8BrXkFlgeZ7GnDlnEGsauguLhdqQ1q2wiDDcM5/6J00
	 xHTiM+cYQ9IeDvwCyqJ1kVRoFWx+yIPgqMsAbWPflC2wI0klyHLEXCyfiHtUi43DMf
	 p1QvNZzw+WMtQm7t+PLFvltush8b+UOY/qcmOC0x19h/ObitpkrDaOE/RC74AQdhxS
	 Q7MQEO7jeG71cweAj0ilsJ18TJ514UDytXxRQlS28OCvsNNyzKs/oDvv9fyp3pV4Sc
	 tf8B3U2jpPjdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC5C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584399357.24717.7668521035688382898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac56c19083c3ecfc047c58f3bcdf4775fa88dcb555650937111a4099f9a54f8
Date: Mon, 28 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745843993
