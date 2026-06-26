Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A1D2F7F01
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782493714; cv=none; b=pTu+c6hqjdUKyKKLYNAvm+7CmqbElUWfmrOgaiPicHBeSAPQ6hZeg7bl8NlilwUWCdmKKfjTBP95PGMAWafUGidHy1jqRIFf8yJgvLdN9z7mMFcYOA2bK6yKQ5jFbr5RXsI+R+n6JQJsbRBcourheemqgcfbT0xKDUdWrqJf/Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782493714; c=relaxed/simple;
	bh=0hEluaHlEMDAhfx15wTfV+CRLj8lppTd43l+1rEtXok=;
	h=To:Subject:From:Message-Id:Date; b=eoEbdODeW8tdXMydBEey5ymFC1sR21I3DeOy85MfkdbRhFvTVnPoNrUFpgflsIHQuabY86JV5dmbETcSTPulP68rkC5UTWDbtA3elMaIn6oMHlgsdVTzNwNeVu7jXm26u0tYH+FbCV7cjXUOqE37Jo6N5BNaJEN5OmVxt3s7ntY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZutl2K0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZutl2K0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A71C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782493713;
	bh=0hEluaHlEMDAhfx15wTfV+CRLj8lppTd43l+1rEtXok=;
	h=To:Subject:From:Date:From;
	b=ZZutl2K0MyIqJFwvAzBQPtqbNCK2D+F20tVEIlx4YNWOoMsTSki7KSubfKIgZQSXU
	 hWILAWoBFqd48v4aYqnJqwJ0i0JfSDQ84seYsOBqIs0EehdXee7ALELs8NEBWaDzDG
	 trwSLyQJ/xQA3eDpQt0spc9by6jvPMzs9n64Ctk2gshKFCAh9Ntq+L8llnqk3QPdtu
	 QeNtds5hfu//56/FNFIooboHfOV6JcobMxpZXH9vlURxt205p1sLjkY6cDE3IhoXDp
	 Zym3KTMJPJiwI/4yV6UtUiq/wG3SWjg4yyNHMCd4pwoKWB0c2UG+0PXivmI+M5FrNn
	 PScfqqEJn2QHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D1FC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249371372.32657.15842630545075347320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d03d630b31b3a1b0f6f67ef50d29b527fc8a6b6b8d87bac2b4f6c906dd65b75
Date: Fri, 26 Jun 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782493713
