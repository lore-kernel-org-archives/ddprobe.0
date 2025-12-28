Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F6D29BD8E
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766963634; cv=none; b=mW+qP7pt6uVoQ9CFvftkamks3YAvOyxv1vhe+MO/Vm3ayBH1knOBFCOiX9Nn7oP9dMbesyRDnI8iAt+/ysFhsYOFqD3mLV7o6Y7Vf3tHqiqG1graT0AhtM0+YTmUw4eUoTMlQPhlMR5kWUWzXUaricUm/lgdjrS803ocmZP/IPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766963634; c=relaxed/simple;
	bh=ch9PHATHQV4ZYuTmGZQeHXgcsLJYN7L40QE6TJwhYwU=;
	h=To:Subject:From:Message-Id:Date; b=Njc9f8xE2cFO8uebuCgWtcrx63Rl8YVIk9Se69leiJu7er+we7Jluwv7tS8XZNMFa0Bm/bbtW/85tWFDyMk5z/7b9ZYEO6VTNLbYxLXY9lk8eDVCUGT9dw2anJlKjw3t2sIYARRlTjvC5Do7v6zwOGoUfOZkwXOUKQVrWG1cY5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRK+6+Ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRK+6+Ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B515BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766963633;
	bh=ch9PHATHQV4ZYuTmGZQeHXgcsLJYN7L40QE6TJwhYwU=;
	h=To:Subject:From:Date:From;
	b=ZRK+6+Ds6cTfAKFvhqhMw8SFDJIlE+GDI7Sa9hjOoLWbMbMkRBAP/XAArWXCR6NWd
	 K9QeZF8z0DoUsUt7m0ojC7DXlxnqMZ/b6SKuDz90a+VuRWO4PwCowYWvlhFpYFpYsz
	 z227rmfUeTAtHt0m31fHDOxwrponfaRdcekOfBagtGavNUZCtWzBu6RxnVIPt/rRyp
	 qJNBiYJXCDMN+vYvOYEHSL4/90jxUX1lN/vfz4VmbCqflY9fDz5RwiEgrO2pjijZ6z
	 qHoPA5r8XwC0l7kdOeBTm/2Fa8hyqD0s8euB6T6yD+cbMrlM9fOW7ZtBHWkeKloa6K
	 e4aCmXFFlj9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE4DE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696363360.31789.10532197043220019574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d3d16cfac7969809822ef166a6c32dab704f200eecd0e851040b08f4a6017d
Date: Sun, 28 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766963633
