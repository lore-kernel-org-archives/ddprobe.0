Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4669927702
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749179994; cv=none; b=ILaaLu4+G2WEoHrIdqv/3wbSxcvkzHH7+R9IHFYBCBR4vBg1O/O4EMV2llOCDWxy60J8wZxicAye/q4RefD9QtqdEaCXsqjposzqkpxKoB7PqE7chUleoRPwoKyJXa99NaEv7v0dZRwVgA2Rrc3OMeIIGgTO5Ph4T2iSojsekDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749179994; c=relaxed/simple;
	bh=uLCAtzjrEeiNuvi9cvit0DEVD7d200ju5E9X6fkwvsI=;
	h=To:Subject:From:Message-Id:Date; b=hj02JY+V0RivX3LaVuC9TjW9W0VTynTQe2fhVk/L4zEwQj4JY3zx3h6UBDdb35YqI6iH3xLUXqmSjD3Bxq0Y5wGA1J1R6EZIU+HpCg6kRVTJAFKH/7zvkFDdyBWJ2gQcsvjRX93yU4DyBY2RV2H27dB3zSNwOeIOoGgD3HwSqqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tz4ALM7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tz4ALM7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1AC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749179993;
	bh=uLCAtzjrEeiNuvi9cvit0DEVD7d200ju5E9X6fkwvsI=;
	h=To:Subject:From:Date:From;
	b=tz4ALM7LN2Edpk2fgJPpb0PzKkvrQRBmG0jYNW/TRGeezDVHkQg412iL31eC/ohtq
	 BpTP9mBZzyjjWF83X4qPf5VDZDYFim6crF9Gp6wEeTSbDpeQrKTmihsqOSHAWYRT1g
	 S9V/CH/TOlsJlr1xYndDJQlrWXKc/c+/zs6WYWrhUE9ByO9iQ3mAt6Uv/+J+A5Z/9h
	 0nQUeGsGIFY7P033MmxEYZeI7A4TMKGqkTGdjko69mCp+BS3hyEjNAooabZ2aQMcSY
	 4qUH21dslBS8X8ERQTeti0VQ/e9dBEaAwoYp6kIdhM0sW1FZP+nY5tyAIoDVfaa6a+
	 LnaCVFYW8Cugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE8C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917999358.8788.12932797556617614497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20eb5ce342be6df6d5e4ab326624dc33faa29c3caec0a161b85195171ad69c27
Date: Fri, 06 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749179993
