Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A5721770A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772238894; cv=none; b=NM/kF5e665UVtnLbQaNo7GLqdFL7ZUMzjs8yaFi6aUoEK5TP/EYljmv0CUb0B2PW5kZE96Q4/ihrqRKr964oXiEcUajUMIn8UfrqLQmAMdqRNG4V7o8vD5z21TUTbH3D0LylnVuR3hy0wM+EBwChqqPzclRowRYwNhjcceBzdQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772238894; c=relaxed/simple;
	bh=3FL5D8bftDIfbqX3fGbzHO2mjeQOKVDueI6MS9gLr88=;
	h=To:Subject:From:Message-Id:Date; b=SdLOIRDAiOsO7dfQDLb6SuL7Lx122KBby9HnT+kyrib6t5b6xh11dt4u6rswxqvuJCkn+L2hW9WpqnXmze7+ECaqTRN6DEjhLJZAlXxGApCycNseQyRICONzH4JTXoJqDRaw3kUFLNvTtP5bCi3uQYSg6cL7vI5ff+CrTHjJuGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoSRzLZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoSRzLZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E88C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772238893;
	bh=3FL5D8bftDIfbqX3fGbzHO2mjeQOKVDueI6MS9gLr88=;
	h=To:Subject:From:Date:From;
	b=uoSRzLZBpoeoYHkCxyP91JNGdPLQIphfuw+ljI8OYN56vQ8r90iVu23KZ5Pbch5sd
	 /Tv4lWDLxQBk3HlvctO6e/NTKMLS8EnTpBIpgyUd4bqjqAy/VhTLNRkeNpK3Znv9Xa
	 9xfaP25IyAZsxGK7SwFFiCyKFMRzR8Hv/ZUgjHrGq2EOaWPj6S20K1EhlmSwqdrhaG
	 zWE7gzadUNn8kPTpIUTisIgG16k+4EGlQJUtqe4V/RVRdD3BdBYVFVCKpeHahD2J0S
	 KumulxEVF7XrZs+o7iXqb+LMRbWR4N/2wLXOiSCiyPAM6PtdnDHT+bJoMdCnu7nb7Y
	 aKujg59C0EU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931811048925
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223889358.15676.5362011944248014470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccbf1494ab7154f06bc3e2cd6fc29679c5f373118bfd7ff68725815dd5a2313
Date: Sat, 28 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772238893
