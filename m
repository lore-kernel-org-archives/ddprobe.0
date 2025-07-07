Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FE521770A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751910594; cv=none; b=NcPEpnczLpfN6Y4uAezoU9W/QUvkqQROqEgYViQNjpnGT1sOVZv5InJeT2pazWvjBx+CaJyPMtHY7duiiddLyYF+CvfFwb4kYi1dUE6ykq5sZ7Q6/xdQlR40Q1dnnYYRQvy09JFv2hK6ChjGiX7RaQc65nsGGn22zA2XZMHT/Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751910594; c=relaxed/simple;
	bh=GBXRkn1VfzjV8sEF47QKwPHemM+7Uxpu7P0378l7KTo=;
	h=To:Subject:From:Message-Id:Date; b=XWQK7AXi3sdZ9LtPd4dBWCZER4sc68UrFWmKM8aD3BJ77vEF8jQ8jaez7ck9+Wad8x5K8/FU4wOdp8eFQ98SEUaBDOwblESS8HwKh8l0H3tHdqaVsG6eX7ruZ4MtngA7JYGKRBhHJvKWNZS2Bt8ka7BGv52MtxaUieKXtfJbKEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6ZU9qYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6ZU9qYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F702C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751910593;
	bh=GBXRkn1VfzjV8sEF47QKwPHemM+7Uxpu7P0378l7KTo=;
	h=To:Subject:From:Date:From;
	b=Y6ZU9qYQaidSogykJyin8GTYRz1abwjNm3N6WGSH5+9vrKBl3dYOlH8sPvGfjVLeW
	 X99aDXqPMH6BwUUfhliMkNEA1/Q5l3YFcCuZnAUfUUvVha7URQDdK0T1m3+WokKqbT
	 41Uvds1qs6S6owvd+9Sg+TcRCKK2o/EbgG25HnNLzfagay68L8v2HSZufvnB7eOJnd
	 Q9e3XiuYxQhltC+CN5h+3SlQdBxp4f4nYl4Xo5SF8I70TXBgHMfJWZPIrLYTWxva5g
	 wPX9fdwwgevwNd4HZ+oKxhwsd1tBz/X/bD1M2wNC9MAxB2j6jPnHndveYJo18EJmk5
	 GgpQFaUAk2Pyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90524C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191059358.30388.1111867745091213962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35d8a9502e9261ae7d47d11c5a4a5027468ebb3150f1160a9f7bc007ab8790e
Date: Mon, 07 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751910593
