Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356E5261574
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677314; cv=none; b=uBqiXDGL1VQU+l7rxuNICLGiY9rNQgbyZGFf6WfXZ2UzH6UCSoRlt0yKnIr80QYOdyfNSvoC6T9kVXwMdF2suVdPNVzNFqENYFZEoVN8GjYRgOzomoCUgpYxOyU6DLtDPOnTO6M2s7gWBE9413wbftsIIZJgKiY3LMm8SbC5oAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677314; c=relaxed/simple;
	bh=DmVYWJeV+j5eNBOwp0LkenLGyt9gTzK4Micol0qriHs=;
	h=To:Subject:From:Message-Id:Date; b=ev65/fMCWMUULYVt1yio6VQooNj4suQ8vkhg3cU3wVKk9wd3k3ZLeXUJIkX61n6255vQ0cVVSPML6QnFJqgwG9hZqJT9SbYGwBlal+rroZsZK5CT5guwo/hdGXYhP8OOWL3yGvaoPhHZWChq/09J/Jd/9MOyRUgTXZIQqy0hHLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLnZGzC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLnZGzC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763677313;
	bh=DmVYWJeV+j5eNBOwp0LkenLGyt9gTzK4Micol0qriHs=;
	h=To:Subject:From:Date:From;
	b=dLnZGzC/i84+pWEy+Eae24M8aI2n0JHsJXHF+CIMiy1B1bAozR5lR5bntAearQSbT
	 Tu2lgWe8+iOmfpoIBU+NOVrcLr17dDfcWNuStra/2orTQX4E6eTzEkkdID5VYyKmfJ
	 BIOc2gigQ2Fm0g4ZxmQMb5Vh2y41l/jiXFmPZc+3iKLB3fqlvZXsEx1H0rBeOejspQ
	 N4GWIr2HS/xDYbhhEdTfDAcDJqqgmZbVopk+3bL1eGtiFhAlLexIcfwSFv/YuXmkcC
	 aqUW3bao4J+OBKKwKPrM4J+cuxeKUSPJfTmf75TIuLTEizXmq7UBV2iwQQ+qn75WZ4
	 vjS+FGKj5j2+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A1CFA446
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367731358.23335.5633965820350522974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4265534a24148e2587a7356fdbd394c5c0354561045a0bbe87be20a1484f43c
Date: Thu, 20 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763677313
