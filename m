Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444582563
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716917663; cv=none; b=fQQUmLBZPIS3oajPrsxZMM8iIkEQiayQfRaoNPL7i/MQR1RvjLnLH9XJghdjTcxisRNlDcrmkH5qPdSX8qpyqMdujMI2MaXw0YG/hsKKiDoTFuXzr56iUgQdI/w4iL8jddrLSmPHAXbpVACjCviW8DO9qSUNHp9oduql5HSGl3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716917663; c=relaxed/simple;
	bh=ZTZLRIatgU6XW/bOdntkGbI6tOPHZxn6faoacNaW1YA=;
	h=To:Subject:From:Message-Id:Date; b=hKAI3Q/4VhtqGFDeoDsGRtDkI6hpdILVxzjVqRYHBpD4ZqQe7KU8vaavUxzFD1Tfxdg8KDmpcfvWfy4hBe1hySouMRK8K0HILRvyo04a4g9M73L6Y4Mo2wybdmzCNtsGxiAcdtIw6d2ugrJZDa9SVFK8xbbp/+rkvNMLmJY3mkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mxt+VZLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mxt+VZLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17CBC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716917662;
	bh=ZTZLRIatgU6XW/bOdntkGbI6tOPHZxn6faoacNaW1YA=;
	h=To:Subject:From:Date:From;
	b=Mxt+VZLYybCjFFD+AxlNtA3XAqN1ZUi9EP/fAQAkumXi+INgRYgXukfWTjLFHx0X8
	 jS6KcXOd1RL1OmC4m/6jj9Rn8kkVSKNrd7qnSdD4vdOJbhiHXCYepsERFuTUl6m1Zw
	 4fnBtO10wM/nOeQ2/Qr3UoiPzos8bOs4QB1PxB6vmhOCl1KS1aDlkBI81mgqWtE0O1
	 xJoaN34FDH2KIFbpY8g1XC3mMBihGJVhl/vsPBLI2fzKGyt3J5NHoujkwzD+g3spuZ
	 riTVea/VYtfFIDibdkkxGq+BKTpJLcTRYBU3F1ZrGSyeVGDUJILTzx/SGOzn/O7St7
	 xgnsztTv3npcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6C1C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691766276.3563.10753374477379446699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3234ae99dd4000be109c4b51e071359cec43da153ed5dd97ac2957f2e50f44c8
Date: Tue, 28 May 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716917662
