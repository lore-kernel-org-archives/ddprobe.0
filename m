Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3139435967
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 02:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739412535; cv=none; b=YD2yznzHGPYCitgql2bmK6gLoKd9NjUYtfZrhs1X8iED48PG+BsmQQ4oqjig9JZoNQZMNxk3moplSXP/+od9qMC0G0H0/7xYfS5gA3IGxC6D2oq3B5FcEHT1D5uEjyysKSLupMosLLzEMnfv00eqcg40ac9jITNYG4efbGBdQr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739412535; c=relaxed/simple;
	bh=n8Zm15rrP4sM+TDlIbrAFMkYKl06MVmyZ3e5Yxl4x6g=;
	h=To:Subject:From:Message-Id:Date; b=Hw2IK3vjW/U5kwDml4aHjlkS9Q0zD7iUDuDfEYlfq2FTxEAT/jDuDx97NXTFAUiwTIPa+XNEXvcnzOUoX8pB7m27RV2fBZMlW8cBVTdkPjImrFRpF5citvDUZu7M/dIfXM6pnpwhtky6En1TLR969Q7uNeGUONKmUOONGVuwRTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdH19Gcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdH19Gcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6BEC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739412534;
	bh=n8Zm15rrP4sM+TDlIbrAFMkYKl06MVmyZ3e5Yxl4x6g=;
	h=To:Subject:From:Date:From;
	b=DdH19Gcr6EqB2nLamPcmHuNa+AzWCStpW9+HEzBqeDdXJ5YQmLjdJJUF37rHPMixt
	 uzcxjCz9BtR93SNAZFBy3wMT9CFkusaQR6zHlUXOOvufTI+d+3RTANvyXGw63gWtnl
	 cUuOHYPp52an4u1hlZIf1EMu1pnOYEIooj1fhhQ3N4dAC1+uTOwdm06ImurgleCfUj
	 Fj7ZG5rVR1w7/891+W4V5L3hBTSK2nOzbX794S5ZNqQAv/8G/3wgpH2U7y52Mj0un2
	 t2o63hQBKVAVHCRSgW4kSol+DEfRzCBa3+iqzFmFlPxNiZPtO3B2o5qrpZI2HodYAw
	 PzB5/zyA9yohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5F8C02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173941253362.21977.8132185157004918167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abff82d88cf492407d9c1fd8822e54a1ce3673dcf1a9fffac3af8fa6b3cd8f5
Date: Thu, 13 Feb 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739412533
