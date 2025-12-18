Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148D82877D4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766067834; cv=none; b=oIlhcrCWESiqnF1qfrRPh0SDwzxWmFNyOUUJRcYlEmuUwXk30EA42PRy07dU7tvpZdyBVe+lPXMo7yirHQFWrtqCY9TEIIWC1oL8lkmZTZH5C91fzNqgajAMLDDWgRM/NaUMBW9HZvBLQJuJM4dBU4DfYws018t6opEqtluP9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766067834; c=relaxed/simple;
	bh=fdGa8L7heDAa/bBWzGbb1EdTEje1fXrCHlXFYWQtWr4=;
	h=To:Subject:From:Message-Id:Date; b=s3BjELUwJ5y2ichb346CH0KM4XirZy9Yy9PUorqFjl8xAmoaxvbGi90oyCeCbfFuaKdIpfHuXR7462VWfs3dnDifJws2F/JJNlOHBQpYP6BMQtQUIpTSm7YQXiwOQ0eUzHd/+PFNckwJO6rJQdFF+VgZbuTtocLi4U+pnju0pig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOiFiYZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOiFiYZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3302C116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766067833;
	bh=fdGa8L7heDAa/bBWzGbb1EdTEje1fXrCHlXFYWQtWr4=;
	h=To:Subject:From:Date:From;
	b=fOiFiYZ7qqZQhPl15fNZuUI2ieVE913ZFPeYBx/VQNBn9wE3H6ZgENDtVJsCfgjC/
	 rIENhNJYIn1lLapU65/wbf34QM8mJScsarsChmnvYyxIZ0bvht2Yhgx6jTmSNiL0vC
	 1UlqL/5v7lw+pDG6XCkcsN8GPRfZTyjAt+MsjWo7Yq6g77NQV/SUu+FAT5LDXQqms3
	 sLzKJB9soom9kdND/DH4/YmQoSc2NMGIZWoqpErwlucOTYnHURokNuAhcduapCZ5CP
	 p4NL85l0B2gODzD9qClb69qufsZER0Vdfg7fNpIt222yS1HuglzUD7JjgSgj7t6TlP
	 NwD21ZDgosmaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247DD6D226
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606783358.28316.4419658381724002997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ac327ed1764ba991b94a836daedfc427fbce24bf0ac1f7d153395f1cd4e580
Date: Thu, 18 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766067833
