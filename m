Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128BB1BC2A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776604654; cv=none; b=QQkW/+ydePtbM1THPtwrmzj/BVx02kkQHTtsXpR1PAAIoLSOSTY28pUhjRby4fRAeFOYDspEe1phnBy5tXcLbItqjWWjsKNXF9bqj1eElJAqsnt1Z7naxXtDQ4vSyvxNWtfsrqpXK4apmWGHJY5D6kZfux+i/MhBpF3kYg7FiWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776604654; c=relaxed/simple;
	bh=mXXqGgR0SLFMIS7f9+jVovNgkzzBM0hZH17tl6yWKow=;
	h=To:Subject:From:Message-Id:Date; b=VhNraVGGQ/OvLXCS4UadYLIajpbeE7pcLwRin5x+fL2hlZcp0yFfkeccemepyVGVbgZOKVgmfWPFqOUTkixfsXltY1DrwhzKszEj1HrGjBZE52WcLnoGAbR2uI1DoD22WaOEcVLL+3HeBptdGvreWXxnaj6gp8/+1VFjkJxTtpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxS4JTIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxS4JTIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E82C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776604653;
	bh=mXXqGgR0SLFMIS7f9+jVovNgkzzBM0hZH17tl6yWKow=;
	h=To:Subject:From:Date:From;
	b=fxS4JTIOoeN1rbyBTkg1gvElpupk3bJ5wkvgUZV5mWeXrm7WtIVKlAYMtTKT9E0Uk
	 cfDlCPn0igJY4Z0f7ekrBbYBr6Z+pfJROs8+nL5huNKddHfW+6wb+HixjgkoA+erp6
	 /6nWXgHDiAZAGQprUw40qeehenckD818bv3sTTZmQztS2Q4scBuy4sYgLKVDEg9SZi
	 CTmLNeki+ky8mxLqFi4Cb6Qcqm5RX42sbrO4hJLublYpA99dfMn6fnkmOCvucZs6mK
	 kVwn8K7V4msyYILB9vNy4tyAZZxbgvjzKKnHGRrZGCoMmqQ+yKXDh/zVzv0gSUggZH
	 6TOWBD6SGQKMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DAEA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660465368.21131.14042129972006012733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b08c580c6a5c90007ac85d4c91255850e1090000163bfd74078ea1112643066
Date: Sun, 19 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776604653
