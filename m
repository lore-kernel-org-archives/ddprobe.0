Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20690801
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734613554; cv=none; b=ZCUNFc5vBH7Nuq9r6WzRica+P19864pZG2Ay46wLLH7xccj0VQzAX5PEffZnazOCbA4o3U7JPCjAH/y7FArYN77iv8kSEuYQrjZvaOZIYfzukevUy/SVhpk6EV2/84N8rUwqNhjL5YpqshrUggsmQIJLt9TROlyG8tINC9Uv8CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734613554; c=relaxed/simple;
	bh=wvsJT6/QHa3oIZhKIQstOSsar4ykKWEX2VUBGEUqW50=;
	h=To:Subject:From:Message-Id:Date; b=VRReNfT4bIEesQEU/YQyZnmvuLKqi3yxOeWzT161+IVcqKmCOjX+gTqBrI5NUUE4UobvhY0IUbSa1gyImx3tkEAdkkfQxk6B5/xVIdTfyhVI9hJaB69YpTf3XF3TNJzqHHI249JFYbxNNkG0qky/O7K5ZHzPOtrcm4ZTvI9Ek9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv4FQJlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv4FQJlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ABC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734613553;
	bh=wvsJT6/QHa3oIZhKIQstOSsar4ykKWEX2VUBGEUqW50=;
	h=To:Subject:From:Date:From;
	b=Lv4FQJlxlMnaQfY+NjI3ZGeE410BAoCkfENHvTpuL173hMCJRzNMzDdPvnRe/tvxn
	 IR0IdoIc0E8kdK4XxJAkpm+A+XuWtGTQZi9H6y1GjWYVMjOFjmDcwrWVumfPNgkjP8
	 Xl3F4TJMAwFCiuAJ4CWn68toumw0NbTZ+JpwmJLEd7b9nEBKBi9LqdTC3NqimhOqgk
	 YV1VcZe7q5xIIn/QRp1678/ZSyrWKsXGt0W8D5IXfAeTa+adTrfIx/8sp+dPVX+k2D
	 qFExysBC3+PUX38TaWxvvQMkIsawKNxAhBCyEWcVVyUneNNDZn1uXKjGJglePuf3dM
	 eTIpITrFTGRBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938BFE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173461355359.12665.15425679949507940472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919e770918ea5edaf44385dbd3006b9deaa67421d3729c573a71cef2e238a5c8
Date: Thu, 19 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734613553
