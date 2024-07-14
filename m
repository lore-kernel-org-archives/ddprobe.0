Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6662A139CFF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720984223; cv=none; b=f2k/bCqfOVPqIJsRl8N4uyYutEBgi1bZRsKlugOFJf7e8FVj0yGMYmYwNkMkrlPqTd4lT2OQP3yDw8tPsU5u/LgroWKXzQGC5IiMGNt21FOCp/EHjxeESZsZnqqjU77fapq0gQiBUDawljUOh9uSm+B+A6lOM4VqERFjrWzmo6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720984223; c=relaxed/simple;
	bh=E888JTYqHHP18L5FEWhrAkflhQXfNaaexe+jg5Izp1o=;
	h=To:Subject:From:Message-Id:Date; b=UrymFPxi6w/+SJqwijoivV/yu2AkghMLcEUJFYsUxnmopKG3k8VHAFimXYnjuOT7m+qEM5ik1jxwpsKMC9WzHcMX3U7b3+5Q0n3XDYX3xjZ5z4UA/HdVR2XfZ0JXRA/3g4gVwpeeUlhuXqo65q+qX8EHFUyhhj95M8MBkH7P5l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIq+fggn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIq+fggn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D745BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720984222;
	bh=E888JTYqHHP18L5FEWhrAkflhQXfNaaexe+jg5Izp1o=;
	h=To:Subject:From:Date:From;
	b=iIq+fggncrnpCHx3VmkccPublXIBm/k9miTFU+KXOR7Uny00iajQtf1y/as0oqEWH
	 kVhVUKHwvgwKB6yulfBU4I9ChXpwl7QNeXAbxeCwkE9FrKt4aQ02FmQuEKbMzQRF0R
	 Lm/6zSzzH4MkPZ6K8edj4MJeyzRyp7P5YnNaqG4WhiGsxNvfxDgZGqqhGYNTwv8VLL
	 A3j4MO8UmGJnG7rVSUe+xO7vxr1exQ2/KaZ7A7KWtCApAonJVFk/6VhUXDbHH1yXIA
	 Vovthup5YSabd380ECMG+0Z00VhFCxOWKo+iarDBpmJ49WUGUfxmNYjH9Rv3foifS4
	 3s6hm0ewdbySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAC0C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098422276.5814.3198593180033485942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f01032e0f7f158af93f9daa31c33aa6e796de866d16c7aaa46fb6f22bd1f28
Date: Sun, 14 Jul 2024 19:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720984222
