Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3945327380B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750078795; cv=none; b=InOBn5AnYvJqHd+FgrDeXUGwtOZcps0aMYRX8WGtszW8rAvw6E7Kz+COMx47mF8va7BjDXWO1p018BT5UDOhYLiJqQ6DzazLXWJCjalKQicdE1WR4oDecyWOCh8HV8kG0xEjJBN0ODBFWD7bxIdc065pBwgjlvIomJLFsTw6KTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750078795; c=relaxed/simple;
	bh=CESQjCtWDWCVT8jinJDuFjPUL+uR8WC+8sqivmc8Ge8=;
	h=To:Subject:From:Message-Id:Date; b=Gp8JDuGKH45vOOrMqaREjs/ozLWEOUHQo1/J74dDDVHkOr/4qY3DCi0LFTkOaZAjw7IuYbymUNVxoanBZejqfWHBrhBvhY0RY9sop5pn1fBU5PpNWdvG6WDJTQt+xRjpuzJLFXMcC2vij+pioGUh/xzVZh8yF09mXlCE+3RB01M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VE1bSFNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VE1bSFNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB040C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750078793;
	bh=CESQjCtWDWCVT8jinJDuFjPUL+uR8WC+8sqivmc8Ge8=;
	h=To:Subject:From:Date:From;
	b=VE1bSFNG4wxQM5/CzS31w9NRE5oi8W2IZcg2hbNdM3zm7JjTmcEuMctVwbgpzQ0Rp
	 DroQJ0sYXjVIin1GgWBJnujvkLuqSL55fgKCfvZHeBLL0SM1VjEhzCyeX42e+9daTW
	 D7TPJicX48cMALlH/EJrXZfi/PjIc9Efw8wlKDpU9ywmAW+8V483ZHwYFe3FvvACUb
	 MRDiNHyKLMxOEDYCnifkHSfp8pQiirJkraCQAzeq3zCh4cB4rByNIxX71RXIwTy2D3
	 CaNpRiMV5LRK1+b8ekpHC7InhwDIguVSPP/VjiLT6+WTjlFeOA3Ud6kSd3HFwVtdFu
	 kz0lMMMqcTeIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9962AC71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007879361.1070.4007820880094875024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56498a374129a69360a6061ffddfeba546db49d32056bbd8da1bb1c094f0eef9
Date: Mon, 16 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750078793
