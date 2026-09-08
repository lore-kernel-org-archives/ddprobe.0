Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C079B34388E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788839434; cv=none; b=El0DQHzK/7m5EhrZLR0a9w7VyYIiaXBBjirKHlWAgI5h6go/LsDp1f/8FbC7/xIqcIsKOm1nvVxl4o4Zg6yMn0KAwxOr8LCcRKnpFiMTFaqz/LpCRvRAsOGh5ohmsQJKkHNKTt5RtqbEzYAtbzI9b9xMEgCGx6TlSuUqyl3AUbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788839434; c=relaxed/simple;
	bh=pNv4dTRtgi5fZEpNdww0UaVY78i2dRNNy7nlyX1iK34=;
	h=To:Subject:From:Message-Id:Date; b=VNyuW+uBz7Y9+cVNQfrScI4xMTKyZC7stwHvIeqhZB1Sv3wScIHfhbyyeIEp37LFDfpa+GqxsOIe681HEu/fYQnv7GFlGbIzCabH56Op/pgYzFg0BfbMByJOxI8f+wUdtNhqd8WIAtwpNvkTNWbuC+JVWMaeqtUDlZ1VF6CKMT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzQWC0JI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzQWC0JI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE383C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788839433;
	bh=pNv4dTRtgi5fZEpNdww0UaVY78i2dRNNy7nlyX1iK34=;
	h=To:Subject:From:Date:From;
	b=RzQWC0JIdnQ+OiD3yUDOjCFtYW2TXQID/YWA8qidpbqXn4mAQH1//gThCwG/1MbYn
	 rpHKMcJNYMfk93fRjOgcijvi9DjmHXpEeJjv0KEK7rKhxj6Gs6Rd86MoRUrzQcINuO
	 bwoqOD89t6YqLVrltys20NL5BwFmzIcJvKO5u+lFsOn85QqOgaSqAR1Vf19Op53x7X
	 sUar71YUdykeDvT/AzXInok9V0trvZEYy9K+sX8pLfpiKZXUHsKvUkUwj76Kzf55W2
	 NplpJgpaNUhsPrJEPUrdRdwI79f46I6zkj0gCIb9+ZbN5f/D+ftPIvmtyBmt7upmPT
	 01AOUsq+KpKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA39C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883943369.13130.15850422043049604679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e379cff7633eb316b5dee29f158162a82ce91cab948d098b8da60e91232afec
Date: Tue, 08 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788839433
