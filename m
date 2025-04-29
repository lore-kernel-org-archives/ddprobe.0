Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3765621E0A6
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745939395; cv=none; b=L+4W+R5PH0AX9KSmI1t3SJJ+QMWtuwnQSzLeXEMuqAxyomKbJ2tNIwhr0raYzf9lmbsdQlyvKPk2/Xdjz8dKPMnescON8/vI8sEocsHqJ4FMsNd6LcwlEzQCCLq/eYHsqRhY2xN4pbeUuMholoHFwZFVcMdOn6FeR7ntIrERPcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745939395; c=relaxed/simple;
	bh=uMj7KNQ6PGrA0WMpGqJXQ8rOh4zT0YEh3ACJ4aWqYpc=;
	h=To:Subject:From:Message-Id:Date; b=JCxUCXfhsfX410Aq1uD0NtxzBw1ghBHcDiAUuvfdjtPVevYw34EjjwQPwudv8WMQd3hedlul4NcNC8T8NVVlZCryGpYcaw0MLOpP9PK6xnts3apeMfM5apdCFAvkfTe47PHKYuhhJMfA7BL2GpZi2LhAYgkNyDT9s/AR9vx8NQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow64dtYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow64dtYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A092CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745939393;
	bh=uMj7KNQ6PGrA0WMpGqJXQ8rOh4zT0YEh3ACJ4aWqYpc=;
	h=To:Subject:From:Date:From;
	b=ow64dtYihW10tOPkLE8WPN8cug5BAaV1y5+4OA1vG/VbNYlV+Nw89e7T5KMxYLZDi
	 T7dpCrujOOuzHI/cL2CNPWJaGbvaYnfhtbduoYcAtkTmhog0w3Alu5odtOR7gNh0gX
	 mBHfiTxA+J3loOE0Rwkmn2MKK097bf1aBh5/bXv7OGXG5BTej3Grlvo7cbECU15D8C
	 U0uOTPtyD+BgFHt0rHalU+ZqQjuMg95tOvYN+NO/qY9eaOTJ1NfS4AZtLEcIGPDRhI
	 p3ebrRulhPAbx6bVFy0pYTsaLou0oZuFifbxaRnwQf+D6+yYvZl9/ve1vi815sVZCN
	 isvgkQj1rYJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84DC3ABAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593939358.2584.10116172947930364614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96becbba697fec6bc3841e3958099e598fe6f11eebee078caf895a4deb6de398
Date: Tue, 29 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745939393
