Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A1317C23D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719006143; cv=none; b=qD0o+SSJMHObMBm5InDZ1nsLlp7xOWAFTjvgXii6zcxwWkQFI3pAsr0DT0qAQkBTIqeaYY/s8siptwPu0f25wTSOXmm0OJsXvn25abw10KHGfR69/P0lWIRfete0Ypsl/9Z1X5vvlOOSPVMrjhD+B6H0GU3dLARMYXp7jLFsi/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719006143; c=relaxed/simple;
	bh=PlNvM9u+IQBRo5jf+Qo+L4kjOrJpUNPLbUIiM8jw0BM=;
	h=To:Subject:From:Message-Id:Date; b=R7Iza54J6X5frTo9UdPut2z8cQvQonP5+kVWMBWZ4czwse5sD/qvFJNKlCJByJYXfXH3Y1jgOFLwoqykgP1+BrUgRv++e7C6z6RfAsc2da18T76hRSd5NLpleYyPJJrk/T5WXlA/EOHE345eBdA4SLqtuyRqCqu1YNo5ZIq8lPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWSBqQkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWSBqQkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F383DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719006143;
	bh=PlNvM9u+IQBRo5jf+Qo+L4kjOrJpUNPLbUIiM8jw0BM=;
	h=To:Subject:From:Date:From;
	b=uWSBqQkMV2uOcr4+3jTEidxgLbXxIURBxJSSKN/T9BHBvUfGhmvVM0Qqe+gDvuQM0
	 3IQz0cH607NS9/JPvJc1tKU8hFtfZqVoAay1uFVwVchFmShRL7cxAXBnOGngSgLOiB
	 qqUmrp45pZwzw5ZnPQQwztOihqZWN6utm2AbQvDjQHz2ggY4W06ydpTdzuPrlrieVY
	 KEtuVc32FeCxMYREg7CT0rP9hlCNO3sFowcomNEHxjftEZ8lbD7WXTF9BdOI0w5DPN
	 GvW8odwxayx73iD42nQJlT21eoiyNM9WGkO7+8WQ3Vno2qOekojNg8qUHZ3pqBjbvg
	 2dUSLOz33JKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD0BDC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900614288.19841.10735653789044366749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fecfd1974e12e80facb7100eb18f7d55bf92c604e261f257737e383d9807077a
Date: Fri, 21 Jun 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719006142
