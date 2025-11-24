Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F41F32D42F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764015174; cv=none; b=Kbfil8iBno5kRL7nTJZmetJTHge6yVYgLTfaVX1rukFWyS9FMSQ3sZd7cUZvbOhe9lheRRAGwzS1uDzpvULOTOU5uLAqi6iAzSbwpde9XdcECFRSNzPnXw73ciVJwnxfidmG/eJ8+njEgiJiRjS84uE8fFfR2z2zdkBORKpy1CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764015174; c=relaxed/simple;
	bh=uSTLslUGJEKLcxntipEoz51BZCGlwxsh0slKUvBAFAw=;
	h=To:Subject:From:Message-Id:Date; b=nV857oUsc3bNptUue9UPHNePhnFUodIzF333uQtIdttPtsOVShd9VNVvTnyZ1OgHvI42MB3kfLxo4MsliL3A2X+egz1oIDND0QgBJZsgel6Y9Qc3+f4UokcjL/vxWaXutkuEsA7LOcVecM/Cy6XaMjwqiC3UcklKPehwSmw7yjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baYnT0RK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baYnT0RK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF30DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764015173;
	bh=uSTLslUGJEKLcxntipEoz51BZCGlwxsh0slKUvBAFAw=;
	h=To:Subject:From:Date:From;
	b=baYnT0RKoqIicCqGCNLgGzioQDTGQf3VeMt3K1bSnlCZoP2GMzxlCCSM5lPDZGBWh
	 QCjp2oBA2mr4jV2//QD6VaS5rIJtgd31E6MZrS0aJtClO9rMyOFUL6nVSSw05Hk3u+
	 dFEVfYKguPTkohzOvPZK7fOy//QBGhezibwEjBgQZSSTwNrnkUCjISg9j1MbcoIIIs
	 5L8VXL/2LcRxAKGK0GIw+1zXJBNWo/SndkNIMzoAcx7N4gvluOvonF1ts/w3mNMxJM
	 gFXa5EyYLoq7Z05ml5yfnqvK758QkqQaHDVJO4wSD4VEYKzT8If75g01EigYl1yRMr
	 5s1yN9BmAlBww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C09ECFD356
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401517358.5128.10518193446053107030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217bbf91ffbc6ba06654440648594650fe412b2a56ef621a6b0db7a87cf9d6b7
Date: Mon, 24 Nov 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764015173
