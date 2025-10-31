Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDADEEBA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761893394; cv=none; b=nIuy4naK6wPCJuxv2iQHx5QFQxMSgtWsXYFh4K4VJB50uQIA+geGyABz3Ms652aOSsbfujCMHig8qkMMJO4C8kpC1LY/JaAR90P9IwQLlfvfysf/obAP16iUepX5ydtQE3ifF9aupaMvByVFAYPbXbXseLpbJFe4I5SftY+V3SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761893394; c=relaxed/simple;
	bh=JF+ZztgP8Dq5y/cKa+p2t7sOgg0DmWAinREdjGGjam8=;
	h=To:Subject:From:Message-Id:Date; b=DSTtkLOdaKlZrZaeI/+HS1aO+qdcqvu/mIP6O9vyyD40spBhPgKQ+yNkRAJ7zr0kCIiBRgMg+DExJV6Mq/IHQK5vJmvHJY9Ok6JGzB4OoWg8mp77AqRkoMkaMFRC27vhs02ZRU+ONqY3Rp54dDzb9daFcqP033CMezhmkr+g4dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3Nw73Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3Nw73Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E912C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761893393;
	bh=JF+ZztgP8Dq5y/cKa+p2t7sOgg0DmWAinREdjGGjam8=;
	h=To:Subject:From:Date:From;
	b=E3Nw73Qmqjy2zfDx9riJU92NnVBEGTIZCHRHjUQJClyaBFCj9f+MIEOgDCinA8fV8
	 ApzAasGFAxJu5ZkXjphEs882AN96FYmm38P3uMVhD8w8DXpFHga1GzPM5gA/KJyKkI
	 xeVVBs0CKMxxXeBeCDuDDKQrRQRCy9ab7VruayIOgqdhd+WcwcwLbDK5O8qqnJLGx9
	 jRhakh8kPBEBI1/rg9OjhwMfgOKSduZyc95Fvp8n3vf7aRL9JuQFwSeCErRX/A3ZFu
	 l3Ji7wkq6oVFD2sgZ7Qkj0IzZQ9VzzcASlg0iEL79KqdqcNdpSdsPfpTUDM3in9oKV
	 0TQD+PYBYa84A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90459CCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189339358.5417.12915567294853129630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b584885d68ae66353d1691edfe37d1d9f6dc6f10e80f49c65fe50450c223e5
Date: Fri, 31 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761893393
