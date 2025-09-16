Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E2A31BC93
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758057595; cv=none; b=l46QHsgGXEMdfTJOipmlnoGDZE5jHon++Y6CAG3AV393cZsx4nUgK45cKqc70oo09gzkgYhiSQKKIhoiKbBWL0B+wj1ghrojrubwKl6OK4G1kf1tBL1K7yiy0DDm3RwszPpJ+iEBc12/AK+Vkox1Qg7LZc3WPeHBxWrZT3xiQIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758057595; c=relaxed/simple;
	bh=LPnBZUeK9HbbWpyP5jGKV/TsdJlpyxpYvZEDiYxiGRg=;
	h=To:Subject:From:Message-Id:Date; b=CKxyXYy4ULhbAc8mrlRxqdj7hrgP94ONnisjkyTmKvwQ2kHiqmPuu45+WoNCuiCqyUvhQiphAaVfcuDHf3W5gbziZ2cl/9X+ELMV5gkRHQqtCrsp+berK1lmeik4407s1ILx+cKlTp2fhWwJF54JzrOH0OgTPkKxtl8yZjcUIvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBhTUga0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBhTUga0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758057593;
	bh=LPnBZUeK9HbbWpyP5jGKV/TsdJlpyxpYvZEDiYxiGRg=;
	h=To:Subject:From:Date:From;
	b=KBhTUga06S36MvsLX0fxDPM9xyI43a+HWXzuBllXVMgx7+rcBVRwgUAtrL7HEVCQu
	 5i8Sp+3qDjXd8S9VknHRu/CZS8Qf5+4T5ykzVQfmexk3ZU5Sm/9IsPCgmOmlmp8X2L
	 iY2S8aPjvgb1VO4Rs1qC110o1hMHZOuPu80EvWlwSZxGpTaDm0yN6I/ZhBLjqigaV7
	 sKXXhqh++Ml3JJW5mYLJUMFRdI/f2gKrKSTAW3EiVW93k3ijcTZz4iD3AcsmQyT3gO
	 sV3OJ8IbaHBVEs73y4pIw6UpTOKUCplgV8kmIgdN1B8BQurrFnn5odpa7SbVJd2F6U
	 a+sk9e+AiEyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6CCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805759357.4150.15105040423175542371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1e2703255a65dc547713a63b9fdd3c60be2119a38a9b50994f56680f674f4c
Date: Tue, 16 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758057593
