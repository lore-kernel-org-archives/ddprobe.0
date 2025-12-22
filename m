Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B653FF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766366034; cv=none; b=ES7z7ZShyPo92l+6aLppHZE+oG0WrZLv7K7l4mnkKssmZPTiKmA5Tg/YzW6gs359DbDZ2ggYRXS6r9LFNBcnwB7cIiQHUcU26fZNwogHt8PcMB3je03iIbAFeTbZFftWCjBNQY/sz35Ls+VVlA653HkW7sdYRxkvhHSwW/7PYRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766366034; c=relaxed/simple;
	bh=npbz3D4Ou6kb4qUooMO/5df8kvq1vXC5BNJIFW6q1mE=;
	h=To:Subject:From:Message-Id:Date; b=lIl3a6RqQu04/Qv1tre4Z2LxhZnrGu1p7IRP7pQbJaxJUoHVUt5weZpZu+BJDW3LyNfr5/PA9HNlFgUe07V3GhcKUTJZFUqTa3t80DA8/666fgPSXV/hqWzwW5du17zgde0jfnI00RUbv3OwnWOU+9xkmkslDa75eDGuh+rAuN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJlbLJUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJlbLJUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A327AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766366033;
	bh=npbz3D4Ou6kb4qUooMO/5df8kvq1vXC5BNJIFW6q1mE=;
	h=To:Subject:From:Date:From;
	b=gJlbLJUR2N1f0ZjNnknFE7oxo6xhwzcIwWCiAiavVYgn+ML+Ge6jSOk4kLAYADzbZ
	 EuzxTMgtay6p9yONPEZucohob7mztqpz/3FNKcnF7NSMhw2CAu+nGUZFVqbDJTs+D7
	 dGNcVxOQRZDoEIAmOH1Qx/6b2VCuiZiWyN2BYvU0OmzfJo89fbV9hyrbk8lF0FMy19
	 95+C4+LUnRgu6qVYMtRF0UaEGK3uM4TnbCcz6DRrkHF0na2aIzlDBvC3fNgf3PJJfw
	 puXfVRZ2uqaXaUM1z5BTh+pQyDjVDteyYiT7EnV6oqDTA5TfQem+RBLTp76Tz7UvWH
	 P0iZf+O9fLs4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296FD68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636603358.7032.10772416145364851739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854632262bf5e9aaacec3ccd5beaf3ebc53a9e21cfd79964985e8663d13f5044
Date: Mon, 22 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766366033
