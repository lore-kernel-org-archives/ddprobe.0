Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E35C7260F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775619334; cv=none; b=SR1k0dqsSOXC8MkyyjsBR9tYbue8yG7b6efrn994y1gYKxAfAwuaLhDFlcYAi4pYei+TezL9krSJiWybe6VYBSR5C5Aof1iwhx9/JTbFkNKrpDos95522BXVUWmXxJa9IouTiWxUSQ3+kZ5i4wITw5klbRwR+G/kBOSRSgUfEpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775619334; c=relaxed/simple;
	bh=i/qq9ar0jWA5cQ8utYjV4dc9KXv+V11OF/vP7kgsClw=;
	h=To:Subject:From:Message-Id:Date; b=Cj3gPEdCZtvHqXV6psy5pVJ0Zt7wyR56E3RLAmk4eNJzNkXyFNyea+9eHCDjkYh6bDWYhbjb7glYgxQpYxvlaIgWOCHL9erVTRG4aqkP0rYxxh+24b0hfYxC64h/b+Tw6LVS+KZ2pnPMJVXlMwqPnK/W8R3LJdtba643LrFWjz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/KO3mmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/KO3mmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E52CC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775619334;
	bh=i/qq9ar0jWA5cQ8utYjV4dc9KXv+V11OF/vP7kgsClw=;
	h=To:Subject:From:Date:From;
	b=V/KO3mmS67dCvPCxv646/qw2tR6HseKofTRUWew2qYCGTZFlcLc1xBDgOlPbqktFJ
	 qE+f52LnECDEjQp/zw2+To6UPOosT4pNhILEkIMB4pVC7FJS4PgZth7ni7ndXEJNMA
	 roKngxsAjaKesvmtQaev3SNHdfj+Le2mDs26/fQfJz7yugNMdb6LftU/CZF+OIkMNC
	 uq5mr7n+E0JMwd1SEJ19tKCSxXtFYyZlLfbgEzEPmdEBwZYcGbG440DDLkbirj4kQ9
	 Lx3fHGHIFJ4L6A/fqxPzCOxqRWCaNugKddrfPLo6NppQXUMD2zrO0ay0/AtG7N2fe8
	 RZu0C1OryJVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCAB105D9A7
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561933384.14700.1346794164805374252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5e79227ec3a7b7d92f794b17a53efcd79b4c6faa7fb3be37fb14b026305830
Date: Wed, 08 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775619333
