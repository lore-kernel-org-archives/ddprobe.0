Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5758332720C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789138834; cv=none; b=Zzs7H10KsmsOI1/0DIFxvXrNnRffBMrJV/vEARO8Ot6IEW3O3yUTQQq0BawWrWXw9ggWbUgjehtUIsVAbvzza4LCpUmgvej7BPXy5YbF83bK9nvs0jmNTk62LmO6X2Mu2p7uHwhPHBI7m7vteRxAgsXFr6INNvdWUScwzS1dnQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789138834; c=relaxed/simple;
	bh=WL5atn/1b474YtT1/rQ5su2zh2J649Zy68bfrL1rmkw=;
	h=To:Subject:From:Message-Id:Date; b=IQI0wufBWhS9R6coEvkHCDj01nozBq0DA351kW0FrHVAY4I832BljptJ2um3c5jMfpLd9qDV7mjSpd5HI2oeX+byfLtsE2lk+WA6vZPmbH5elNknyWCRzQ5x0RjJRbVd8ieMn6BaggKqkjoioOtuQKJZ4APpO5Vb8AVXbJUrkBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrWbOTm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrWbOTm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D210EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789138833;
	bh=WL5atn/1b474YtT1/rQ5su2zh2J649Zy68bfrL1rmkw=;
	h=To:Subject:From:Date:From;
	b=WrWbOTm6Hwt8OjKPyZlOS5IATQo7KNTXWKOwxYktDaw5xDX7sWyR1S38zJNvYSmtZ
	 LzLZl1i5fCyk3k+kM+QdTRCLZULZmmkzxDpEINDxqM8O8f1tutxYjrS7RCGhjjdOyL
	 H7FvmLXWHdUEIajj+xuSS7UVoYlCrebxncvtScykaJxoYWeKOapvB0hrKUUlpXpSHg
	 RSvvzjkTksnxq3+SufUTvmoUPBbsbJxxlXLtyyhzhUKh6Vqrg7Az6JbQuxmpD6coiu
	 9YrPvBGPEQEF5McFBYbjpUMtAzwpTMwix7OYlzTuP9pDpmIWYns/1G1ovtlmg3cc/n
	 jZjzAzuzOgurw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD900C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913883370.16412.9923997885673214295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf70e3960845c29078cccd40ef53b45957f3a7bd49cd419250180b4453f2346b
Date: Fri, 11 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789138833
