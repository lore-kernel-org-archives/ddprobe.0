Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458821C01
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725828954; cv=none; b=WOyz9756XMhuA3/YE1lh8kDe6BI7KOdam9ZoL1J1GLcQQh1g7DTSUJAcA665rKVUzpSstgialGbbKxMSEx7FEy8TQxb2euZNx8FWI2X7wSQQoq38LUG5x9+84syw3spltiqNtbB78sY07RqS1zqQI42Kw8fiGpLhATAC0pLGHRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725828954; c=relaxed/simple;
	bh=bYht3hbfDDly9KX6RwhmeUKBg4kbi9LaV+wkFZawQAA=;
	h=To:Subject:From:Message-Id:Date; b=RTLN1UyQMkngqr0FnT+q04nI4SVW2yfSCRULWGNQ19ZDka+2jBf5Lel7JnO14MdQNdLw7TZeL0K1/zRC66cCVJUUZoiSRq7F/a84Nj8eJkgJ8WUdgzNg6AFbEGpNcSlXXgc8mfxCY1HHjMWwJp78rbcqldhWKgT0oG8YX5MmL1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjPXSnTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjPXSnTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8CEC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725828953;
	bh=bYht3hbfDDly9KX6RwhmeUKBg4kbi9LaV+wkFZawQAA=;
	h=To:Subject:From:Date:From;
	b=XjPXSnTdqhrdh28PMHtVj4bmBkRD3kAtf8bDZW1SKEF6N05+p7NujD+bctVANR+qR
	 CGGhWs0wi6IW9fcG7s3G10mwma56FbbRExdKs4iDfrJCO0EoNQGyNVFVlqgaK8HkaI
	 ub8TDhf6KGHpAMHIGsxm/mP+0ijIC0qQbEi9Kx98uPgEQRpietRzJ5LrUKrWiku2sy
	 8DjXktq/Qz+AFhWAYmNnWtnYYhIY8cL1h5kYdit6K11DaUwbU4+hG+W4+p+OT2v/6W
	 7DUynToySzhtpaqP7u7VavhAsR0sqGxWNh972jqOLCYDl0/6hAwPFYZG+WS0D+TQLk
	 yBt2coFGC/8ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9644ACD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172582895359.13782.16091471438259010018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef98d2f1d3b8b9931f19169dede1f1566e430dc822722088c49f4226609ff78
Date: Sun, 08 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725828953
