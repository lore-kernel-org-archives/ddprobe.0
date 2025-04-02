Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCEB42A8C
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743605394; cv=none; b=ITe8BSGcJ8BkEE9RsVCW3kqDqLUk1nvHYhX/J3dCv2xbYYbzJ0MLCi/fUjCDTwenak9Ohb4UIRHrMP4qAAFgP+oZR9PEgPEKDpYh349dNRyGFOq7aajTN+9Hd6wiM60/+/anzfJXNEWcrFsTsJH5gqSkJkLpG8wZFrDMOEyXgis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743605394; c=relaxed/simple;
	bh=9+PnLy+2sXt7UoHzKD0VxYx0t7oIfiHRH0foCIqJU1w=;
	h=To:Subject:From:Message-Id:Date; b=gofeLU8+o+ChtQT5hX3MvqMqFtK8xiQmuEaJ/+1Ej0894fU7xcSrgO1KJ1qVbr0UXE5u1qvEtecmRsjvrpwDvAeW2LyUkh5oOapYilE2LSZf733/p+D06gqx5pqDIjfKSJh6BUcDQpXLCse/PZ/hzJYG1pqg/XWD7/ld/MBe2hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iO5DTXAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iO5DTXAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA129C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743605393;
	bh=9+PnLy+2sXt7UoHzKD0VxYx0t7oIfiHRH0foCIqJU1w=;
	h=To:Subject:From:Date:From;
	b=iO5DTXAhxrXn77jAFPLjcqajLMLLkU//LESDbIDHLP0Y2j7BXIhXOGNIK+Ai5XpCH
	 UWNjjHQwf6OyJ+S07YnbbRd5hQuHDr/scDujMq7ip0HPmMGdkCbnsAOE61YspNl6h5
	 LM6R27HLSGm2wbmCt+SCvbs8SkpfqfnipTdOtaKHsFHm3wmuo40mHSknUrvhcrmZz1
	 y2fKD8jzCsPWYNQ7wIptoBvK7Gcv/IYC5eHBEJQO+tWO1sYzKoQzy7kg+Vp44vgtOj
	 LuC1prYmhxat3Vl2uiqSsNkWla3IqPh9LBci4X+3UK8LvbTNO4yPjonRQ4ov2Sp3Ta
	 K852KMz2jBqUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F9C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360539358.1278.12506909634318382111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab6964415791dde8ed6a07ab891b1f7bafb4c19da689b850233d3fce1e707b7
Date: Wed, 02 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743605393
