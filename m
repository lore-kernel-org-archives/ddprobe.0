Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4F030216D
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792242634; cv=none; b=dNd1JwFqCqvnHVkNpDeoS5zBfvQy3jkLsLMRrBxhxJu45XImft6c0rCc0NUrb1vf20BDW6qniCY+bK7wqfnHRk68YUZ7eIS/LNgA6Ru4VSzJYuwP9FMkZE6vdX1gCfk+cOzHhShcYkEoNe78QWWjxwtqSMXYt13SraqrDbm1cnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792242634; c=relaxed/simple;
	bh=ulFR3RCRHVv9+JnPI/GMB4slA0+oEXYMiTKKwz1lZt4=;
	h=To:Subject:From:Message-Id:Date; b=VO7l/aJq454eudXbWlfJg5lQQq8TULZlUxokE2XBEDlXA+8jtNu8QUGHfKh6LtHNGU4L+NxBL3dlYG5rk5G4xswOKbK+ud61UMcJ/gHro3IYg4aF2ILofzr7I1iqDroesdb+CyWI22fZDUVpfyvwNoybvYW8b+TZuExB1R4qZTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pI+U6kWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI+U6kWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AF8C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792242633;
	bh=ulFR3RCRHVv9+JnPI/GMB4slA0+oEXYMiTKKwz1lZt4=;
	h=To:Subject:From:Date:From;
	b=pI+U6kWxaMDvYGpBdpXJ6BAD8PPmmmi+oifhUkEKcVrruZzPV9vkUFvfmlldoCH5g
	 hUloaqGNGAFimNcIKJ0Rdkn2BcsQoOcfV/w4KYkBCbiQX/vIJep8uj6Y2J5FNKhONU
	 e6h/BjS9kVtGgY3cxDh8xrPjWmv8uSDZ1pwpEsis7M8PkCMZipT854Vvx9/uKnYGov
	 O71JCedoRkfrWE0diTEa1zSAhbzNtBk9WhlWjlZ4ZnjfrTLtIsKwmo104Vcz/oyC/F
	 0rLWfvdJbjs+nTurdFNIjwHCp3Owo9mGtXooZpA4dFLwFqw+0qZ75kxtLi1sFfmiTR
	 n9+hMzujy3EXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA27CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224263375.13884.6085496827855646720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd444cfa85e8268c0eca133f6bac1ab8b6aaea63ff95c7d411017c38e259604
Date: Sat, 17 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792242633
