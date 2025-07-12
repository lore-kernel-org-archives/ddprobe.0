Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2917E22E3FA
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752328794; cv=none; b=qxlt7gOAOEjaUKg4b8unISGS2ZRfk9uEUSBUqfmYs02xkDq/jE3bHXHNFDYtP6x8G8D50ziayMmeKNOJgY4P4laPhI/nvY5j+0X6c3aZRd67gA3md44QD7/nO90fI4aHucZHvzP4Kr9jsBJTvMLPh/zXOEp7PXadsWLPMThDLP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752328794; c=relaxed/simple;
	bh=SgosPKG1OfHtCDKi7L+R7cngUxoYtnRWrynjWEG/0hU=;
	h=To:Subject:From:Message-Id:Date; b=UOmTGGV0Ik45xLFMPCyAeKZXHoLrUBshO3aZoWvuT29/UMptfe7q0pHzi8wzXEC9Efd3dVbYqYtUjBYg5D3Ez4PtUwkRk1rBPqF9+leT59h3INZ0NJZvkiF2C3GOIUzjCnLW3s4nixdyDCdVK7SwUJBDa96qmhc96qHbSpYxbfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS/Fxgpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS/Fxgpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0599C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752328793;
	bh=SgosPKG1OfHtCDKi7L+R7cngUxoYtnRWrynjWEG/0hU=;
	h=To:Subject:From:Date:From;
	b=IS/FxgpoaFlZl2PNFtxW9hK0ojBPguKcKUqucewatfEHKXEoHl7fJXXWodAAsWJ41
	 3+OA38sJuFlFkkkLUmZx3+toR9cVb28q9fKD26rZB18TmJ1U4nsXPcswZYlzu76drl
	 YzvqUYHJHRBQnENC/11OnhxErizpn23NyJ0eGilO/SEJqOrRzdBkGH7u9DTwanicVe
	 IS/1WCNm2Satti0NF29SiMQViFAiugYnzIJU3OUukMV6SnxWgsL4J3aSlDcvzhbpBp
	 YPM+4zTi+yxUFq2M/b/F7NxHdOK6phUnaRMkc6uix1PwQMZL3hUUSr4ISeF879tuOv
	 Ahhg56Th7r7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378CC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232879357.22667.5617780737994756905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c526bba9e987da0e576fbc31e7ec7ff5441ca528cd6db4d683196f94f1a232f5
Date: Sat, 12 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752328793
