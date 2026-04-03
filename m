Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA092D0603
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775208334; cv=none; b=Hov4pBW1WnxTdMa7ElSPf7bDPr/zgk2yQHnKOnFjly4gbCDczZ+ecwibCj0++ngDnHg9gWCAOxdesz+bmpzLsX4yASorZGl3A+ZnqnpglZN3xvOVkCQT/wHCM6ofIdIj6nf6CItmOqoMw5Cj4Za3vinFs8CH+W6F5aXjSASo4UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775208334; c=relaxed/simple;
	bh=DgrPSHwkcICTHbXY75rz/PNSYGO0dWGF3rFTMuUgEwQ=;
	h=To:Subject:From:Message-Id:Date; b=HUC9pu+FOwaTEdmshNO179okOCgGqbyqZ9yANG3mewwdkh43Dwx91//kiCM5tAnICnuzzkKAglsXrmKmFw1XIKnoz1W3SHxIUV0XyPP/FlWbVJgH8VtQQEOBiL875RtRbhAUPiEmJ3ieetiT/G6h6B7mICMk7qgsEb0HM5sB0kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk5+Hkec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk5+Hkec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0576C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775208333;
	bh=DgrPSHwkcICTHbXY75rz/PNSYGO0dWGF3rFTMuUgEwQ=;
	h=To:Subject:From:Date:From;
	b=uk5+Hkec3AAkzJB266cZzM0LeeWQYhvS7trpB+HEK35qwyttm/Jz/pzQsboB0PMlr
	 AG9OL94hH6KPwVgKocJSFWjojWjEyA++A/OMYG0GJsymCF+r7kT7iil159t6pQLJRx
	 8JTmU0oJSDz+nL++2J9bkopns0F/n9rvHBJYblYMte7ItLR/Ni/19Y0bg+t9ViYvus
	 lQy+6giA3rlwN2hRoDwpSUHIPzMSCF48dvAxRce6y27Scjp0QcN0zFYpoZBqv38n6f
	 kcDW+6UBqNmgtI3HyWQU78azwUMWYHtBf0csf67zwYWZuJeqCUXgFUTS8BAW93PaIJ
	 jQWj7gKpsBhvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB533E7E358
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520833369.6891.2687846244885680769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1451d0e73c37775cd72f099728f546d0e7b679a5e07cd20975a05c27a65ebf5
Date: Fri, 03 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775208333
