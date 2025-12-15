Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33822324701
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765777974; cv=none; b=U7sI2qr3p/igliSZbjn79gRoH/Nzxoc6nC/RznKkN8NB6RYzm1jW4V0YcBLpFVNdDu4dmvqILYfSrxfedyiw2RR7y3Hmqph35BN8q0qsXhfd9YchMm4KsHZu97nFjezjiJfwKgIrKMBWnXKH+Osi1SgQxxCJpouOqa0hXfIUx2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765777974; c=relaxed/simple;
	bh=IWk+afAG82D5TYnC/awPRt3wQ1Z0rjuF++ZS+YJQBNo=;
	h=To:Subject:From:Message-Id:Date; b=qPLLw4M6XylVrTX0qXEgHycTjzZ3ln0PbQ8yNyzHHZ0MSY9DNSfLDoOeWfGVlg5ocTUWzgbzcBBNLy468KyTu4fZNmbgfRjVjbABI9r8KxDanhO6RJ6MA8WabSx0qIuAYNrVC5Y3ns75DRo1S7sIHEZBDheBHXidDia/5sfSsAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL9Py4A4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL9Py4A4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48D7C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765777973;
	bh=IWk+afAG82D5TYnC/awPRt3wQ1Z0rjuF++ZS+YJQBNo=;
	h=To:Subject:From:Date:From;
	b=nL9Py4A4nsMo4r+wtGSLOM007F/zLmHO2ITy5UZC4Wlg/eWmOYdLNrzilj9BA/soC
	 +lcg6KvxmDMGfH+gbfsFYRtnJrJUccMai2bcMKK3zc1HytZC4plQnjMKvfIkohx+/q
	 9U3EY/qS+Xq9DX4aw/i5i6UiTja4TnAs7SeTMsykjX4nKrDLo7J6Yu23f+KmrghJ6I
	 bvpg1/PvtA4i3TCMjW5l25YotY4sQUhEwcvrC+S8M97RYZ8zmHLTodDJ5QOYwMwUeO
	 Uvg9qbPI/xTrkwNTSq9BFJjehuBpkMaQhoXiUSygdF4Np1HCZiwTvUauoAzvl6F8QD
	 mbkJRI20Tvn1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3ECBD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577797363.15948.11395768024262595605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6464a4290b72eb7e9a38ee8074827748aed5afbc47796739186950fa535f6e77
Date: Mon, 15 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765777973
