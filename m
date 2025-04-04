Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268011FE44D
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743782994; cv=none; b=fqvefRMrwTXmoC7aRKuOf2ZwNHOa3qBCHRD/3v3KyFaOQvSRHs2peQkDVAQ1E/d8EZrzeKhD6laH+9vj2UJ1uTMHkVS830Xc5mwkM11IsN95mzROvxKNukKFnESjL9A4McvTExwZBFfoEve6aEfjbUpvXWEhX7ZCCazPn4D5Qwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743782994; c=relaxed/simple;
	bh=ADsCSZYg3Od101U7BD7QfaOvw+yWjRZK+HnAxkbJEeQ=;
	h=To:Subject:From:Message-Id:Date; b=YQiyxoShkDlj/SKanG7FwOXOquWqmtAd3SS/UjRgOZrI/H//I1PiXGaXbWJ+of5ioHSTkOyHf04X7cEixYY4Wa57H4mkfJF/ftil0wq2HUAxCG8fpZCVfAjwHv3YMhKXjxD/NK88U2q6Plgr7McVBY1HpEDGCWk8zO6mG1mpdmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK1OHYBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK1OHYBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397BC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743782993;
	bh=ADsCSZYg3Od101U7BD7QfaOvw+yWjRZK+HnAxkbJEeQ=;
	h=To:Subject:From:Date:From;
	b=tK1OHYBd0Db2POr5AWd1e4c52MNtNS4PDFq+VCqnqZuhxxT7DVKDAlJJERiJq02e0
	 5tczdG3CBe15ORhspVksg5bgH791hw35DkLqQ26DqJDUtG253FpwBkh1LoUluh7pbd
	 xB+OwOejULzPvKCEtT8xPXdsm5980MImW0r/n5h37bjOr9cjqFHnbsCCDWqtsw7OLA
	 AShirCTrtsk0qbv8Be7pFXjit/DLtt7AmFjRcObJktwVZoxsM4Ofw3YUI9Vdtg2ij8
	 apr9YcxH9L6LzPPwIE+YyV3s7Fk5zuKnCRJpVzTK24MAVQNu5i6x1/TNdVsG5mKC/L
	 IIh4VvE1lwl8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378299359.30817.8474874931381469187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78742d4ef5fce380be26359dae2bb6b530141a67bd1aed40d476ae6adf7c2732
Date: Fri, 04 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743782993
