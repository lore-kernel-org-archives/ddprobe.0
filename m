Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF6B15B54A
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742238594; cv=none; b=q5dBuPhEH3/h659Jg4JQzEzFe+6ZCFYfFyF1hQzWT/OO5Ak5kGzLs/PiAJcSUXbq63DORyBMQh0aug8sNGEWVtnnLfWeaxlPjC6SJCoVf1OLQ+KuV1ZcHs/9CB9cFnXLAApNsBnKzX99L3ZEk/9Ycq82su+ryWXMDc8YUNLFAbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742238594; c=relaxed/simple;
	bh=QpvZTrORm5N4TDbLvzQuvxuX/Tk7K/9Bpnl+I+rzVyI=;
	h=To:Subject:From:Message-Id:Date; b=Uuj6otL6gpUB+hZ2lmiJKaPymFP3x8WSHhhB9rg7+nUg0yQ30TXLTPb1yiOEElDTF+6NwoK3ccUY9lZIp1ZaE15KFpQUubHzWiPOWNnDbtMMw9WVbFPDwtbpiz1ZSKsd1P8v0ZqiUb3renpSHk0w07dGmAh2qbLCLm4vh3h4kJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulRBkQP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulRBkQP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46CCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742238593;
	bh=QpvZTrORm5N4TDbLvzQuvxuX/Tk7K/9Bpnl+I+rzVyI=;
	h=To:Subject:From:Date:From;
	b=ulRBkQP7WytphnzwQb9qhBHW/W2SHPSVNNl/PQqm4XuUlP8FIlsbjKUVn9pskHXFh
	 hk1ZfZq2OKHiHoSb6HSdCOLxl4Hsuk68DUqWZ6mtHgt6mYH4R6HSpSDAAjfm6Mw0LN
	 yH8BH/tOlcP6iIDQuC+JRBhhBcjCkFpxuwHirT1lP4DpjSzCaTOgtLn/Dfxe8mgAoD
	 Y9aPV/c0Glgd1PrzvJ8dhYfLQkLgkwSRnYkrBlH6BEo8LUNtyZX7HgxNwWwdXhTsVn
	 /qRd633yc2JgJHRz7SZpOV9PnLgxG65osFtGXEzaVEg6aTPQRVkqShvFQTSmmXJTEU
	 zHk02zbZZ5wAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E32C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174223859362.13030.7673084047956282031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9996919c2df50f0aa1b89a3a3b45af10a7932a6a64402ae45f098c7fc29bd958
Date: Mon, 17 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742238593
