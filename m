Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257E7260570
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750973994; cv=none; b=NmapUSxj9ij2N1dNLnKKeY3YHFkIItpRMu07wxbg1Siush375uK+GrfJrt/5WasAhg99wdVdAgNoX75Vugcs9sGh070hGrqyDx6C9X++9DsC0fEkKy3CfkVQtWvxO1LFPqwn7g1JJwV5XHNrk8f1WUACJx0vvPOZJB4bN5xQ7Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750973994; c=relaxed/simple;
	bh=vIGEKvzIiOBHX49eHpBgPHVXhuRp0IH2rmU8moFdOEM=;
	h=To:Subject:From:Message-Id:Date; b=cGifkx6m/ZuEp3ePipm3iwCqNdCwqs9fNSkTxSkLKh5LVDaoaSJDod+uXQF/6e1sAVlHaEWnPTHqtLLDuEeQOhmibDRY8CUB8PbC4MhYR+GiK5lXbItrIAsEo58UHGICRzK6Byz85lIBnUvkVJ8w6SXfwM+innL8Ved0HrQqn30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk26tExv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk26tExv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2285C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750973993;
	bh=vIGEKvzIiOBHX49eHpBgPHVXhuRp0IH2rmU8moFdOEM=;
	h=To:Subject:From:Date:From;
	b=kk26tExvLEzu9fFztnhMXX15lEOFASRJEXpUJjVSQ9+nxqX1myF0J54PtgpBpLKVO
	 t6xPeNpj1psfol+mG3uvfGF13D0smDML87CgtYTPzXG/YWw+muz3cpBJu4dducqmN+
	 iFu97+XzZtlZdlSH8WESlQEDUPIJVqYzJdJFHcIMLBs9/IMAm8MOVR2M8/fQhBjjTB
	 CsBAkcOmvJ+oCI7zJJIwgcKHdA/66vf2WCO0IAZgEqHXp+eDU5ZwpIPZlqEmYC7M2H
	 dUVgqZRUBMgjZ/7//1TSYm8xJZa/aKgnWw1wr0e3OW2Pk1UK2wjY1fmvnU6mmdlJhK
	 TEGfdK/tAn2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038EC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097399358.21829.4777992527673210989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9822ee42f920570dddcf6334e219e7fcb9c61ec1e3f49e6e2dfd59ceddcdadf9
Date: Thu, 26 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750973993
