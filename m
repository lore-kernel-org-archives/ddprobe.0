Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4721827AC4D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788103834; cv=none; b=i1/Km5C/8l8detlD+NFlZj37cKwsmsU7v3AWGTNPPbOsi0RWDUBuK4Wd3QUuup8+d4SRceac0fizTd3dhO04ucn7jRZAYpExVy9Db7ZcJ4iu+oam9QRIZyQBHJp/NsTCT3GzJwhwDXHVdifXWXyO5WtztiO4r08UdDQVJddwyGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788103834; c=relaxed/simple;
	bh=1JIBltzIEtqxa4xTwYwQMd/2uT6zHIsIPiU7wX5MLZA=;
	h=To:Subject:From:Message-Id:Date; b=AjNhb4WzYW6QAkc4N8fcjqMTM5F+GFJXaCKkRaUTX9LJy7qlWqm6VHJWWsj+yPkTTLU+S/T1KrBKWPiA+G4M9fgkFEuU5KgJAK5ei98oMQ1ms/xSq6GdAw8N8cZEUQQcD8YQwKbskzgAIy7KMxXNDwS/Rp/i8y/LegU+XbjM9MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVfm5GcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVfm5GcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF04DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788103833;
	bh=1JIBltzIEtqxa4xTwYwQMd/2uT6zHIsIPiU7wX5MLZA=;
	h=To:Subject:From:Date:From;
	b=IVfm5GcBl1MlosMScWRUs4V8ljcnHtoVHFbq0sNzhwURFwzI1B+dQ4gzox0sqniy1
	 oel5le7Uedt7QqRoLsSyhs3X/FFegCBPyo0+/CaGdcUEDfj2ol6vvHnixROLu5131Q
	 R/CBb1k5r5kNGvzB44LlA9nga8xbZwYrNtl9ZU6RJiE28CwWnbBVVrftqfDDq0F3Hj
	 jBGSq6jsVGKtQHHOCkB75m3jiJECuNpj0GWjg1njMiQOQZIetrveARPGE09jxD5aUD
	 UY0Ovq8bF1zRVsfBUDLsRMq5u/06NC2rm3fL+wiINKHSvoOD2jEIaTU/rjhSSHcIb1
	 HSqfWdW1sumrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D62C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810383368.13486.9958552916063253353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290955f90e7ec6e837caf5a385df47b7843cd71f9eb7d7b1fffe1ed55eb135e9
Date: Sun, 30 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788103833
