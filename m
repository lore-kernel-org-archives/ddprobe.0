Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D382E267D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760360995; cv=none; b=Dc/jH6+79jtrTnbRKu28eAqNnnFLbcZTXne6HBI0PKabq4XST4Wgo4+6kCoI+zn1nfBGoZpVZmBHv2iktWWccsC++UF9RhfChwoErEk8RyVLIbURdgaCH8tLoS/61IKVQK2nUDN74tWpWL8OeGwbtFHdGfkJmzYS3yggOj6YJak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760360995; c=relaxed/simple;
	bh=x63U1jHF06/qsBMBgttxxBSANys3ahrvMaYmsLbHODE=;
	h=To:Subject:From:Message-Id:Date; b=SPaGYLiW/Lw9t/hs19PK7DM46IyProSzHEtjd8FsRg5tVjHNGcBsBv5rz0+6R/UIWHkiv57g3Qq42pzUvwwcyN4KEyOLQU1IqsTI3JkjpTivBAgJXlBRtxheBK6B5c5rjx073Y1X5CWzYWJDSRjhmnHsEc0a7e0X4Cl6Uszx55I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mf7QtiKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mf7QtiKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6BFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760360993;
	bh=x63U1jHF06/qsBMBgttxxBSANys3ahrvMaYmsLbHODE=;
	h=To:Subject:From:Date:From;
	b=Mf7QtiKk80KLEmLmeGGFkR2bXrYqrjgO5Q2dqCHOs3liXn89mfIwvQzqQEx8WP28C
	 47HRh8O26245yNjIsE1gIyp3neVC6U06gFp8tU94kmNaO00hwJWbFCStw0xEFMTRrF
	 4hYvoTbKci4qWqAJNzYNQxQK6d497EdZ8uSVONTdcWpiLr33p2ya8yNRJJl/9aebxI
	 f9AakMY7RrXccN9uBbYuR3RYWe00hpXrqGGzT7/P9Hl9V/uJIFCyIhOd5QcblCjMzj
	 KELHLVyrRd6CqDYUPVI5uFc188nanQLCAWXBi+mA2oiGqhjufl7tRl+2v9aPf2F+hQ
	 nr6yAeo69zHog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC6CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036099357.27401.12440525087385472070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c014a546b3fa71bdb388d992ffd111c77bddff0105e03694e35e7df50a99f177
Date: Mon, 13 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760360993
