Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EEA349B0B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763546514; cv=none; b=eSXRe/CTbTt5eVGmdneK70dvVVNbPidVPHWdao8KCM7zucFt0ZnzNi8FaN4W+1XLs/VGpgOxERSgn87sIr581nEtTnGf0kaeTeeWnuWtLgwiz7RxqAE5cB3pv/owKDrNctGg9oIPhacrJX78owzdCMNsXELp+C2zDqIQhvItXe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763546514; c=relaxed/simple;
	bh=mV97QPiGtks2rAmqy2DnyTDxikjg01TIsy92vYWRkeY=;
	h=To:Subject:From:Message-Id:Date; b=I7k5IbwZbWrzv6XGpC0Q8wVohcEjEgdJsXfN10gynAtZkT4OmVEIjlqkJfhiZs9I562hGLpwKzVHOQKkoyU34Tur2FWq/0avDPjOPmFJVEuEJTCp2ChCdq7Ig7i9Nhm2xAQqiSBZtzfFJUah70y4/lpiTcgbAOjHmZ5mXfH6/7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzaCnIWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzaCnIWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ECDC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763546513;
	bh=mV97QPiGtks2rAmqy2DnyTDxikjg01TIsy92vYWRkeY=;
	h=To:Subject:From:Date:From;
	b=VzaCnIWyOHzgz7GNH+H2XeIabANuKuELP2Al6hrntvpyw8pRVBI1qKHm9D6+j5CGc
	 OrUvn8/RqBWbvebsygoeG5DxkcY4rT2l3s+Iu+eP96/jt/1Axnf4L9Y2pWwCYDcpvA
	 n0GsxXM6Hus6qPEKcqVFA2LlB/rJJKJZzfrz2NjrFiNBfiNNBWF4QxTZ/hjoSEAMfg
	 g7BrfXjII10DWn+WmgBbivwfSd1pJ0f+7kJIKwyjfkWWhByHK536c68nW81yZfKSCu
	 ZuAvr2RKERTOtHDla9TXwXdTFGexAVpbqU0/QZ6UpHjc9yAHSPa+l1eUYeiLuw5d4O
	 VT6ULiAejqLDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F64CF3186
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354651358.2650.1523413983497787199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5071cebfe9a1ceb6a39c74168c01ddd6acff697de49b3146942dd40195bee324
Date: Wed, 19 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763546513
