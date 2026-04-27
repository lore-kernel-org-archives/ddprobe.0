Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDA62773E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777271254; cv=none; b=M/zeixZ2QOhFCUqTptkGhkm8C5vP5aJ3+RLM7EiNljqsXwJ0UYKOEAw1tpRCXOd9cxr+PQRo6O1mfcQ0lwrt35ZmgkbKED2Q0qF0U5Tm4DHO1Xm6QV7BmgeW99cgFDDnFGCgwruMpleYgwrRh3HhPr5ewkyiku5SA9+oUTzjUC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777271254; c=relaxed/simple;
	bh=bI6pLPEgJo699l1LSoPuIZUIEeHe3TdzcZwJBN+GJZw=;
	h=To:Subject:From:Message-Id:Date; b=Ya1NqITzhvUdUj9ILsA1emoD4h7N7Y9V2ZZy5KbJsWOOhXBjp3SjgZnRA1tdfO3SNPJGcTWV5ECQ4gH94UuN7hSiReNpRN6m3wYjS3lOw6wNi6XL/4frc1OZb4V55s4imgyu1PtGUcPJd9L+JslxvUVHmD1cDbA0yHh7aGWRMsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azpn6147; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azpn6147"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99B5C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777271253;
	bh=bI6pLPEgJo699l1LSoPuIZUIEeHe3TdzcZwJBN+GJZw=;
	h=To:Subject:From:Date:From;
	b=azpn6147q6dOBcoWmpYwxe2+0oGUv5DCQVLZAzrgQWxNol25cHH42ODonncTZG+JO
	 I+VWZ7MJwPA2FKQS6FvxawHvDLujUgabxqLN8KNBmWJOwpB75hhoIJiSmIcK9NjAEO
	 6LHsR4YtI54Ac0m2g3ENk+ICWJRdPIuwIgWnhC7yh0vM84uCvkeWv0lQBuT9KHC5sF
	 sPdIIACWCGVmLyhcSXMkaGdaZdQgFsRgaC1DT4/sjZL9xkMsuMS/MArQr8lmr8ZTuo
	 fbBk31zPVlSNyA99djoe2Y9oV0nkshHdLfqqVuFnBloPWF2PE/tMAOxliEFiCscIW8
	 AqkbGFli4rabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B509AFF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727125373.20900.6927352969876602359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391d047dda28cbe2c34d16198952af5c5737d81d787dcf726b5f1396141de35c
Date: Mon, 27 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777271253
