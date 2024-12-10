Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2722E23DEAC
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733825754; cv=none; b=fwRMTUI7hfEapb5zJK2vGh6yxS5H1aE3VkR9DmFiKBmoqQ/4H7qddIFAifFgXYQWqNLPyYhl+nMj8Hl7MhcmOwxqKaZ8ZoLjtiXELv/M8jhqL0qhF3hc7AbPWwuAZel4bRvC9Om03QP91KnnOZj6KJpLv0/Tk6w6oOEC/+I9Tys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733825754; c=relaxed/simple;
	bh=w0LbKHHBShBrq0iNYqR8NQCD4KvlBM+qLLxy+ohR3LI=;
	h=To:Subject:From:Message-Id:Date; b=caZtDCJdziKjBiChGJttccpnYV4aHqlCcQY0uTYN0j7SBGhlv1igxL6S1gbvWq8xsEUZWFcRjmzDvgHfLd57G6FFvfzbHVzLvngb6SUIMLTQ2AbEAt0a1zmQZnWGOVYnvNhf7YktiUaMK8COJF/WYsoo+TMFdZwP3vQO1Hs52qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auzLCoen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auzLCoen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3ACC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733825753;
	bh=w0LbKHHBShBrq0iNYqR8NQCD4KvlBM+qLLxy+ohR3LI=;
	h=To:Subject:From:Date:From;
	b=auzLCoengr7a158MmJl5k8SsQp9aR4zVdYWd0ejWX9VIoYBqdW4V1LK5rGu6JG03T
	 P0GZSVuoJJ1WfLKzZpZzHrW33kHL7qy8iPr5rzHexZ8GBmnxNvN2K4sqRiMNoCRqay
	 VKk4uqVQExjbfddaCSEhAuhoFGVM4lRq82LptmPvTQ5J+yLxGKaVPVz5FOQCRluTNZ
	 Ei9F1qJvpmKvBzTMLwGUzplspB3W44DpS+2akIUvlRTxO1KxIbxBk5G43kmbMJFQ7Y
	 i1MX6hy0vf2aAoOZnwe6DOCvn6zFOvKEawdw8VGx76UEpFazcfL1zELA6thf/A3MVJ
	 bnb4Oe5QiDuWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A414E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382575361.31990.5175714698933467772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3650160c04d28a60e2ac1b602f3e080609cb152f74495ed4bdd7520a7007b60e
Date: Tue, 10 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733825753
