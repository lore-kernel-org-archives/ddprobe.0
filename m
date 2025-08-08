Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA3ACA52
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754613594; cv=none; b=REHPi3lVMH4bKQXAZg41p2/nO7qfQEDs09sU+FlGCWcRs8U/jcdEbeYga5ztH8tpnD+4hTgPK9oXeDkfRzLq0T30LPEu1J2liWt7v6PEwET6S2S5wO7rlm31F44sGiltdXQ/BNaJVFL7tEPWRjpkOC2K9gpqBk6RIIwCoeTZflA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754613594; c=relaxed/simple;
	bh=kx/INJYBpZN3HjXjYjbkdB6RYl5XSjICqueE5+C00Vo=;
	h=To:Subject:From:Message-Id:Date; b=iL0TJrwF/QeYl+tB37c3yeAljSzpN88h2tpXn9yQayPjyKh4cT5NMPylV9yXIjqQ+JCKeXnISdmGzpv+Qz2KjxEDLdYFCYAoGCYTP+XtOSZpyhyf4Q9Bti9OiLpW2kab77hvXj5y0YYIDB52QH6Ihk7V2INNbVcMoQW2LAGOaFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE/YnLNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE/YnLNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754613593;
	bh=kx/INJYBpZN3HjXjYjbkdB6RYl5XSjICqueE5+C00Vo=;
	h=To:Subject:From:Date:From;
	b=uE/YnLNRMZaDl+x8MwabA+GQ/mGp6IfLBGL8l73qHt3fRHyW54JGWTW6X0mvUAuoN
	 zpeYMUnGbISpi/Sxad88wfcQ9iApp9q9o5nczMKa7toQl8cJBKbxnqiyp4+lksFqx1
	 8Gh9nK5bFkXNwazvLheCHaq0sDHyJdXyBGDkkQczeTp1eo2dxVYwcjnZxR4w9M8ZBn
	 krAg4mDoq/ZPuosNu/PKb8f1kJ3AJR04lV7kaGzU3g86X5G6Yp8G/Ys95ldx6M/v8o
	 t53znZ9i44M0JKnmGJckYqWT46W8W9Dq0CwpLR6VlscGD4utRAR2AOIrGXy86LdJVQ
	 /VUdrR1LOy5Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C16C87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461359357.4719.15803871715331028888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5c1dabcf5bc61f925932773c13256f8b8d58f75240655f1f44d5651d97db43
Date: Fri, 08 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754613593
