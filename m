Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1F425EF8E
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745373594; cv=none; b=mcVwGpS4sR2NyatVub+y20g/H02UzhPYTYcvSzoA85OguaM0iUbla9J7MpCAs7PKfGJRJeRImKuDXTARac+0kNuOKiJPW8SdVTDsVGF6v+BqQBKmjsbZ9V7D2dKgOiSVtsTeU8xgUZTGU+3w3nW1aYq+JgaydY8QgyZa9hKG0Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745373594; c=relaxed/simple;
	bh=ocCODGWddXokIP7qpDYTzVnkkmLzLKm1PwycwiTaAkw=;
	h=To:Subject:From:Message-Id:Date; b=IQLdrhSgw0F7Xaie1PArhr3HqRzewXNfvIelWKnkIB0mJLFLVbCtQeNFwnYpTwiWBNMQcKW2eOLC/fRaRPflEhlbog9cH/VIb3V8Xn0VA+uxh2zYPQykbx2wUIPZ+5L9X8FdP85ffq1D5JZrisTpx37dMxC5hLtqzxI3NHb5H1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgcajMOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgcajMOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A626FC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745373593;
	bh=ocCODGWddXokIP7qpDYTzVnkkmLzLKm1PwycwiTaAkw=;
	h=To:Subject:From:Date:From;
	b=EgcajMOqO+9N4AuPfJMlHx24XtM7oAmrlXFMPA5h/bPPqvGbQIhWx3AFHxjL9Ry+d
	 w1nCqnuBXjkZLcZwO7x3QeBN2V+xKKxbmAE0A+9ltlBWD+60EGrw2m30SEg5NXcFL1
	 /X+Ap0In1EdYZonznwDNa7HXJWzTc/DkbeFqBxZxP3d+OJri37khLEkDpR4v7Lf3PO
	 JzAi4ZUe512lHYo5iojOiI6dRvQh8FORn+tPIxB3TdKpgClSVsXCwQ9w/F87JH7K/a
	 h1wHzWLil6Of54jOAYWndDI+h+3Nc31gPRT6P4Nezs9ESQpqC0kijyQfWPQ5bw52PE
	 GaWwHVNj+nAJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A6C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537359358.963.16665228471143492336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e16b33e4503086f6d5729a9ae1b3b02c3bb396cbb2a58066b1983ff860e12e5
Date: Wed, 23 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745373593
