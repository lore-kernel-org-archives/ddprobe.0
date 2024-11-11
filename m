Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F364A29
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731284154; cv=none; b=YDvyXbDCAAqmlvS6eMGCW6Iad5iJCvBFk4FbnZvuHui3SAmfkM21cLEWEuFaWSSBMZ7W2DI/fb+EGCc5RBRvLISfX4Kf0WMpQjvNTiZH/8JPKg0wH3A07MS3766tklah1GkCngqN+ZXfP8lGWdUMe7w/EMWdRdUmcGCSBUjt7Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731284154; c=relaxed/simple;
	bh=oAwJIOB5Rfi3OfbYsMbJKEbWFkABKe56Dlci489GOic=;
	h=To:Subject:From:Message-Id:Date; b=STW+3p4W5uDSCxi7OL6kD90LxM9w1SGdTn58hFa+HHq/NBezE6DHpofJD5Ro6BgQRX6PJtRdpdxaEV2ei3B2rc/H+6le8A96UtGwsx/xbLBtsyxawwMqXFB012sMpRzoHQ0KixHzFtlCl6S3qHn322IL6fT58xwedLMbKFmRs6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyPGIs4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyPGIs4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95A6C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731284153;
	bh=oAwJIOB5Rfi3OfbYsMbJKEbWFkABKe56Dlci489GOic=;
	h=To:Subject:From:Date:From;
	b=UyPGIs4ecE6udqW9kzVV4wDQeGQcoDJoQ6iRgiKWLBFguunb6DVJEgD49iDCf7ZtI
	 Wm8ueJufuoFMVL7UOxhhs/mweJzC6IFAqFqI8wWiEDNxtcn7fVgIEH1nemyq7snb9X
	 C8IcyUE3I/qZ0rquBzvWP5PMEuktbhqRCAo9kqS9ZPZ2EyHSYXS/4HUhZ5BSBH4PyL
	 299ziOfBuyb3T/WjVsn6J9wZtC+NURIP60H5NpzmTQUF4c7DTAFvDZmOrkuzDi8Ko2
	 MdqPsAhyF/trN8CPepdLv3+flDCjJsfS01Mlyf7/5bnHIyNTRgP/sDfumdMbuZnhdF
	 GyqUk6YFDCvkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93880D12D59
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173128415359.7986.758605100673180542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365a426dea49142c206e2c383a7bfd372797b84876ab541f7021876d33e16715
Date: Mon, 11 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731284153
