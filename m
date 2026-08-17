Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E8E4B0497
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786995034; cv=none; b=JKW2PDevpJtRPFoLsJ861scqSD8+U8esXO1V9icGoYFMB7IsxhQ/53TJOBNxaB+FvFJXMm5yFohFM6umYGWyWEYNK8SD3JN88peYInWW9/AEJb8ln/AeB4mgZ2+ttpcBHb62raTs6Wo+C4uImjhBljK2MgIV5vmCwV5iXGo5Aq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786995034; c=relaxed/simple;
	bh=ReMnCZVGR15H29xSPYvA05jcFucls81Zukt5LYvePIc=;
	h=To:Subject:From:Message-Id:Date; b=T9rTKqaHuek/5yfJWCy4xP9VNiz3a0DLpxr+uYvdrcu0MW2UYsb0SCx96xJE1GGusSIEUTAZNNDIIDavBEOf6gNQiLbqZdtbGgt8beTh5WgsfhVZr1ICUBfon8DgjAXJiOOE6+EWKH8wbEkmfiC5053xTksmj5nvizH+MVjJS8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5O5MFhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5O5MFhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2388C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786995033;
	bh=ReMnCZVGR15H29xSPYvA05jcFucls81Zukt5LYvePIc=;
	h=To:Subject:From:Date:From;
	b=H5O5MFhSecM3insxI9X64jnN5962MF5ywZv6H62pF7Q6WMMf4z1KtFRDed4wNaHmE
	 C7lXZtdI6K7BtZdtfMSpA4yN23ZxWRvFj6q/Y56WrQLY/lqtOM0Jn5TFlxwU5uWEA9
	 ZLCg5FLZXiiUU4gzkfEx+MpvE+QrbTj0Rg2AC25h37DYduRL+yWeA7SdkyImOcrfLn
	 Q/QFj2EP5Ly3NJqZS/W8NE22URtScorItMmCJJMcx/pq9YS76kLjCL/q5GdsqvB/dL
	 nUj6wRfHlNpljtAGZ0QYlWRrXYcMYgkT4ujlFHuy9gc02qSRBsHx1hyZgtf9+c4X5J
	 tdSyPBr4sa9tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A7EC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699503379.5413.5355156099826786286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca99e3586fdf978f0471a1f466c26837b212e5d7d1167c17c69928e0491bbb8
Date: Mon, 17 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786995033
