Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA64DDAB
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720833563; cv=none; b=Tag0x2ZLI4NVaNaMfkiDabD3ova4tkOgHXeWAkYKq2gxaYyGeo4ysFjZDkckUX92xCIYclOnaR92y05DmQVzcc5YHFITlk89KrWVXDYHJdBi2kHISk8K5TEFNSCbGjp09JLwbwmYotBN51daARLJ7I4TWJAW0Gg2uCFwUgV6O6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720833563; c=relaxed/simple;
	bh=i3YFmUPhr7/X2l36ywIh5WFwRbEB1ChShi2UAUGuff8=;
	h=To:Subject:From:Message-Id:Date; b=Fnb8faAYIAh0+NaV/kUv85U9dSjBMLE0Y5kMi4Hmh6kcuhIgcI5ZMUkgbv3vTsGjlmRhB3qU5zYgHC7QklGZ0rmGgsTl8sl1eoOK3JC968d0jTB8Tluqi3OIwWgLQFiWIiuIFpXMC1uNletuC/SlzJr4MhAB4HHW2oZsgOBWi3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8lXxkKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8lXxkKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF1FC4AF07
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720833562;
	bh=i3YFmUPhr7/X2l36ywIh5WFwRbEB1ChShi2UAUGuff8=;
	h=To:Subject:From:Date:From;
	b=h8lXxkKolku3AOcs4sQQyD7TJIxo0le1EN/TddQJw82JxTTgEC03ydXigVbwElfB4
	 M3Rjwns+GhMScxIgCDcwG1UJ4AlyreHuB+ieqGE/4egRgRAGC8NT3Fm209Bqcw4A25
	 lMCrntWBQV5HPIjeSzhnJSEhLN1OK0cvjbe2rdyzlNU7v5lpF9gx6gTDWlfRZKdYD5
	 whMjYwOunUmKacKRzKMmjYa9m3pmCwvWu/PlZ4kBfR/vaCnqOJfWEw99i9hcLoC0YJ
	 ZoyiAGkIzm1IbOCKxIhoPC+BpkNi3wf0CZNCBpuoLrtUGUBLh/taBDiess2/jl/Lwn
	 yAYCI3T/B1qfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8BFC3DA4B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083356276.4673.15461073851288475692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42f34747bf87b65a477afe6c0990bd561ff679ea7a9e700f4b7d023a62f7f1f
Date: Sat, 13 Jul 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720833562
