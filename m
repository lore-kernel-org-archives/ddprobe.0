Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237C0279DC4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753207194; cv=none; b=IlhJMQ1j1DigW0xi5jcMcEEtuAnXTjQ892OexltzJDImMZ1ROE+ZJdbOQ6qSK3m9vT4HLtDuMl7hll7ohkLyr5EYDY0GkHnlzziRZtOtnkeRgu58cDDo383Jm8iQb7mzTPez+8/bAb41gDW4Nvs4EJGesVsni4iQwjfmgErBNTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753207194; c=relaxed/simple;
	bh=IsuxX8/kARu9cZL3CKfe7Xnep/qL4bunViDGDMl7yhs=;
	h=To:Subject:From:Message-Id:Date; b=L0Nh1V9ccUtxKImMt7ilpHDXw6MTKGxEvTJgq5LkAcBAQLBLXOztsKCtu62kcQgUb1J0b9D5dAwnqFk9X8Gsd1wnbvF81uL3Lc1jHanRTXIur7dQqPBS22Fs6Lpt64lDk97g1YN7O+1tdYAzC+/97b0qGcIk0UALgvcTa4xwF+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh7Vk/fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh7Vk/fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0944C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753207193;
	bh=IsuxX8/kARu9cZL3CKfe7Xnep/qL4bunViDGDMl7yhs=;
	h=To:Subject:From:Date:From;
	b=Mh7Vk/fegeAizUIEzkqg+gsXeJ9z+GwMPiB+u+qaDqe4MGqPCPxTkWZBAKVFWaD94
	 j5ABdfiyT8quddQZ6C3eIC0QmQlTIqpKq2L4TB89iryHC7VYXfGQ762LV9lHr57BQ5
	 ElkGBvita1YYn9UfGpFN2rk8neznAEFnOo8s2CSnkLdKtM9HQATinVW81hVXZsaX9D
	 0IY+omuwekpm/U2ROTGJKKF/7K4I8JORDI5/HiU4H5RBS1rnnFw1Cs2EPoFfpdtsVw
	 fYsbKmjCPEU69jpM90sGglyS1xHYtRA8JdD7Abtgyg5eq0owszCSrnryfLSc8x3cVI
	 CvzthTJeogbDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9102DC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320719358.28786.5266471445941932296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2d667a206a0de90ef578520268902407511ebc0164e49f679499a87756ae8f
Date: Tue, 22 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753207193
