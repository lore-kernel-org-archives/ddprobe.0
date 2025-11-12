Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B31D618C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762927794; cv=none; b=bTlQD2kJPiTIcwPFa5cuKv1Xl95/e9U4y7q7qUZlDZKVOYRQ2FY5T8k3yMMxuwBmc3UwB1SIzrBkWYtGjwgbbCtu+MXjC5WGOHC12PcUZSfoijC3fl9jBOT8GMfnD7qq9hO2AvRFWuU5AmeLxW2AqJqqZ2EJpcOmU6F2wGo3Rvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762927794; c=relaxed/simple;
	bh=wZFizNz+J9BETaly8l2+iqXgtNpKwKMenLcCNeA9ZPE=;
	h=To:Subject:From:Message-Id:Date; b=plO4bYmWUSncT9NyZAgL8VaMLnfHZjvpPxtyCXKScfB3yLEgNStZJSH7un8laS5xgS8b2smsao44vHvwUd+vKfsLvEyEfUIKgKU+6zzpIbdls8GNdVSqL8YZf308dVLoocRKVPgnP1O0iwG/rSzH7ht4Vsw5UDelKF6I30AQ+cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USre7hAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USre7hAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99475C113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762927793;
	bh=wZFizNz+J9BETaly8l2+iqXgtNpKwKMenLcCNeA9ZPE=;
	h=To:Subject:From:Date:From;
	b=USre7hAE/1y8G1qNd6pGcADF+0bWo7Pkdjmu4rT4NaOPyZY35pNMt6FaR20o/q+14
	 RHk6ayVDhBgzN6sHlZW6H+b8I2uerwHG/YJ3Z4Ch5oMQs99omtc33Hnlwz3Z6xXMQW
	 /tl5kDELKn+kiD6C2VJNSJEumoavFcV0NVt4m6qaNieh9TNwsEi5CS6Po7zvWZeWV2
	 /4z3+56TNn4Wd3vBPPUIETYkpBHOp1HXSg36jpSUxWBPgHqqhZcw2ftolI+eM+TzQH
	 okUkekv455WECJ5RrmvBvK+Busc9FUlZtp3rbdiRyzi6tTsVMfzKrDmWrQulrYwDnc
	 eqffdktqSTWpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA1CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292779357.3078.130359698648081189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07b9b02b08290e6eda63b79084818aa49e8dffb7ab48d884c229316e1cffe2f
Date: Wed, 12 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762927793
