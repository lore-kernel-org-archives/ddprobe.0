Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757D28DC4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757694595; cv=none; b=GY+9dQ9bEhRjs6V1OhXxwRW9LW+uVJU2U18eQnDd3OqRsInOW4gYHzl2YFFSBTw5UbaT3nv41qWx2EywsWBuoKgDTie6PgiqVEmuaMgAZHJzCKUW4uwvaTgTQgCzj901dV0RljtXTIxAJN7Oax32fOklhmeI5TF5a5d0NYanFEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757694595; c=relaxed/simple;
	bh=DXK7UJQmh96V2B9bzUHhcfR5wv909iEkldzWjMQ+aps=;
	h=To:Subject:From:Message-Id:Date; b=hEjOfty1NVDAqPDv7OrRvdjp0V/DzNcy/Pn74SeF0bmB+JgA05+skg/2MuTKTKrDC30smmbPr3Y209K+WZaHJ6e5/1RR6GBgxjEwpKBcDpHBOHCxeTj3zjeO1KBaI/DnuoJNvDiJyr9gHYHuAYcrspA3KXyInUz9X9km+pqYbqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR69Etjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR69Etjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757694593;
	bh=DXK7UJQmh96V2B9bzUHhcfR5wv909iEkldzWjMQ+aps=;
	h=To:Subject:From:Date:From;
	b=bR69EtjrhDFo8dUfGHtWBqz7Iuq1forhkFOOu+y8QByEfLhuoL3BWVqUFKsPDZWQH
	 xfGD+VLTqIl3P+w7bW+27IaEvCvllJkuFLmwV/mEjo/lHVsgyQDmBM6FP6z6Nd1f9v
	 kqSPqDVK3uyHXP3I8a0aacfrWATKOieDy3iq55WMFSRqyJvLpnrSnxpzI7KEIJCuES
	 Z8OE7ioZcJCWgSsvNIAxzXQ+REQHnDXuu9L+bkG3XNrffkMXd3jFO3/lZhFD6MY11b
	 wh1J919hrkemDft2AhbEQlq8p7tfkQ8WndoxhLbzAi/cwnLDny+GkA5rWe5yarqu2H
	 vQu9j2LryW7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EACAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769459357.27464.7673344605541172726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5484b48129d6052ea5bbd397e0c0f51c4844d458c742421cfc832d93b2c8a12
Date: Fri, 12 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757694593
