Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D23541C6D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727038554; cv=none; b=lyyul4NQkLddUC/CAGNg3zb76fGzuB+pm4zn9Uk1Q8tK39OQ0lQxQEg8TQ481p5rygjEP67dkk6ME3MiAgz0fq13Pty3U8mg+fwDCwsDKoIcNQuPifQLP0jEDwGAJBIS9k/YnpFDpX97CRqCGbvO+1T+CckQ75hvyAIwOzUDjzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727038554; c=relaxed/simple;
	bh=gtD0qOvajsCc4xEbuj7xyNAkcS3mjJHk1ec9QtPdRhk=;
	h=To:Subject:From:Message-Id:Date; b=NkmNHnh6Ik23VI2l3acaxDYL4dhyg+TN9R5LIVqBakBXBBTjozoHsZimch8lfwA6Asu5LouJZWY6mM9B7Ee/90AHIihJV6YqfgSAznabYGIZTBrKTKhZCpitHD2pWiArENoCWQayxarG8lPCgIr4Gjvhe1p8W3yU8ucytg58Hho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmmS3uZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmmS3uZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA1C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727038553;
	bh=gtD0qOvajsCc4xEbuj7xyNAkcS3mjJHk1ec9QtPdRhk=;
	h=To:Subject:From:Date:From;
	b=NmmS3uZg5i9UPPwCEmxesF0Vk4wxdPgQB5iPvbFrrerPINFTZHhHp4wJJ9PPYg1md
	 VFK4pH9o95oakGNQhoENPAbOcNiVk8JaIsmr+pNbvTtyL3Af7HjksFE/KwuSBzW07a
	 99Vtmq9HsnFIodDkxLsVae6SIFvZy81CVOx6H+G+O+bxD7/nXwjTiBtgVdfBz8bA1z
	 SXnI6oIrOFNO49shC5l9qyCnIEgtvtRU2ZTA5MS54usEwoONT+ezjFuSoCfFhtimqa
	 TP9yeKYquRWH51d1ejjqjg2QpZIIYbg5MF7fjZ4ZPQK/RLGvbWjtP5EoXvD2q1/DKy
	 ij1fEpMPf1xRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E0CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703855359.6090.8471407476210979575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc271ef8d8e26c235b8143e3c164800fbcd67e44e4ef53e3d1426286ae81ebb2
Date: Sun, 22 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727038553
