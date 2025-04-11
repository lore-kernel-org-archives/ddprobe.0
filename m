Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B1627CB2E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349394; cv=none; b=G6zHiiunYtdx1spEp5ZZCiihpG9KtR+zGF+sFTR1EDZhZAZB/4CVSM+wwdtUtgJM2Fx06Q806qDPn03A1ZJgfdJhte1npOKgkD6UWDjX67IUv/MVSQxppBZzWqXupJN4LPxBS4b1x/S0B9SpZmzE0lP7gA4O1TUTL0AsFsuCXrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349394; c=relaxed/simple;
	bh=4YL7jPWJ3Fv72GO/l9XEoI18JrpZfgIVdwf8JHf9wCk=;
	h=To:Subject:From:Message-Id:Date; b=LdH6lYPB7zfcbu4Q5eiG7pFkLWQVn9oIFI7ifLeuBqpagfQAB0vuiy0d4Nn9MqmLe1Scps08imL59j4WaMWBrJjcZZK8obH4PM9s7G2u+3Ry7Rgs/GnSwbe+wuCsAc9UqYGMvOKzR5u6O1tgUw9u+nOS4l0Ja9gfY/lqsKz1azE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WC3LVGKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WC3LVGKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC111C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744349393;
	bh=4YL7jPWJ3Fv72GO/l9XEoI18JrpZfgIVdwf8JHf9wCk=;
	h=To:Subject:From:Date:From;
	b=WC3LVGKuDDWYQDSxpYKiTFi36p0VTSouF6LgtCnLpBRQwnzDy8dEQ7eJYyrueBAyb
	 JxwEdvIixWBhkaKjVdHn+gLOSzA8bCVdsc3iw5uH6c3EUwC8gwAmzWvWuHagzPzqDv
	 d3YLosdQnmSeCONEItiph/S0GCo41w2zj+ucI7FJ25DJv9X7wUAQea5nZSNX3EbJA5
	 10A5kMe+pHgvPEP+8L3LyVJJ7nv77I8U16X5m1qoMh13/f/mt2kPyqoeKhUHVPtp6R
	 hCEfF9R9pTKn3O9Km3Fskd+MeRNZ/wkoWa8pNgwTMsu3Guk0dvosxsXYTvxeRoJBwn
	 Zaiu95rFkRZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E5FC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434939357.31928.1860459204624607248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59f673fd4dab5a92324eb29185ffde1e70a798d150aff96e753369e40ebf60b
Date: Fri, 11 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744349393
