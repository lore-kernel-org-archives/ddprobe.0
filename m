Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D473CAA49
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788111635; cv=none; b=DIGxAfsaJviXGFBza/9A385e3Iy9mBOh5Qn5J+vZzYleVvWk9epukr27oLeHtlzRiwlPce7ub1bMCj+XmmcXxsZyHo+ctYtIYBsYGDELclVvIDmGuJCwqDNtFvfphC97WtiBZQgPT+EEvJ4OZ+rM81I2FvIh5Q7Ko2XBamQhbmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788111635; c=relaxed/simple;
	bh=LoIHeDHE8bwEO3xsumCx9R3RgOJiA2R426LxFWUqTm8=;
	h=To:Subject:From:Message-Id:Date; b=Dihx4zVBWWBRbD5R088ofIqfcA8YHoAH3GYsYLFWlUIkdljmXwGu49S9iI0/RTtGZACmT9j95JOW6PKqFgGC9ybKPjfQGzE60oBkACI8hTYIw5bW/6w7nd/ZWsFPUdArd2bMSL7psSXZvq7VKhlnGIoeG4f69ntuGXD9qB1UUiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHAi0rFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHAi0rFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60B3C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788111633;
	bh=LoIHeDHE8bwEO3xsumCx9R3RgOJiA2R426LxFWUqTm8=;
	h=To:Subject:From:Date:From;
	b=dHAi0rFhca0e5UBvyrxn/Ue6gJowmo0hfpjlpSA3TD5pmWuRQdIq4FJKI2L0L9Ie7
	 3l+xGH168k6qsfLsM8t3pePAQxoXh6ukw2WMm1Sgv+E8VpdNZITmX++1fCnOh2JAwr
	 etIr4RMNsSBFWPtVN6drUJLuXpvWgdfjkpTG2jQ5SU+l89qq5+utjsXf2LGTNWD/Th
	 8CSioJpdgHBNTpezJWMT3DiX5gn2fJT82JvSHH8SUbONQZ8uxITPuNc5yFoJqH+eRP
	 Z55fMTlxxxlsTMq1lyWPm8lLs2W8gOMz3mmkga7oOpZmzESeeeY5OvY+th+S85bgUh
	 gYsDkLvvl5EbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F43C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811163369.14980.4710446466224735841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064c98f4b71f142261e0ed1910edd542346e06eac86914c59d487758c4750c1b
Date: Sun, 30 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788111633
