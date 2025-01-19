Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CB63D561
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737266154; cv=none; b=D180xCit/rgG99P+ok+od2be1HJHvDtC3bhtfD1M9Cdb6zrWJZdR7zo4ZOdvXUpatU4vmBoM4GcmpRnWVyL0gZMfwTj8vGCGKg8E8cPaabuSpW9FU+rarQ9z+5RqUjZCFH+HoZ/6/i2UQeMjnKaIRYuLL8n+NR9ObijCXsAgxUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737266154; c=relaxed/simple;
	bh=d1zIBmYV/75Pz/5VsJqKEuQSsyaWW29L8EWn96WKuCc=;
	h=To:Subject:From:Message-Id:Date; b=USISAwmWI44+38XFoxDq3NyawXdHaiZ83aLgwaw584SpN4DpQ7BkZfLyuEiV6XdmkMb+Rd4G08owbTIXkr4+E9WO0UG1vDNRcVZ/X6ZYI2D35rh64/SexjlbVDTcP7MJ1qgWsWM11djsgkNcpiYmpXHms19F/N/T3vJ0RvonWFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+wZ+T9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+wZ+T9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4FBC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737266153;
	bh=d1zIBmYV/75Pz/5VsJqKEuQSsyaWW29L8EWn96WKuCc=;
	h=To:Subject:From:Date:From;
	b=g+wZ+T9+sE7DP6BfAoPXp0FQAnsTb4WFzAGzK+z+Xg6Q3rBW0I1faxdoF6fjds8Lg
	 C63bu1fKtMsO8KToL158NRT+mtdDIZhz44OJGw2vGNZ4VchoiwhUpYSpUUmKDtWtig
	 UEweJGjwBsVQqD508M+SUZ9pA0ANDtva1CkrqKGIh+XHuQ7deEpVb5x1nhbV6UE1b7
	 K8R78fLKr0y8hY6yXE55tRCKWpFqsOQ/XLVezlj9QAIm3lAbozWYxdtCI2GhnjhkSX
	 6QeHSyEkam5GpQifqBKSuVK2B0MGjXCbZc2Oksq3/K7s6b/Eu8ftXRghNpTEhC17xS
	 ZvOIMnbLd4K3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97619C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726615359.31182.9370587521284396559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2f0ddfb671d4d1e9cfb0d78700124e9a31babee6b09a5c94f6fdd4e2d73e49
Date: Sun, 19 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737266153
