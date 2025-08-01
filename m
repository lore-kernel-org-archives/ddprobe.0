Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DE3149C7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754061594; cv=none; b=ERGwrHnDYlOEX5kWewocbYv13uba7oNS1/U0Fgk15zFswZoja3bzvJCAMvVvqu8+MYbBT8aU2by7OKgi3m6+VwON1ZkjT2j02RjMxvyq2G7lLs0vQXbGRNt8dt3Hr6rOs6GCud+C9zkske9JxoC+j4BUbRT8aY6P6hzr7UkZ5r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754061594; c=relaxed/simple;
	bh=vVWrjTL28sWcdKTkkUbKr1BvXjn/+D57QyaJFX+rutQ=;
	h=To:Subject:From:Message-Id:Date; b=G8KrvH6zZquuW2rQku6yF/HrS6eXSKEQussB20GnyEEIkRb3Z/zfQc8MTsKkv6h8KFpD3foQxA7hk2+oM93A1Ko+TyGQNBN2IS7xL2miT7z7NjIxovjlor9RW1ey+kBMck+m4HBKG+36Beu8sChhXEwkXdy3uAgMy8ytvbxS24M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe1p/grq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe1p/grq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4603C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754061593;
	bh=vVWrjTL28sWcdKTkkUbKr1BvXjn/+D57QyaJFX+rutQ=;
	h=To:Subject:From:Date:From;
	b=Oe1p/grqQAZ266G/A/Y8l2oi2sFDeBQpzAsVLQFxk3qX5COytlK6VzsKII3oDGkK3
	 d4R64+xETCPgLdjq+UcnMRgoVJAq1AHnir4x/y890P/ubt8swfXMMZgioS0vFuWEZT
	 dw/QzLiqe94wZXhiPs2tTuEYAi4bOkGDunjDcnzyKx7Kiten7sN54DQVstHTehLVgY
	 JKxqcVt7ysMc6hmOpnXdfyFOFP4yOXygDW/tw43wVbTyOEYd5IWBDGrjpkKwDHT/aW
	 dAGvSYFvtAZOAEqFgKQ8NEjPYjpanRaOshBxq62JThT1l936WYGMhgIAg7lrD8ORzF
	 k9LgBIlxJIjsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9345AC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406159358.32531.14292767012470456678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a018d0f544e64074327e8e2faf4d82ad24b8eabf68eacae1251c9a4716f9c5b6
Date: Fri, 01 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754061593
