Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B3275AFB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776195454; cv=none; b=VP1spvt5TYejzRo/cE8M2fuckd+vDf6u8japR03Z6CK/iZGwsxXyvoXsOhAm/L9KCQeSdUYC1KXltMbKkuvTBgOxNYd9dZRa2GpK+BSyhk97Ai5k4ApiZD2rO7HcQgX6mTtFRDO6w6St3M30j8nncvvotQZUbDKhySIb8aXZlOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776195454; c=relaxed/simple;
	bh=3EA2MNfIzVyPRcDI3YYgTwlgNnWg/8BA3CFfT+UXJI4=;
	h=To:Subject:From:Message-Id:Date; b=UL7McGMRIC6xrNDFRcq7+0sqt0E7xZhEnuwEDaxAzl+da4IajBFZc39oPGawEiVSX9zuHswKpTOn38Ae807TYMCSpdB3sjLRR5ixVB8BUoPmZCBE6nwVHiik1A05R1XI+l6ls3W1xMRzV1YUgFbBFGrWPirjSYaMFhvIDDT0BFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu78V1lT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu78V1lT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28A3C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776195453;
	bh=3EA2MNfIzVyPRcDI3YYgTwlgNnWg/8BA3CFfT+UXJI4=;
	h=To:Subject:From:Date:From;
	b=Wu78V1lTHIyUJL9yRwVXiwAvpRAYRaI4ETWrhKOtpe8dimUYg8K+Nc9OMBhfb15NJ
	 Q8ZsrfJunZwq0N3cVSsquAMdQt+prHr+PtozZMRADAblxInOOITBtjZjxeJAhEeOqp
	 tiVXkSSJJMdK0VwcR4vUlswHPEafTy5EP+AXejREpUO5V9Rv6yyfOaH6bdNj+uOqtn
	 7juyZY36ARUo5lz7PqZOZ8aD8XX3JUoMKZHcPZ1LbltEpMZmon0t9iD5cKzqIgdFAo
	 8epWVwiMfrDEWBbstrd7COktkD0KnnZNrHq/9W5dVbwfHEfbRCkjbVf2AT/3lyE+HP
	 kWSPCjlbNmPcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DE8F9D0EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619545369.6514.9234988759145305695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e43096b3ea55ba62d6785018c5eda0ed384b9a08f79e9ba60b6bbcbaf5376d
Date: Tue, 14 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776195453
