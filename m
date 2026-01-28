Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB1C3148AC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769575434; cv=none; b=gjSivfj+KtKMYH1RoCZS+RyiVeGB5UDV9zd6F/xJogoiJ2bIv9k1sEjZ+kyk5AKBS6oJZ2MVPd0xBjv9AGpualQsVB/nflJQ9qfNNHhC76Zv95E/9ZdjElVCKBf6kMFZ7j6INtG+eAypkfpCi0NKMQ5zWyWwpUToHtyTOFgKp6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769575434; c=relaxed/simple;
	bh=04PAc49GWlE/7W4yDlcoSQPS1xfpXKfQVPWNMxv1Qxk=;
	h=To:Subject:From:Message-Id:Date; b=g3UCRzS14wF/0/QsF8QJig2xmM0UvE3dIWEQzdKhCPmiSQ8SwwgypQg8Y/7qZ9C+4A8FQYKD2IhjCl/Z9nZtz0cORLMqCNtNw0gs+wQp+IwwLoOOGF/TI0ATwLjdb6NAFNKMjWDItMs4Wt1kdaLg8p0TTmSgTNxM7+9J3Qw9or4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbdDZIR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbdDZIR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD9C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769575433;
	bh=04PAc49GWlE/7W4yDlcoSQPS1xfpXKfQVPWNMxv1Qxk=;
	h=To:Subject:From:Date:From;
	b=TbdDZIR7d/EbSqiI3O1/ymYwguWG3fMjmDAzuuV3/m6uY7mXscLdVCQU/hW5NfyQw
	 IIIpimvM3pZLIiYY4nSB0bxJ3+7G3+YDTeAK487mucOeudUDzXh0yCKMG1bjx+gYUd
	 aiXrvCQXRb/9APgg17oqtFUKZQgDfXjzQUMTmHkCYJxdYEAYCXq3HfzGDzcqe1E8FU
	 Zg/Edol4xIzoj2Kk/s21ep6DshFqwBINVRIGoX/BBhV++p3vzc4Q6mp2wqcvTjr9d4
	 cHDbw2PW3GE/YIvAyGqOB/oyDaRhqydWoyw8+JTciOBTCmeH92be4EymiPzx9rjmgC
	 U1lPbTg/uJdoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC7D35672
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957543358.23818.7098357035333739769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf2bea391f4cc4933e882cc28e03480c9d7b7c22d54ce3cc6446b4f46da823c
Date: Wed, 28 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769575433
