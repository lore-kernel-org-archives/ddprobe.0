Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2434228E7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753534794; cv=none; b=DJ6M1e5IECaf8PyjXpJkd7XVXaBCHVlusPXeU+49Oxa8dzcefOyDcd6D7/JjJYGvyQMHb9n0cL6JEp6ZdkbR9vo4FRco+/OFWPQ7ZQ33vmp/LaO3Cc/Ky2VMGlPjqXz/7GTfY417DoE2uAncA9keHHBMU3Ss1hMu92JxIhg/8Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753534794; c=relaxed/simple;
	bh=6MR4+SCVUh1om2SaE/pBzsQQslWhXjuGkHFuIoSdxEQ=;
	h=To:Subject:From:Message-Id:Date; b=sE2H+e394KDhdJmrsNh30eJNy4ZhaT8u6IAFDuvp9+9TyDYlEtc5Aro0ESZjnsIPHrFSOceFAXjpV7SWdU7tWIcESowtJeEfSIMZT3jI2xJZv0fhnr4tXSHkDx89/8Kk398eN/DFIjAi6GnAFI34yc/Qw8mxmvQ4q3bToSn1zrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgIHn8NA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgIHn8NA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CEEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753534793;
	bh=6MR4+SCVUh1om2SaE/pBzsQQslWhXjuGkHFuIoSdxEQ=;
	h=To:Subject:From:Date:From;
	b=dgIHn8NAjL2D69z+e8BnGg97WoXE3OZltYJJQuf+bfcb2ZN3bgW38cPLNP/3/jitj
	 7KGQOnLDEfkVZQsNEgXwYS1SOnLEabOWF+TtyVPXDXmhY5r1Q6cDEzRhYvxXW+Ds4f
	 2oCoqyjeK8j92tUZ/mm9CMl15e7KTXyTqtW6F4+l4a2b1+l++GPI/7OfnyuRd+hcX3
	 VfNTk/1RdfSuuyGvv4Tebw3/7UBNtoDcE9u1wQf4svl3bAJCfJGx3S6uM/oschPrFH
	 ATd8nzcsQVc82ln/7VEH6XiDSp4FW7+RhBG8WFEHDHPhdkKC4ZvGa7wsxvCcWnjLan
	 QMbuELzaAHv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E81DC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353479357.23973.9953332556184854019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc74ad8c1e4372d6e6e2e27b53d7ced5180c2cf9e8eb57b83715d280e1f8abc8
Date: Sat, 26 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753534793
