Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DFF78F4C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751081394; cv=none; b=McoFma7Vjd38+rXstyflA7Z+Nr8VS0icbPSF8QEXN5TLekd2XnrqHkkXTo2ab8Bb0EW6qZSUDOrdzMsvLpER3bAjqxBewBbep4yjTDN9954LLH9lDLaKv1VOy9R1yVEp4JzHKbZdNOvZ4Iw+Cwgnz9qqXv1JYNbhCbmWixY+9bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751081394; c=relaxed/simple;
	bh=U+XYNYF36P0/T68QGxmkGe1a1SdC0N5G2jJt2uvPOhc=;
	h=To:Subject:From:Message-Id:Date; b=jh98saKlERcGL4UY0u5tQ2hcl5R+vl0PSqLNFvJx8wABnZ4XfNFhW3qCdasQORAv5b/NaVFBMIh1F7bEvOJOxcfjzTyfqiak3aCBtqOdMTGwi9h5YvN4wg0rWWfCVoUykK16YYXLBirqeBdWCx08CANqX7tkaHxHsoenEe4UAUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm84cAU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm84cAU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FBFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751081393;
	bh=U+XYNYF36P0/T68QGxmkGe1a1SdC0N5G2jJt2uvPOhc=;
	h=To:Subject:From:Date:From;
	b=Zm84cAU4Mosw0CP1AEZZjXZEeKlgDqWHisRWX/aHPbzNzm/cCHRnnCAjJj5E6nTWv
	 5AyfxL4ek5QIOONLbc0rafal5MBAgfuvNin8faGDu5E8zr+gnXJsFLso6QN2hKdtY6
	 2GAHNn5NQhIcn3DFyFdSJlVrvSewcllgkATMNBI8P7dwlnOqlxzHIfzyRTpSmiGAEV
	 blrnTpVVno/HRmyfrppvOyG4ba5cxiBA1bz9lti01olzkrjZRxEcMpSUMJS1SH5+Ur
	 gwFsyu+d80lK0yurC7Ek26eLdGuN0SaMkYzZPaQyDSvqQZ5pQ1Oqc8Da/GRyfMm4QW
	 88r0HnyEG8ZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F25C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108139358.27047.1572921744057652582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c8bad1cd0e7fd265fc0bd240a7dfa95e6d1f5cb8ee4574195b806a92bd9328
Date: Sat, 28 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751081393
