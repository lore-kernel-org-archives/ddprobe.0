Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E01518E02A
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765038174; cv=none; b=jxZ8i79xtaToOzE28cv/++wToaXmjTvyZfm5+nj1RbYFKAvfNnviUL2c3IUP88kRN0SPYZEstmbQi9RH/VlPCXyPGIJ6WAiBGb2yETXk1YVtc1B7Mb5G+wBAcDdb9SureKlq67YMDyXVXKjsbMco2kUoYZz4UAqG4X5Noqj18CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765038174; c=relaxed/simple;
	bh=1Q8Udc6QGG+7mvEpU0Jn071DrgeQL1E6zAjK//328L0=;
	h=To:Subject:From:Message-Id:Date; b=qwI4H9xcsrj1GaEhNhRdRetEsE3lrl/qqymYzFotDkIG0w3bo+avdfXsk7BXvnMSlbg5IzyoAyxC3iJHWtW7OiiK2aLIuk2Ub8J2+iujNMMJKN4/QsxWqarujAbn7OPhL7cet0ZvPq9OObseKXcxNpwdog4HH3wyYkEcPOx4RjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM3tYJzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM3tYJzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94CEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765038173;
	bh=1Q8Udc6QGG+7mvEpU0Jn071DrgeQL1E6zAjK//328L0=;
	h=To:Subject:From:Date:From;
	b=IM3tYJzZwiRM1S/MbaHg+kBLd2iVOdXJFGLqXK0gW4btMC4MaseoOSWuLINg/D1Io
	 O84x9ShiTu9X7phCcAwyz5nUthOJRT/vqvylylkGR0zeSE5ux+MK5+y811XmqbTv2O
	 2stNF1P2InTzwQpKZiF26kq5oY1hU2sCzsPFvJRGPR/NGbI/KagoR8Pa7Su89ZnkhP
	 dsI0hzTB8QW87ObzMO7Dg5K+12QHbIZhuags3y2Z36TlUlCxHOxOJDZsvo/A7c5FAn
	 zuwdlYafIi17/LyAtEI7rnkheW8htqiYS6ocXimG2UIJPzqR7a5SADWw+IRq74D5Da
	 1CVFBObNuyX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E99D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503817358.26677.4399997244951364199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3dc4c5ef0cbce7e2bb874242d3f3068af5ff16eb9550b354cdd20475986afcc
Date: Sat, 06 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765038173
