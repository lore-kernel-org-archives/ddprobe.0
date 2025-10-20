Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A8248F7F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760967594; cv=none; b=Q3VmxmN8aKle9Xslh0mCNDrVkaK1382TO0urHlP1AtXhPEjecAzx38KlBplBHtDWSjqxz2RNlgll1e0jgx26oKUpS0oFnyPNN6xyNHQYoLn2DtpYUsojT12USp/6h0SthxjPS03s8kRiajCWC3W4wt9lWz1jayFSpwYsBC2sbXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760967594; c=relaxed/simple;
	bh=JBw3eHWqRLU4q0EFHjVqCWqQAO8p7gxyAa1BTXKsmd4=;
	h=To:Subject:From:Message-Id:Date; b=flExIs5XjFJaqgpTEIsWWBqf3DNb1dfhokGO7oLWT8YBwIRtJiD1y1PhSALEsJFwiw/fWSfatW6JAjXHjf1iGw/uBDyDnAXDHnPPYSEi2EOGQgS0ZQZGrF/pDq/GmR+DgWvifQRNHB8ZtlTdr+uj5wWGDfmvUSzjRVyYoq37Fc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkWtD8wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkWtD8wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA9C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760967593;
	bh=JBw3eHWqRLU4q0EFHjVqCWqQAO8p7gxyAa1BTXKsmd4=;
	h=To:Subject:From:Date:From;
	b=MkWtD8wjUQkeaFUjS2vM/6oSbYwm2TGTSrOAGcDcMWD5/hfTXBnN4H2Ze6PP/L0hz
	 wM1zZoyxj7ahaLIM0DPo0dHJAjdFpGbfCVaOscAsIqftOPgXqSKNAkmgM/rDICABLJ
	 6jXXvpCGAIm+KcVWnQX4CMdX6v+ushIOgOLxuixcxhje1DyfVzHjXOayU6QxB3PLIi
	 WP4iDAlmKN/LMquoHmdVWfCJj3f+n0cs7QOepa1Xly7w9V6RlfZLsPzBwe3iDIU0F1
	 /BZD0MeMkBcJAsNuEmxt+8QtauKnKcZwAcovkfZnoO+dHetRpKmDpDQr35omZpqsQ2
	 GRLKW2kPjYW3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97694CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096759360.32091.10772858144163904860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db61058f4cf7edf2088a2a5491f4cc04cafca93dbb170fb952d4f387b5160e8
Date: Mon, 20 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760967593
