Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469FA17745
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786835434; cv=none; b=rdoTZV9qn6hSIVqpRkzsHfMDFHTe8ZCwUZrPA4HvhfqxdgF9t18NG7ULqPwYcObqkCwWerLfCBk2Mnm/MqjNMnXOqyWVU6pTPbm9eHj5D59E7l8Po3gDn93KrX7qbe+89Qnmal1Al1LPzfvUIZTZpcbRQsJv/fHGY1kbq/Y+kJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786835434; c=relaxed/simple;
	bh=uDu0wF8ab0XhxkZ4mCv5zITpBIIiuexquY3elaFrLgw=;
	h=To:Subject:From:Message-Id:Date; b=vBkjiZSTwSvq6HuklVjSJbMBgZp/je05vvjmDBaEBN78R2tELd+rdMNoKASr16j/GEdHtm0bscbMkFe8xHL/QEqzzH9qQ0rYSro2RimALtaJ531eNwtry979ts8HlHezFLZj478WjrDMP1aH5GoCHwFUJ5Qgjy8P4RmznaDbTgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecKaDdIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecKaDdIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADBEC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786835433;
	bh=uDu0wF8ab0XhxkZ4mCv5zITpBIIiuexquY3elaFrLgw=;
	h=To:Subject:From:Date:From;
	b=ecKaDdIbsrRzobM0aB12YZXFxN/Jj1SaFfQULMYmW5lHmJ2yLTtdDeE/wq+3cVyHq
	 M1Wuin6fmuQgZJF6ybCoIdqjCeYZUKFaxBuRAxPRT4ALA4O99usajB/6m5b6SwYD0j
	 qQCz7gT2gsuX+cgR6mdvuZw5Sg5Ui1c2KZ0lcb+X+EfJVU5Z9Ac5Whu7VQfkoiThOj
	 xp2BrIfeBaQiD5YCarJybIeRZJjSkY/Im7tazFmTExGLxT0i3cEn75IDy1eR/eEJPd
	 R+dxs4PqCyLIjen3h9A066DRZ1JSLUvq4aS0XHCRN9RuynrDEjIpzz6WJ/7jhAklr1
	 BGep6QDYleSqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD67C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683543368.22676.3033111149198968952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c632da8ee4c6714e7bd2c0bdea8123ffbbe15d84b8412fcf3c959b62a4990ff
Date: Sat, 15 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786835433
