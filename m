Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA5314D283
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734555953; cv=none; b=dotcLknZawmcFcuQUDiv18nwnch+c7bzFQa+UzhBU0U/ZRrgcqSs9PHUlaoSgyllk+XKzE8eHB8kRIRO4IZ6hP5GEmmQD/HGUTUkq5skOVSxtyurU8zBhHowXFkUvmHZoY0DfG3IevFeXW37STSwquGaebLgeQ3NqBj9G24WiYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734555953; c=relaxed/simple;
	bh=KYRaFGdY2ey9E5QaxZr8Z0lDGw+OFxwzLAmlEfySglE=;
	h=To:Subject:From:Message-Id:Date; b=L9wTdM0yqp33Rc5YrsWBVhxga+YNWrdU9/J7DGyJNcSVu5kwCFoTPHoJMeYebC9XNrYdN8ANZRi/FT960SNAecDLD+3Av3wIsoa2+hdB46sWshDwuH8rxIuQ8zR//Bhr94HrFZ7Opbh6Q2RSN+lr8CsvvjeibOx73OltA8kArHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfJQ3IH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfJQ3IH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA38C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734555953;
	bh=KYRaFGdY2ey9E5QaxZr8Z0lDGw+OFxwzLAmlEfySglE=;
	h=To:Subject:From:Date:From;
	b=KfJQ3IH8B2macs+Fo/zcL1cyG7xfXFzWZ2uxg67q/GwaiKRywn7jUoKtLnwY7LIvz
	 kF9ehTSq58rjn81PcAslQnGSuLjCsWnqoob4Vzocr+StUd7JfCLovE2yjXBLIDrrK0
	 OE+6Ih6i5/YCUZpxJsU6Q2e+ikHnrhQn9rqzhGxyXRWGloWJ2ygPuLRbFHzK3lg72I
	 ROEITAMnrruAfvnXrVSZY5Xes8dUL2kbIVUJ2zbL8VB/iRgvjo7wGe8WDPPhY075me
	 9KvMY5venFAaJo3G2rEmSmuYNAWaH/tvfQIISRExvgTl11CSQENvPMLY7zL9p17s2K
	 nBGhk1BBlh1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93928E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173455595359.6308.17700670447275424015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11eb794438e6e4871f76b0a2d0e142896610a186beefa9fa228f428fb902ef1
Date: Wed, 18 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734555953
