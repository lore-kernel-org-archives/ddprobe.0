Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FAA27453
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767558234; cv=none; b=rtNclA5z26ZxsTcNQN3+3+RmIICwqty6KG7tzuxqrp5tGFcTdL9BVIu1HVE/KOxRCKmhIFZeMxaIob93XxU0gNCxenTguIwrOphWa7IOfajwyMUWsNOi0mUexDpgZ+WxZLgkxgjhBu0AxhYH0I3hPKyDq6gOW0W8Tu0iFcJc5Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767558234; c=relaxed/simple;
	bh=rfnBMHRQyviw5pQiGY+EpInzoTLKHPZ1knJuvR5Jf/U=;
	h=To:Subject:From:Message-Id:Date; b=TQmybzHr9OXZ8KVMr/sE1faAm74KnYd13VSI7pUzf1eH072Wc0FwXgh7m3pmzTDNLIcrUvfNF88h0k6FF2XtTt5wbI5a3gVVR2Kxd3AamxSguJAdHe0BojVfTffAXhAmai6rJ5+yj4qvFKGHdK4NpOR5Xh/6mhLOlSEq6SdqHRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtGnpt2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtGnpt2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84DFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767558233;
	bh=rfnBMHRQyviw5pQiGY+EpInzoTLKHPZ1knJuvR5Jf/U=;
	h=To:Subject:From:Date:From;
	b=ZtGnpt2hlxtlWXQ9Z6uvmvpAYK4UpwOHlHejbiVGYLYesOUAwBgqB7GT3rSUo+eL+
	 xdUKuuFChUruwCCzNvyDU03LV0OTkFUAYyBPWg94fNRTL9S+3d+eh+jX/BvPBdkD9Y
	 IdB1I+apUB1kI1Xz+Knym8psgWGbHGqe+emDkYbch88oBxUcPjrOJGING3rKsRK1lD
	 er+V/4JFY4/+ZpX4O14bXhfq5rp05ncFcJhX9Eap/rahf4YEKgvUM0+v0gq07GoOCa
	 ynxRGEM64+V9Y13peo/LQ4wPL5vMdRNzHJNBK3W+nVdTssV3hPbAFNU+vKK+cWTy/D
	 F6o7okSnFfvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96513C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755823358.12346.4493389769669102190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb6add90270bdbcacddddc89b54c09b3ab16f9f8b178a14285cba8b532d013b
Date: Sun, 04 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767558233
