Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F0D1CD39
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713897623; cv=none; b=hZduwEcbc5t1QEbIR4JCDPz5t8PvRwNKHzn3cPH7oWGLPWC3ZoZbeVMnEfGg69AKfnnmjvzwPvaH13NE6tOd3vEGBVBTRpiGV/1VuHcMelSCWZmffj0WgEQlxrtpQH1oXT6wdKlzBDmd3JPjQkZXbfQ13lYyovxDn1htYMco5Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713897623; c=relaxed/simple;
	bh=m75pDE3P3NTXMj2aMAUVFesfWstJD0V38EY38nsJp7M=;
	h=To:Subject:From:Message-Id:Date; b=brhKpDC/MucBoKc2+YfUKSAvwxJTGWfK4mwFh4MFdRqQjcGY/9U5wgYrjNHVl22IshLceDp3YNeCjCl/ctWPK90AvrL4mKiW4Vyusp7ULuteU2j5BfspJBAkAtYE2UWrW/VGI+CSkuGT8BH/tHogk3t1+zZZkS0SPWWixXjMO94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8BDi9W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8BDi9W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AF0C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713897622;
	bh=m75pDE3P3NTXMj2aMAUVFesfWstJD0V38EY38nsJp7M=;
	h=To:Subject:From:Date:From;
	b=R8BDi9W+HQKpMVsQqKxzrlGXEI92HyfWsG1AvVDPIXEl0VlO/EIoXMDnqXqI48BYt
	 GftRYnQj4OIAinCiMQO/4PNju8JPsLgoRluMsJRFnEtkbtrzqC9XiRXZ7mM+Yrr+F0
	 lkNkmskanIIgW3kluax2kwefB5xZduAA/7PeIaoG3JcnY7TQQ+Vm7dCVfs/Z9cmGGg
	 O3VEq0HsNyuKII1ZVRpqGTFNTEd4myNFkfHlCIbywEjIxk/ZHZjSc2FysFvW5q+MY/
	 /jkT/DC1EBwJa2PXebujLc96Yfdn3MGND7z1OJU8osoX88PYwWewLYt0Y5w6G+2Fpi
	 d60R5j6N9fnkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E6FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389762278.27932.5006761045937751047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032be9eed0146625bb90847fb950ace5a4af781fab0daab0790021aadff76806
Date: Tue, 23 Apr 2024 18:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713897622
