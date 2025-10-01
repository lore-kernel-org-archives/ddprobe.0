Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C7BC148
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759301394; cv=none; b=uUklvN9beQajTTua1Yw0bz0Q74c28dmExH6OKCWyBDvWPca+xcjixz2Y7t5o79r0ApP21cfZ2gPCovI4y9dbnChGXtnf0Piy/GDWGmx1XSLgh8Gv3KJT7k7Db9XzKYzd6sCXcBrj6lc6xwOKZRf0BFu3rHaiC7YeH6cLsIT9Exk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759301394; c=relaxed/simple;
	bh=n2jVRGjAOCuIiKAcJOaGD11SClIjMzx9bxSB4OKfWUU=;
	h=To:Subject:From:Message-Id:Date; b=W7f2qynRR6RliO4u09vzL5JukEIuog/AXxW53yOMJDaa/d1bXecdbn9yBtl4aSgxxsk3kXqbjlhe/KR1EhNMgwt40sKRZ2xg1HGllpOgmenKy4bYCRxYwCfOBK8QjYs2L8/4SnTSxrAqVx2Pathplnx5YKKScqglHl97NX8obTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abdwn+dL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abdwn+dL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D0C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759301393;
	bh=n2jVRGjAOCuIiKAcJOaGD11SClIjMzx9bxSB4OKfWUU=;
	h=To:Subject:From:Date:From;
	b=abdwn+dLCHPwyzXxdnb0uaEiaAaZRzFh2KufGdyCrqFIjxDMexOGKxUfew5qOVjC2
	 6k2hyajjZYuDlBO7TcYjON7hmFpcnMwi4OvtvyeJZOZxHbhAaO/YpSnPEqRMtlr2qT
	 N/on3fk51Uo7/t3MO63MlcrCvq3YFEIvJ3DtJiMFsxq+xBIU+xDtPXZd5/mJ3MNOaj
	 aiFJnW6k0qoH4zmG3XzYhIAC7MudbiNFCDDP8SCXWzYQIvKsaKFaPS0OdLfS3xB6ua
	 VkWRlUtezn8QPW0BGSIdJFBGFJ+Yx83OF0HTAMZJDJIQHuASjpWQbXmJGxs64N1LqY
	 wqIjcWSl6F4bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378ACCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930139359.29730.5921644515735852660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ca0fcfc2edc4f684f13620d117bd277fe3c9da7a02ae7d3940b318c96a5955
Date: Wed, 01 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759301393
