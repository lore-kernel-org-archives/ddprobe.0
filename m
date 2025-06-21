Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AB3213E78
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750512594; cv=none; b=ix6bm6exOcjqT6tz+9IKHzE+5gEr1QaLxHc+8fyuPj+KhK1PKzeb++3RTwaGZqUUDuppKAQkAdRr2zCrP7EULOTcXMLwcLasBEAuzTnIypxJ4/Nv3chm3rszXocaRStcHDktqLKg5zMdWNfKbcwBFRk5FQDIGEWYqABz1SINlzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750512594; c=relaxed/simple;
	bh=wwJw5XX9N/bIjIZkZFWlcrUT9k2RanuWU37HoQPfYAc=;
	h=To:Subject:From:Message-Id:Date; b=WKKOqwkrln/ISfuxkKmX+VBQ7KEe44J8mUG3FZ9JsdKI/7YVydPZp7wNLhYFiOkoJIzQJeYNjPahPtKMQUCoHcWQUFMmVz7b/kAtMpGrILNG6TpX+krQ6JttN3KbADKUb6MtVT51tcnSBenPKZVfhqRuV8JiqaJU5mqG2Rm5oUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIaMWrU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIaMWrU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F258C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750512593;
	bh=wwJw5XX9N/bIjIZkZFWlcrUT9k2RanuWU37HoQPfYAc=;
	h=To:Subject:From:Date:From;
	b=jIaMWrU/v42twKlRz61xXRE8kC3hyLt6nbO76+R+8GNnDma/U1IMXjqvzqXSLZ+Uq
	 P70ApSHZj9cjF/2SMpvSxg4XtVpqe0y4fVbbuOWe/BbrQAW8UdrNWCiqoeBEePIzn9
	 pR8CI0KXpYDFrc+vwB8gTU5figtgmudlmGuilyzn7TDd4j5oBFBuBse2jNt+7L8L4V
	 je9RZCXNpqyNt3iMBL4pNaG1BWyKVdjZo46QbxlDZ6veahxbQmMh2im5np6CArJvS/
	 Tc2G0wNjUhbRSGSvNicy+oVxd07WfthiDvihqZ1sPKm9sSClkKVgmJNc7a1P6evQTt
	 A01RFnrtfC09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12EC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051259357.1059.1499669090521648888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07971625422c2cfdedb5e6091db6fdebc57f98d826b855eb0fcb5af8d321b688
Date: Sat, 21 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750512593
