Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCF34A0C
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742474394; cv=none; b=MCHKJXHWUWDk4OAiOXLCCqFLW/23RhX7AT1xMTFMNwxlEf8HQXF26e3jf+hIJHm7867eNHESc+0tI/60KDuZ2MLS5CP0PQc/ReMn96nE/LVCn+7LN2bNReH8nNxnyIZpmsLn92zFMI6uD5c3hBaNWDUC20sHKJ9zw6+/RJD5NyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742474394; c=relaxed/simple;
	bh=vt+Fmjjd0sZBjNY5FYL63cd/Lc6c5b5BYJLF1SrK0dQ=;
	h=To:Subject:From:Message-Id:Date; b=WR3/YcAZIIefnys++doNyKUDVtcY8JNSqo0dQ69e4irUCKHDTGqQrg4DPvDWxUBbXjs6VZT4ZyId3W5fiZLtVdbx86ZsnknrUdrhvtIK3+/yafVtccI7/9SLno9h7YjUIvhbsRqhR/kI1JRpZLEJFo5+wefS+H0qzDVFt1e5Qp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leE3rJnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leE3rJnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27D4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742474393;
	bh=vt+Fmjjd0sZBjNY5FYL63cd/Lc6c5b5BYJLF1SrK0dQ=;
	h=To:Subject:From:Date:From;
	b=leE3rJnEesydV2upFLkfwzidzzgOfGOs4znMlAd5uhXoBWYzPnNg9IHGfoo8NHH/w
	 bz2EH0iXl4p3hkpZAWxS6gTgUKWrW6VUoosB7oNyCUxIv/xOzSrsNpeYGMxw2IVRqU
	 tNF0vN6OQ0h0XDRa4P0OR0y8R4Jid+HsHXwDntA38zHKJLAdYGA7fEGGXstMfmYdHy
	 K/k2CxiNcCsNQ7YB/ZTu9a6NLmRMIf/IyPfM0pBtap41md+Dq/+fkNhFVpdQIqj7mD
	 OQyWXNk9Cp11vawxuSEhRU8BAtjrDnqFY7GYYbCcYxj7x4Gu5KE6LrGjDMHtMI8PUf
	 PBac0b3VhLbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B190C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247439362.29209.11651629481082107592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065450d4c353cf493de70a5e70e24ec24ba23aef0a02085c105908c91e34a955
Date: Thu, 20 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742474393
