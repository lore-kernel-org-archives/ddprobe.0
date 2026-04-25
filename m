Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E035C613
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777084054; cv=none; b=kLEBoxrMhbt9UeW+J1lEkRO1T/gRq60dnv5A1d+aH7jWGmzJohzkoRmrPYKO/K2yZnAyesYZVnx62MJ753khUNEFi6WO0ZgKEcO3N/XgcdI3F4Dp6pQRFHXX/6RlQQf9ufrN06JgAdajRwXluc6ReqwaU8yfoN49GuAaU9evO7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777084054; c=relaxed/simple;
	bh=G5yVzyra6Nwi8hlaahoailHcvRqvEqJ3AawY+dzuQCU=;
	h=To:Subject:From:Message-Id:Date; b=Pg0cEw2/JRMRaBLhrDnpYC7YHQpRrHiJoNiPlMOvXVyCQaUR0Qo0utY8tDbTloq2yxXhuRWh6LjnRuvgNahQp2C2wRIR2zhvUaRY2TH4MzjM0BzktH3jqOtBcbQMyklwT1GYYYtfvoQEGSNLMHQ0+1fkzqWNxVsq8ke+RbxeO0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byULxKxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byULxKxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF50C2BCB5
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777084053;
	bh=G5yVzyra6Nwi8hlaahoailHcvRqvEqJ3AawY+dzuQCU=;
	h=To:Subject:From:Date:From;
	b=byULxKxqixT9DgZUC6FElLWH+7iXHBKoJrnughakl4XeRZdpe7hpoS459N0iNRHcv
	 gVW8Nti1MQW9KYqOrVAd19KfrtGDXfjJOA8HNropGBLjydazr96+cC18cv9Akv0bhl
	 bSNbFKo+wbnRtIMc2sUvrWo9RZ+rf5pLdM8nKBpcLtMd0Av5KQcORJ5X9cQx7O7qvh
	 aM3bzPAjl2Dzi/ZhLfk3MLiouN9/whWkdA3/ktgbnLudB4T1vdHSo9nDI6CksMYSLS
	 wjtdbJD9iFk9Ukw4KXRborOOy3O62bsMAIbZx1qlVXQk20D26LGeZvYt+7mtPFyntW
	 8QVDCjRiaee8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF339FF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708405368.4929.1543580372949652087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c31cbd8e5c373dbdba5dfd5fbb2b1a8a9c6f749eb001f93d3157429b1ea728
Date: Sat, 25 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777084053
