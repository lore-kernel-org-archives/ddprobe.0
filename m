Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4439377561
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778223454; cv=none; b=L5IUpxYEb4M/PKn6TmnisPGC9kg5b8srE0HxB5ctibXYmYGCybFW/fxupLtP+kFg2iQLfEhXc6f3SeepqqRvddf5VtLRkZ/TIxOWFGb9csyeo9+HrR22YYsE+QbiA+lWaOC/0XwKuHDu/IQK/sckI0namAvX+g/rnaW26x0Rmj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778223454; c=relaxed/simple;
	bh=zATGYC7b0c4EPa1ULKbH9wuvAcwXuwugqBivQmsJ6fE=;
	h=To:Subject:From:Message-Id:Date; b=m3WdEmnzIFXTHronGmZFryTr/wAkB6n2hLYjXA8E8ve1tkQksaOhKmJ/cbA7zMZm++eJY+BKxia+frc27PzO5TNsFWnyEekQi7QVZGueHJEfcQQvCVzEp7bM0PH3X5r34QH86t7b/16rNzgJMfm2C9Ml00mIN8dsuoAjWZEWRsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2rTNY5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2rTNY5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCBBC2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778223453;
	bh=zATGYC7b0c4EPa1ULKbH9wuvAcwXuwugqBivQmsJ6fE=;
	h=To:Subject:From:Date:From;
	b=m2rTNY5pzd4JBr/7FkIjqMT0n5A8cytEyk5wYHdiz1Z7VQxTYFoUMoDSn5q3i3uJv
	 vFyxqis1EdeM4UBc3/tYcogX2trTbgJJ3W28vGAJdlTzSG2bA/tdWU96NJJJRzjNW5
	 igV8Y6YB8pbbXhcf8FEpv8tI9QGk7B9TynCoPc9WHzQNxt032cpAK6j12pNrbwYSba
	 PtIn3zawK/ywI4Ez2c0D46A8ysI0FZAwLTICGRrsgWiYJG5Vm1lvz0Zz3Dt5yAt3c/
	 Z+Y+96p0EkMxsNs5JypZCcXHj84KoHF9QEZI22YjEXhEyUGo7orcarlWfWYbaV1XAm
	 yOZI/jnFuEMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CB1CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822345371.4208.17578354517967747801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c67571de1beec786eaba902cc007fd52695aa81d3279a89db0da09c1170e5e2
Date: Fri, 08 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778223453
