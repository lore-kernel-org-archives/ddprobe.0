Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C263AE19B
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785845434; cv=none; b=NYkjzkIXY1es+sh+PLIAORetgfFG6mnONbsTjcjvZ2ODODusIuPCJ3r/qkgtiTc/AS5k4SckdchqQ3CBs12IjgaHPiQguoajFL9PfWbt3SU0E1QdpVouiLtV8OXUh2HbefWNNgjgjHqblAuwOjWOuP3Si0k2DizmIhtvqTjUPJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785845434; c=relaxed/simple;
	bh=xUfewoiwsn0MTS/EVFpjGBGyNlguvfHwEw8dia+cbuU=;
	h=To:Subject:From:Message-Id:Date; b=lFZbQ+HjT86C/E//gufzB8Z3+y9GZex7kBaPDyEGcav2VzfdTggHxEMhLPJgrOVhP76wAQYmDYrma2wB9lgObchiMu9IHAc1PYk4YluT9eyUCwDH6SCQoRPJ0Eqq0pcn5lepKPSzMI6UwgHZDSbZ65C6+byDYdksXP9sv5JoJrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc+80a6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc+80a6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7556C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785845433;
	bh=xUfewoiwsn0MTS/EVFpjGBGyNlguvfHwEw8dia+cbuU=;
	h=To:Subject:From:Date:From;
	b=lc+80a6UVAGUIBEBSX7L7swP8o3yOrBvTnEpxPfoLHq9Op8Cyy8K87J1ihQU2OCbA
	 jcPwy5tXbth7BKhvaV6Ab0PWbrb5b5hoDmKITHifnV6sGt3TqvvRfSrqra91PM0OHp
	 kj7z2UpslnNCVYovsamcMHh2jgniGY+Fk+bH3SmC28YKUZ+mdtsbHlKmYVyj6uIXwU
	 8NIfWH9whkAKdhhSJz3bJ1xtKrnAf/F4CA9QbRNNPlqX9SEgMapubGClTxUiiuKHAJ
	 5hAJCNeZfZfyV3LOn/9Ir4qYywlz5a669pVBhif5xqHs0qQDBPG+OBEWXMX3B6VqLh
	 yYnx8ZbP74JIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEC7C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584543369.474.3022335277627973772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3145c377b636d8136f367e587a66116c4f5c0d77c5a39a0a28f0199679e8252b
Date: Tue, 04 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785845433
