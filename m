Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D043199E80
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743254995; cv=none; b=noKiycd/A7HIKFKPTt4lCKbAsKeJ3QTxoc5VXQa3Orq+v4UgVpD/2X9bhaZF863WPuK/KYTqrIxXxnJtmRShhQMYTbXnPuM1MRyhEeWiA5VgoXN8oo9/sz7oSN/KieFAT+vZO+9muvx49KBiD0c2+AAOXWNHGBnYsB1Hla0nSsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743254995; c=relaxed/simple;
	bh=6zC/mQlfSN8VRUYppMvAu9a2ijGeqdskE2bbr85SiZA=;
	h=To:Subject:From:Message-Id:Date; b=RNEfNXrP6ye6WtjvoMvvjqF6JoRJ4OKDc5q9W20Vesgb2Tbcnk4gZ68vgw3isu7VxOsWFVsK+DCPDYE9zks/pmmASI0IBhrkwUEE8ki1eygD2+LtsShfXoHPNl0bDATPE4WqXimKigAXGAdl85og8Jl9t2XK4CRzwbmplIR05Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJja/1qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJja/1qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B8C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743254993;
	bh=6zC/mQlfSN8VRUYppMvAu9a2ijGeqdskE2bbr85SiZA=;
	h=To:Subject:From:Date:From;
	b=iJja/1qIk7ewKm0B1EpRzwpvni1KIWZuoorFB0FXwET0ZNrePkzidUGgmfRjVIQJq
	 iYZjAkb3eVpCUMXQBTYEwmBXBGjmbkRxRYR3FNG+CQYjvmI4naQCdQcXRxiIv0SqM2
	 TpwkEAAK8NBa0pAmlDoQvQw55LBwM/KuGlvJ7bMxZTSuqzRRezFa+HYtGNS6W+BeLr
	 IruIwirrGldjK+alxbdDq1msV9IIdhwAw6P7aN3Xiq+aqZpIv32QgC0K3gsVumciNV
	 PQdr2nePvpkCEpFUDSAf2anTjQk7jaVVufroXBkz/OHTkUFds9d9YFifDUSm/mGRK8
	 MSwv9vcccozHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216FC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325499357.15604.2799421274857224695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ae01e2134471cc589e4b0a8a38a572affbaa4ef08526e471b34a76d669607f
Date: Sat, 29 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743254993
