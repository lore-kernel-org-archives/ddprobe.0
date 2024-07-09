Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBEA1FA3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720567583; cv=none; b=bqvqr4lGS7OeEZoH9CcRN6zLcvwAG7AOmlx3jaiQoO2AB4+anzZ60+r+dGF+gA1K3ZVbvxYULMKYmV87BU50um9IWAab+/gYwFhsaIgJBA0ImkEOBBRnJIB51U7M1ZGXGledcLutW2NcV08md6rSizF4XwPQ/lRXgHD3t7s1H24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720567583; c=relaxed/simple;
	bh=yqHwq4/rtwDo70V4xT1LUPvw5LGY01Gb8RA6J3E+etI=;
	h=To:Subject:From:Message-Id:Date; b=Mk9uLMxD/JnA4yXrrkLQdYKtFYRf2QguMjXm/3JvbJXuiJPo2wQtYXn+xx5pW18b9m/Ahp9KXCrgoH7lfrtgWHE4I06mjJ9MletngOxw/bpJvnGHMsmFd6L+od16Q9DNPJu1onKWqG/am+VS63HuLOHN6xCyX5n9OtUKU1y+GMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eY3ZXdiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY3ZXdiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8843C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720567582;
	bh=yqHwq4/rtwDo70V4xT1LUPvw5LGY01Gb8RA6J3E+etI=;
	h=To:Subject:From:Date:From;
	b=eY3ZXdiK014f6haHy1jev70z9KZJwwmsWgmKWwkaiiocCWnA0t9NYPo3OEoKp5XBT
	 ENc3AvSofJrVOR8SaBZlqHHnxCciH/BSAffIKCKotzHrR65M0V+SG30FmPVVPuIZEp
	 KKd+i8Sv/DvQ0OJLTuom3thibTd0YBYgEo9/2fFLq/uw/EEVCE5GP6GSe/P7qlCTLc
	 uE/VQu4zHT6D/T13jIiUgaF/+sAJYxgtltNhOYI6vccYCLhU0NwN7gZlz8wSy/gInT
	 CtBDM55R6HtTY03ECL7JVHWEyTHJ35za6d2sNgL9GRumH1UB7XHXbrYokpx+tmAYoL
	 7SdFCLS17rYeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3556C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056758276.2444.14009023001181951722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e8d0f8451047a02e50f1af3b11f5dcaaa7d2f5c3a6833535255646bcabd4ed
Date: Tue, 09 Jul 2024 23:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720567582
