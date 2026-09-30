Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7ED52842D
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790790034; cv=none; b=RZ0Tv+6/v19cqN1QgUZ+6WmAtP0Y5JeO8x7GicHMRJTGY6xUFWeLqxk5JVb5rasNDlgh4ChqQ4n5aaI/bXNjMFrPKP7LfWBmA4Kcxj0oWVY8Sj5VFhGzZlk34tlvSnYbIan3dPPSqlET770YXXrKlg81HCjE24U1AhOh85zFrz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790790034; c=relaxed/simple;
	bh=RKCGVAaJl1zSb1vsl90aRkLITpT9Ro4K80YVIPzBs80=;
	h=To:Subject:From:Message-Id:Date; b=JLiE5VdquAgsLXkt4aG0S1Pbf/rX6XA/FU4dkfjcz/6PIH8aoXSjoRmbcg9MlSyALek3IyOFlloGfbdneBsvQFW/+wJNj9tWWXo4BmfzX6KHipOwZ4UuGRiRiLzpl68zwFrhTMnhrxDR2pYc16VlGaYT1MQzFEdrn7oHl7HEvxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSZox7cH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSZox7cH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53A6C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790790033;
	bh=RKCGVAaJl1zSb1vsl90aRkLITpT9Ro4K80YVIPzBs80=;
	h=To:Subject:From:Date:From;
	b=PSZox7cHZnao6cHdX3AZgCYXJ7/UgFIfgTCtRvwU8cOA/4J0snh7ApOHqIlSGq193
	 YFVzR81zDfs+t5yLbXztLCvWebjmsxNISpiRcowZwIAYpahHXufckca+QR2t9weatu
	 YDFhW4QiK6kYznwS/Itae0zACDIs0lX9L/Tn91xTnfO2fAVS1MsYDKMAnqx3I4cnzC
	 AGNB764w21n65jkpa87m/VWc/OSAgMeV9BU2Xk+0bOGWJhdh8h7yRBnB+81QTudlbD
	 /ggRnYUpAAlynZEsLXKlWQeBYu4E4MviVxCliOtTlgXBbsvsQB/n0Oq6fbVTCw04v/
	 DK1kAX5bBn49Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC502CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079003369.20559.4070264442288879023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94e46827479fa85ce92e91fa708d0d8aea80233612bd6a07d5fd8245037ab191
Date: Wed, 30 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790790033
