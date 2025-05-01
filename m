Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA2124729A
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746130194; cv=none; b=PpjVogvw4UvnwWug3vLHlGYtL3aIO4L98tfO8O/0q/hpl4T62/1dKxFaUoF+/IyPs6WKpykaa8ZfvX3ZTecfPI3veQu9HB3TNZU8ZZMn/cFOx8/jmwlEgILBs1EQH7ntP4WHSxXRMUlpx0B4T5kXwFsKVu4tT/gqUl6KD8/ZNcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746130194; c=relaxed/simple;
	bh=9NQlF6NRZUVfqH309IiNHZe9iNzjBU3fRVgNjfehBr4=;
	h=To:Subject:From:Message-Id:Date; b=E2g30FNOsFGusj98yLhEr44IO5MPUuocELvBnCEaUGuNmckqNmzoHKgUJ9act1hQVTW+cnbaiESE48T1Oln53h2BUHv67w+O5gYcV/RP9NS2Ri90vl/tdBr1VrsLJeEsfZyJ3anSdtPLNmQw3Qz7BomiMszAoqQgAQAptnfLne8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPMaZuQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPMaZuQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746130193;
	bh=9NQlF6NRZUVfqH309IiNHZe9iNzjBU3fRVgNjfehBr4=;
	h=To:Subject:From:Date:From;
	b=YPMaZuQppFtyMOmk/wlGwHZA+5vaDeWFrKv7q6rZCchwyHPRzhzucrDhGfK5n/fPk
	 LlrZhBIwAHONeEW8igbLmR/CaZuq8zuStXK6+9Gz2ZLaz1OuyNIaiDw2zjgOuQyA+V
	 D+viidjgNdjp9Xv0IyENLLrycPAoeNVBvZwZ75fqjt8tK7tlHkhV09KVeG2+cYB7za
	 bg5o3EE5URPYxNpF24w/qCrP7LghoxnrJu2sUHi/STrVDQUF73oz4jZ3CkJGEw9iDa
	 B3JyNbz9tw4MeGVMoemwZsS2ucbZ4FbEobgkSBrITlEgSaxAMyIIE2hpz//eJo5Yco
	 KAoy8IpQ0Sjfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD5C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613019357.4918.1077466540866926067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0246aa2e6d954e8be9b78e343192d0a35bb3cd295612c7ac38a1a510b0ce1343
Date: Thu, 01 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746130193
