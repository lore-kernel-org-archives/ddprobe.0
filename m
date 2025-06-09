Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FFF1A5BA2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749441594; cv=none; b=Mj4fZvKj9djRuLqmg2da+p4cJtn+HDzi/DLA6Zju+s9NYsUYfpnZWO5T+Dl668AMi8OXMzTFgurxpzqiRfgNGLTMUKhFww/KzrloPgOSwJzDOz+LqYQjO13g5Ypx1VzE8SbpKoOHmEht1N9GWNu07SuF7d3uPB7gnz6rIIXrKOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749441594; c=relaxed/simple;
	bh=Qo9kDO0PHppesFybnRr5nbdMLBrRRK3CJg2RCquhjck=;
	h=To:Subject:From:Message-Id:Date; b=t1r3pN2UJDgq3knedIlnT4cJLg0qo0xgusDype93aVCU8BaWyhDQb4cjBokGHc6xuY2gwdzLcWnDWYQvx+ReQw6bl/rHfJmFvGgEz3sYxH7RsSw77RCMKj7WPFmHjH8kv3jDtpFrY2GSGnMyJ1GpY+Cvjp5/qszv1aVOnIYkyxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjOftU7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjOftU7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A967DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749441593;
	bh=Qo9kDO0PHppesFybnRr5nbdMLBrRRK3CJg2RCquhjck=;
	h=To:Subject:From:Date:From;
	b=YjOftU7o6rVGrr4ZwRk1b83xvo+5PvOP7r/2vBcmF+NOIbBwpgSEOdZBB4qd4PLiy
	 BmRFlf8koUV/pEC5pWLOt3gt+Bve2jONGc580zJJjaM2NclZO0YwB/OF2u+hZo1mBu
	 +gaJm7nh8R6ZjTCR44EvHvXt4h9Jksu2OCBwbuyjez/KTFk6C5z9hQHy77WlVCZiwZ
	 FwAYm5pyqiF1oV8d+i9/jBs7JkCzvh8dWpt/EPFACz41peFxxzbkCISV+3ZUXrxeZx
	 YgDFc7tT6pi2xsgKMaFBDCSshrb7G35+mxouM6IOH98KVcLWvNNAKQgjWHc1hp4WiX
	 tVXM6SjUAixAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92039C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944159357.2098.17082702437887005773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ef2129c987b2243dc2ac310c0a16ba9cbe0bbe39833f8b3aaee9a90ee0b72a
Date: Mon, 09 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749441593
