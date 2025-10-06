Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1881F1F37D3
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743594; cv=none; b=ptZ6HDr6cy9WT00vv4hQjxXh2BIcNFPZg3FfUUYm30GfM9jcpgf2psLEVbqBn4OTsU6fOni83Nro88nMduSV29IfXMzIgb9PB3ELnH3zMKIKRpCBBCUdckD97RxXVHNlNR77u/ft5277RengFH7B3mNX90ZtSiKLiIBgRlEsHhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743594; c=relaxed/simple;
	bh=TmNPyB5mW9lePkU5x9uEQSa1n21aeHkvtLpStwSEEaQ=;
	h=To:Subject:From:Message-Id:Date; b=RR7ywFH4F5qCNaX6cmNXgCzwrn0Hz8csgu5UXVU9aE5J4iCS68BSMPZnRaaize247K+drhVZ9RuTwqpRkFT+6EFg0t+d3+v3YvDs59hAKsaUSOUvXNZUTqklEO1KtF8QbVGxDH5bCrBo7f1uTSs+mk+uwbob173be/0yL89gB6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3rC7d0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3rC7d0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B53C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759743593;
	bh=TmNPyB5mW9lePkU5x9uEQSa1n21aeHkvtLpStwSEEaQ=;
	h=To:Subject:From:Date:From;
	b=X3rC7d0OWtUZv+VgJhi8foDtAxdI/j324P8IT9HBZfP7Iygui1xByqq+vqi34IoMI
	 ZjxAKxkxFQJl5rGOdXXXl0H9yeU0hbD5d8cAXCF2+vpOj774iNcG7ab/rijgLYWRoH
	 fFCB3dGZGz/kxlcrujXxw4lTdCHD6FGKQHkEpRL655lg7J59QX8+5cB+18gZaG+YcZ
	 NvwTDA8QjYUeOyvtohBBOVGJ5oH2fVO3gMpKVSbvL9njVNVNX2l9sS4/8OuFLh89Gf
	 OKZcgOlKhBwEqZ5HYSAQouhh+nnuFFwfRPa2i052bvYRDIxEkaigTWKgrnPtoRCf7e
	 m6EC0kEjVskew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90063CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974359358.25573.8484032839723059329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b58de1ae0ed79416963852a7a6c43ff805d6e544647fb5df0c7ef85f083b6c
Date: Mon, 06 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759743593
