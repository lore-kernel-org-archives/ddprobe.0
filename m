Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1EE1F582F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751327394; cv=none; b=K7GK5M3aPh7rx8Fcsotukp296SpHpxk9c9RPXo2AydaPSengRY5m1USjRz+qOukg628i6VDlghUfQtnZH9+7rxV3GvE52nUxOx1MaS/8dOgKO1BRPCF4hZsgvtJCkAvgxEZeDiggeT2egLr8gJszciZcbGWhcTkq/1GDw3SiK2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751327394; c=relaxed/simple;
	bh=ehqnzhoP1iANeDECqK4pazKGWQfao6+Ju9aPcLsAR3U=;
	h=To:Subject:From:Message-Id:Date; b=gUoIuyVu7jG2lCMzx+QNfoB3nKGP3sgDpAkbzT/2DAZggmMEQKXE+ZSz6JORN9MOCU6q+V68T1L5uQdYd9oNyBpSvv5LYiyDMXw3xtTl0OnYevLmzIISbf99HcNtjwEU7JCIBFjQNdg9YxdpQW1wMnibDi2EauIfd+xTiTnCZEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rN5TXv0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rN5TXv0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE11C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751327393;
	bh=ehqnzhoP1iANeDECqK4pazKGWQfao6+Ju9aPcLsAR3U=;
	h=To:Subject:From:Date:From;
	b=rN5TXv0jefhfO/hD/YCfFlPOKd9oz0+8eXNx/KhW6LzeKg4XZwjocvPAov6PKe0fR
	 1CMJQTVhOyJZvx/MczTVOZHbqpbcvHC29md1hxFwdEjx4NtPAaJBbglesugBh0j6vH
	 mS0+6QLn9qKWqf3riX6K7K2ayypvY53Chn/vrokOWLrnePACjMLuNG7VCWydTWWcw4
	 n/lwDbXsz8KOt1pqOz3ilx/w31N1BslcsVT7xjPK7nnY6UBXhnTB25QcZsfL83vgMD
	 IBGfhl/FElkj1TrpmaVNQ/9brpFPRgSKpkaTkS9Gk7i+Ls/7SzqR95+ERvZ2DHQaIG
	 miPCl3X0EEfNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF9C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132739357.2498.9162465464847265076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f8c3e0e481ac7aaf0c06b781e43e20a9fe6fb56157ace33a13fa3d15993b91
Date: Mon, 30 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751327393
