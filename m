Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CC618A6DB
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786168234; cv=none; b=agGj1EhIL45DhS6/8EP5EAJeF3k8UoH3FuCc3u6590bAj3NzcjRhMrbRFLlKic8CYHpvUzVuQcMh0s1Pm3VD6QEBNkLUhJY8bS5ub1l4uHRZaEyx1sZns1IuyWAHKNMRHvo0sRbpRjJLk3wwcl8VyvBm7X4WsLnG6mI+AiIdRuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786168234; c=relaxed/simple;
	bh=S8WUzbutGrA4x5hB51TkIj6rMZXJkaNYmc9DPYUrL3w=;
	h=To:Subject:From:Message-Id:Date; b=A3sXvHAHZpVD4IT2bxwu+qP21oyD8//E/aYODZ6lJeVfcx/TJ9unNKEY1CSIHYThMZqZIr+xtnhzGCrUB8d06ozv4amY2nITw1rbPhmpmG/3y7y1AJjmPAxCIAyXfSoGQ1IErqNzUEM3WdjHddgStEsSXAm68Y1erGBFZt6zE5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWPVCPI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWPVCPI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2780C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786168233;
	bh=S8WUzbutGrA4x5hB51TkIj6rMZXJkaNYmc9DPYUrL3w=;
	h=To:Subject:From:Date:From;
	b=JWPVCPI7mxj55LLN/om6dbpIwqGDDesC8KZMPGeTtYO6j4p6+8Ed+tow/1eEDOu6c
	 EVrxvm8/Y35hz68iiLpRFCYbpjv6dJ5tu+jIUs3B+DrsB/dxEl37Fh6tsGpAxDgomD
	 aovcXK0PsWe4mEtvXOpophE8JrM0Qq7i62J+823nC8ZmN2aZYnc2hBLXr9Hi75piC2
	 MaLVhsDxN1zDuVjSQhekD1xsLGd6mBylqsF4TshNodzdAAW/YFNetW/XUvgGIouPwj
	 BJmStK/rDQFb24FW4sn2z+gGXWiUqi+iUhdRdEWTrIcz80u3o4lBW9dufCx/V27o2l
	 XapDdsg2BWJkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE067C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616823375.4048.5894668306450270669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fdf5263c504bc67570565385b160537c7cba0a275420e0a6d9a92c7ce80638
Date: Sat, 08 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786168233
