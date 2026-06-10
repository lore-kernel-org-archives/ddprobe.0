Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3566125A645
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781058334; cv=none; b=nQexbdGFqQ0fAXas1xcG3KNJBubEUKghKie8cML/zoYjRWkjSgpaDGlA/UN61440InVq0mS97xVCvU2HQqqIntemuAalZXaQn3/cU7VNPI2RGbCxP2xj+SPmZOcwQX17udcAQ8TCUOCAIb204SXWxYuWXyZR+NNs/qrJE0vE13w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781058334; c=relaxed/simple;
	bh=MPz2q7VYiZ/i8YJUASzRu4Pe89botHipibpOZE+BVT0=;
	h=To:Subject:From:Message-Id:Date; b=rP/CFQvR892G2CyiNz3kenNHybKJXbVM1Hl0LaXbnl4/ex/JqLzoKi6GN8lOuGzU3MWK7ZsI0qym0loy7y/5hqwbjlxjvi1aW8y30xPX9cvDDWYvcJEdEU20LizmSYkmsE3zFfO0ifWcF8w4f7pv8nylcpdPoCqjC6aR6mhZkrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iILTH55N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iILTH55N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD22C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781058333;
	bh=MPz2q7VYiZ/i8YJUASzRu4Pe89botHipibpOZE+BVT0=;
	h=To:Subject:From:Date:From;
	b=iILTH55NQnapijIfSFZV6obZWNZxHTMhW6pYx2EXIm476ZK+yVbG20GjallQaNkao
	 Pl9iK/Es33CSXkDfhF3q7JioMpqADxsnG9wwKeeHSEx7+zAadLzH5tDsI13oE9LRoj
	 5WQvBaGm5q7d1T3Vm5qjWLNfkX3efgarDvC0cuWZv0ivh3LnxZldbof6Nv/EC4U65W
	 eVqv0YvTuHg80NUgcjKB1ldVStj62xbmIO3cYTIrrw/QN7Q38pArNOQABuCRXnhXst
	 0ZqhVQus7LcuMpQhaTOvduhrvDYYpfZ72b6wJeSEkyyzXJN5/LT9V0mHHiocleubrn
	 uAXgm2nCl1idQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B9CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105833368.12737.3865706933682916310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b24c7bc00ac6bed9bfe9980d881b217e6cf2645cbaf9287f454c5984b18600
Date: Wed, 10 Jun 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781058333
