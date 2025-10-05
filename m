Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38575FC0A
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759632595; cv=none; b=gPdTQiIYLmhYizznBznSFlFjQpzMZcSbdHcpbNG/kreaV0DLkro9L03Fc/t7o1ZqXH+Us+9wDMFkOpc1kP7DHIGgebQRaqz4CTtky6L+e2t6quNdRkuA3x34FzW0TlwBWRV0VXsnSr4m911H3hd7jmgaIbaqEUW7BRSfDwKqodg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759632595; c=relaxed/simple;
	bh=c7P7bzjt5b4bNo/Iem9WE63DiOtgCWoNL8OxslGcntg=;
	h=To:Subject:From:Message-Id:Date; b=PCt+1xpuOSf/OKtyfDdU9YSsz268tl7uQ33upPtMwY/gkks/PUl1hAVzN7Hko81jFBg3oRxVIIiDLiy6mrUg+plllWp+BOweYsoVM9sdxEN29Zkt5Sd+t9eiEgxcuBvbjMz60fliHi012nWKEn8WVTisu91W83E+C0pTz4kbmzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTftAWLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTftAWLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759632593;
	bh=c7P7bzjt5b4bNo/Iem9WE63DiOtgCWoNL8OxslGcntg=;
	h=To:Subject:From:Date:From;
	b=QTftAWLL6ol4X18wLlfwXnDTEkc5mxhNB3KKCIJIwsThoIFjPvThVcyLcLtnaU1lm
	 26MDR1WKPW7F1rN4qjA7AmgsSpu0NYKwqfIHai86kjlNhqFJBSipUmMO4vGy3nO8nH
	 9OU44d6p8iCTjJkdCHFmxeIHOLQQ1pffVF3/BO9jrQtjIl+rMvhOSIgmiQk4eVnwbl
	 +UJb5W/hzq1aVRMaGCZXnZ5k99cVn7eboD4kIrSYhVs12DQp9uc9qMbAqbFVkw1Dz9
	 /DZATVS/b1Zz4cLOKB80LtB0CSVG63ApHSk9LMSEVNYLNYzEuz3y3LLhPH6k2yqXJC
	 Wt5ROYIUhwnJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D09CAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963259357.14749.433261617637433931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd2e2f8022533935e60abd3c645825243ac5a2ae74584800f4ad1996f9d0d47
Date: Sun, 05 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759632593
