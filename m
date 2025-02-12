Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAB03A8CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739323855; cv=none; b=RdoaEmsMq2HoOwf0pMPwI8SNStpVAqzBr4nDSqAl6nfuBaHMj6uZYRM8p76XvIZV2it8Ym1xJpyVO8uaPks4twObXzm0j5uXkjt9cSqeLOESRgcfW43bfXvAW3qzkUgv9DbEZUdPLL2kz6TbfBJPji7ej8yzkNmBjfAREwJcDKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739323855; c=relaxed/simple;
	bh=PDvgzqov8slUqBvz+x5wECa4SsEhijssblsZ+0qQKWk=;
	h=To:Subject:From:Message-Id:Date; b=Z/2bRNAnJrccd6uSKhOcC8DQbyKflTz8Tnhev00zOy2yFTzk96/BPfgrfeDRhqRxRLsfvwfmbuwIfQ9Qz+pVpSLqZ7ihA/MGodu4qBqlg7yX0nmgQFd60SDYZSJ5VqlHOs+sP/7ZV2eHOT6TrpAriWqZCVfk6jbhnL2zZdPrh/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEWjpmcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEWjpmcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECD0C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739323853;
	bh=PDvgzqov8slUqBvz+x5wECa4SsEhijssblsZ+0qQKWk=;
	h=To:Subject:From:Date:From;
	b=bEWjpmcABoy2IV7VNinf4aFsyK5oMA97M4UltFTUNMe9E2FJt8IrnbM+3Z1IJThec
	 zjRGYWNen9leRPAYs6wfDKLPNl8e64/D1vnftEoDHzuhxackQXajkzyOm4z3P6v0sX
	 F/wQf6MLCUfzdu7SHflQIyAvOPBg6OVcMx21MWNqZBLyCqnOsUE7iXP6wrKO4S3XFM
	 v0GfsFdlB84pvGNN67yUh3x+poHZgqXNp44OcW9g8QjAb+LSv4wcoKGV7QXPg1H7ja
	 j8obk2AKyH6KFNXL3qqtAFJd4qmD3BdMiI9moZuF0jEeMue74whd3F8bGif02+49eM
	 1YmotpLOptfAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987B1C0219B
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173932385359.9453.3820088327050072567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca0333277440b323eb94d3237524292aeeea2b90259dba2b6e754056aaca9e4
Date: Wed, 12 Feb 2025 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739323853
