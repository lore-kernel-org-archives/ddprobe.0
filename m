Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02C543D516
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773135293; cv=none; b=MSBBQwQqAbTH02/ROeJrNe8UYW91tWRnDJeIZThWbouZlQ0rDPyIBu5Jvn4TzaMvxJuvPCh9x6PK2ZKrNtgEprxghiOzvawqBABaqmUoUoNyOEanE73QWh6mgkId8Yr3PPIrtM6q3qHmxmgVsmtXL00XoYgHSH5u7FzIxDTL6sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773135293; c=relaxed/simple;
	bh=YbM2kj0D9xvbSIAV+FFgmNQ9CDTXsy58ObRAvaW3N5Q=;
	h=To:Subject:From:Message-Id:Date; b=TZD4dhySSD2QMeNeienQ/+0vXx9qHjYgLKDiTvpDh0pCGeTMFqemH2HBslRA5DamFAtA3zgBkODMbf+C9XDXcASXXxMKVedvCjKQYpuaH/oEa+rQcopEbTSo0a7ZYVUGjjkjDNkaqa4WUNhOcaCh7RgPEKNULEpLUuviyGQleQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTWwrMCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTWwrMCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0AC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773135293;
	bh=YbM2kj0D9xvbSIAV+FFgmNQ9CDTXsy58ObRAvaW3N5Q=;
	h=To:Subject:From:Date:From;
	b=OTWwrMCxJC/OhnKjmzmEYdi7/NoETWqAvtXNEfh5oSu9oHIZJWeQjgwu4FE6YpMzX
	 yOpiVarwxLIq6n7axzBQCpTrBVZieSgbJW+RLjm4gGqSqFPe6lKxlvymHa6nQdMEOc
	 AfSRcMUueQhfeppmkQwXjm8HdeLBIZLzHkd+Exz+6OZrMUc6jeT1kZzDPgDxLEziLw
	 dIkFvJYnS/LaYu1YbhHb65Yp0EFxFjE35o2qGkrGe3bsB0m/z4UHCpCGONoVhrdikm
	 3rQeYLtLy7o6nXtPBLRkEf4/Iy15Ut3muJMDx90i4gxkxBlKTN+pLXtTEv2RnCtuD0
	 WbsQL1tH2tUJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F690EFCD9F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313529358.14327.6900637539355633060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285720f92e558d78c26b25a7ea74c52c9fa36e6b8bd67e46ff8f04dd1121adf1
Date: Tue, 10 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773135293
