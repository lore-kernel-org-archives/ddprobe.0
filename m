Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2339F1CD2C
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766241234; cv=none; b=toK3lP1395eDmWVt1F5H5hOvXkiEKrSAPKxyEh8/pfD07Ar1g15Td1ZP/74eUDTPGcB7THwV9DNsy8+h9Nz1NX2BEsC+1/WbTHMivSj7qWQ54g4ipmFXQfX/yb/ttHJhchEjsufNfNPwDueF4yfTRR5vRUMyzFuhggnSe0YfQtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766241234; c=relaxed/simple;
	bh=GrOQZxiWvPD3pmQlURs37ZXNEnmtosXPgVh3xMuhqYo=;
	h=To:Subject:From:Message-Id:Date; b=FX8XC2X4oEUhIXQVjfS66rm2a9x+WQ622W70hyYHjO1UXTOMwXahHpp/hV/6QCG/CeQKYJgBIeTBJQ0ah3QrvtEGSJwVvi6QD8TUTsDx+8wQUmBrqLjRwd5aAsVGHsaygDP5SbqBeBJWdupf8o/6NtrSqRTIPBbUN3lraoYI65U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gD0Jjhx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gD0Jjhx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5894C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766241233;
	bh=GrOQZxiWvPD3pmQlURs37ZXNEnmtosXPgVh3xMuhqYo=;
	h=To:Subject:From:Date:From;
	b=gD0Jjhx0FvSRkXEffhIYEu84akI7WsIVQDzbRjd9/4/YoNgZ+xmDY5EbQpwBXCkl5
	 BCcBqMkSLzn7AY4BadRlIzuvB7hTdina4q6vVEWQtxJXE0F36R2+lDVq6hbpFJlgqJ
	 qpD3Bt8NZtE/fl1ynYM5Fiw+BXmpHOGv8FtiZkw5quSChyFN2jkdw7TVjSblhNThai
	 x2GaAKeWXu1MMhCY+B69H9PpFLXaZV2wImYmGzi/gIrdgPl8oWMc3QXLVgvi5DqRaM
	 QQpzVVA1ZV9Dl/mE/EXzw70XiyAaAwxJhkADG5vU6eCy4jpKJzk0/59/Z71bFjrXh3
	 Vu2UHraINEUpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96236D78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624123358.27996.6293751710896225326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badb45374d89982d7a130141c20401da703d1e0fa3ef6db79c07d8788d6d3dbc
Date: Sat, 20 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766241233
