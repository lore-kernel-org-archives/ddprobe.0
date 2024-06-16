Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED6019BA6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718555903; cv=none; b=NSaigXvd2XwLbMqLJu9dtFdS5HNtvC6A0/d07kStXQsI4tnJFHHWUcKSvqIsGyQY1/kd39kbEap3CKMpwgNiQM2bT04o1v2HTeeieaF4h3JTs3zk26EX8eocuhQqMErk0p3tA+5Op8ANmFVI1LS2bTfIjmJN71MKhx+JoQ/1pt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718555903; c=relaxed/simple;
	bh=pACymhyjJKJ2QRwxqtSftQVG6PmynQTOjGNacnfp4Ug=;
	h=To:Subject:From:Message-Id:Date; b=F5E1cZfDj90vCtVceGcL4pZnYuLPdHzLaJ9uU713+1olPizCZtGXySEpcSLvEKbVd8ArzGdZJQwj+tExUZD0Npy9Ym5LmreGNqDnEKyWeo7zYrNMTTL4tdLjmI4qIvnstG8YmIRdlyw/OI5xIAPbJhHqNGQPrGnuycTKOEGU0SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4tXDhQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4tXDhQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C93C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718555902;
	bh=pACymhyjJKJ2QRwxqtSftQVG6PmynQTOjGNacnfp4Ug=;
	h=To:Subject:From:Date:From;
	b=G4tXDhQLsqv11BY7P/S/i6R7sPZlsb//6dCT7M/HGxdZbX+OG3CKQXaubv74gE9Uy
	 y7k6HAfg5sq436rxTC90mXOIQmeaKvy9TZFm7RRnGi9e7UfK+I3KGueB4fSErGM9dr
	 NUNzXyBXN3bPaGUqM8LfdntSGI9v8e+PJK14kllyDSLR4aqmj8Mv1rsR43T+fE7y99
	 3zsUwmXzD5nS/OUW/Oi3l3QSBe4FPFIE9sTZQTDK3gi8m22980KmqHfWb1Wi9lhGHN
	 CzLzF7s25bI6lEQvjTH3N7i0mJhS+8NynGP/tYaPYDHyuvdeqbZeYJ37Xj1BdRvjEM
	 uXuoypYlYfUug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB84C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855590280.29402.2661334892624246961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc8678c39dc6518d23e5f8641a940bae5f677b9e603a0f0a31caf9168d457db
Date: Sun, 16 Jun 2024 16:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718555902
