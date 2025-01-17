Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3562D1A2391
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737147354; cv=none; b=uIWADg58GkhzCDX2aSqfmniv3QpvD0Baoyx16748NgaaAx2X2FUvGilQZIq9/CecIvkGKs6G7qI8TNIZiwyYFJqBqS2JQviE+2P6TA9tWXP0Pa+6vFDNEfNIRgoqO1HBQ9tSUXB/HfANGCOcIHBUl6VUVjGvbVe//7VvuhkKN8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737147354; c=relaxed/simple;
	bh=tBJfW1k9yA0PqG+0QNA4AT+kx9eJ15Pay55ku/RgrYA=;
	h=To:Subject:From:Message-Id:Date; b=tbUZukKFhvevxEtaYFLYX0CoCxQEObiaZ7zZXkLlPg9+GbyUGfGHRFcZ0H3+9USrwkJ540BcI1A9GH+eIqpYohZzSL+Q8Ko7Us6h2TVk6WqINI5KZvU1tQJz+84ugpdjv+ZZo2RgmsKLHHSnvum2swMO5W3u/mg7rLdemkt7J1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYjXAN49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYjXAN49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD60CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737147353;
	bh=tBJfW1k9yA0PqG+0QNA4AT+kx9eJ15Pay55ku/RgrYA=;
	h=To:Subject:From:Date:From;
	b=fYjXAN49rgvvAOwCk/8OtEFu8PUgMMV5Pbyi57rj8lQx6TDXsMCpQkKRJzRLanGXx
	 mZTD484jMpN6OOlHlcvcQKtzHOg40UP7GVmiQwDpykpsn5VsATTqBS2S5AB9eRrCHg
	 OxrEB00jdqu/TTOpthduZbDaH2nwrmgIGhrAgRg1i1w62crmuq86qZfPBdcZtSS6b+
	 2nHj5s0Lbhoe0xWUVf6vZ0B9Vrc5CqUjlW3unZro2plb+AAYoTpCUdZdSTmsVZx0k0
	 uRPlaqLotaSXj9ISpbJc0icjwnR/U/gi66uKuRbsj3B9VpeKbCBbpXu21cI5ZVVBTY
	 1aYk9RlgVNlew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F987C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714735362.31944.14866600029614775646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9974001892a12a0d5a233ec2fe991719ba616e7afca5dd91affcaf81114a2e3
Date: Fri, 17 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737147353
