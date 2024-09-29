Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446E4AD2F
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727577954; cv=none; b=telysBAx0EiiOeAMY5/a5DFjObQg3la29u2dfaMwZkP4RmuoULnHJ6YXaniUHYUwYaZFKR9sPkUWSAYpW7kvC3KZOiq2Gz7LO2bMJjHgK9fqgjbIVYPbOJ2u1oowMoKkGhmyMpl6hXxUaX3MDvf4BCgaNNm55Zfhv7EuP7PeC14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727577954; c=relaxed/simple;
	bh=iZwLacYQrXvn0HDrAyr6rDuNUzKY3bfjunFBWEc03LQ=;
	h=To:Subject:From:Message-Id:Date; b=LM7rYroseVccny4yhxZYKfa8WDj9EwuOvav1dCRDTgqrA9oddwIM9hJclHXzg7vx1Y1J8gR6oGaMsTm2g6r5i6GDSUE9oTsSXYHZAhmbDAuay4Q9iYnixMU6LO4YPKRNjRO4UgHKqxmNzoN1EybOVq0aa5MeEmXAunfkWt24jxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SV4kYAtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SV4kYAtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD2DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727577953;
	bh=iZwLacYQrXvn0HDrAyr6rDuNUzKY3bfjunFBWEc03LQ=;
	h=To:Subject:From:Date:From;
	b=SV4kYAtRYFOv+bkVMI8pAvrGis1B6ZTIz/DrzF+owjZEq5AMHKJ+LaVyITWdEEQ5J
	 GlXETZeutFDr9XnnkNuPIE1zq9XbG+Yefr9Lm+kb83fFhSkaC2CT/zK6vhj7OMLhoR
	 Jz3LnS/b1wJWhor99DIWo82JJuQeWEa2GHFR+Wxw0fB/U1y9Xc74v5yvctL8TulvIQ
	 PY3V/Hx9Y1bRhDDis8uosSFAZnZ68HtSxjgg5OWD4dN6NelBgSB9BZbsL9mIcGB4+J
	 C3QGATC18NR9x5cigZWWvjo6I0R7aYL4ZddWpLyr7jBNmXYhgg0yKLWgrcYLBqI0Aw
	 RVGXGYG+HlsAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D5ECF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757795362.15124.685955952191900965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5079777f8a21b9e5fff75250a57171d067ce5ce7b5efadcf81334b6da9907bf4
Date: Sun, 29 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727577953
