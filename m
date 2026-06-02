Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381B43AB272
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780384474; cv=none; b=j2O1pEfkUTFkzTWqRA6HzukaTuNJ46Z2KWHEhzdqULq7SmoMw9TzPPxZsmumSooh9qCEvM1fb5vUNCHAXhM0IOsY+45ydooRkOaRy/vB/mGZUx7ZkWorgqZmPyrP0zXBTvulL3AqsF6mGXQZM/Gy++tJ6QS8t6SpI+oop6TIFHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780384474; c=relaxed/simple;
	bh=qz336VeN1l82Kowiak6Wi3SY2miViNcrVTqJGTWbk84=;
	h=To:Subject:From:Message-Id:Date; b=U9Q74OjBObJWUqi3oLFn3mBPZ+7zbaQ6hwEhYfs74uYQsmFNYzCjlaWL+wUQnm65mKWgpqFNfXxYdJynl34WrIrIvC4pun+JO0fgGrWEG0eIVVArgqRgk9MYkNTZPAc4/IJxly6ua3hfxTss88/IjkR8rkFr1ZYr6t64p019LqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mz46XDDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mz46XDDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6478C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780384473;
	bh=qz336VeN1l82Kowiak6Wi3SY2miViNcrVTqJGTWbk84=;
	h=To:Subject:From:Date:From;
	b=Mz46XDDUx4hK4/GadWgvX7j9dT7q0rGPnTYGY6y6Ilh80h2pQ5CYX8BOEvPbcxVjm
	 5TJvyDcHd5m4rHUF6yS1kWaWH+0xsu/nObUDP1K1Ib2JCaCImEByT3t3VMEfzLhbha
	 sJ3E7e/jK7+wqyR6fB/QZ80RnAV8KDyDY9cGyvnV6xp45CLuQf5Vj3virBYouNloWL
	 iGSq6pVAF7DDevduvet10pjQeuuc0fFOYVhYh6A5dltRhhZKRB4/lgh72PZHmdYWwl
	 8ieizn+G+xs3x3scmE5Xfc2kho3LUnMVkb6MrlAGbNwy6PFsPASz5i3ICQFuypKLQZ
	 s6u8xhifsYamw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8306CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038447368.25689.9205803713116590719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b1003a4787f3bc28fc95c7a4e523b5cde5369a75f6f4bc6beebec875213685
Date: Tue, 02 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780384473
