Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526B548EE
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776479254; cv=none; b=oyF9Z6qQ1+QmjDl7gOayWV2R0msuskqxVfKWG55oUwWPBDJjqd2HpIkt1DNenqWRW/GLTzqZ7uUUTOJxmQbxHWzYtLCuVL2w6v2TzFE4FcdiEZ98k4gzdKzLJksuh9DNjziAakSIENSTS8WX27AYrk/BtpLY5YygCL1ClVgku2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776479254; c=relaxed/simple;
	bh=QxPEp+WLyqlVfAUosNWq78j3vZUZ4Ui5G2Y/vwmaFIc=;
	h=To:Subject:From:Message-Id:Date; b=jvmCr1Au4aFHn7RHaVXovy7wfQt2ngefPDBLEuiyIRn7M54ofpdYvsu3I8VSuHx2d5n1fAszULbf7jvyI0YmVq3U58mv5c6FmByS4/ml+5xoZdKe6LwbZePdMDwH9UKaRub9CqanM+OGP3ncg4qhqxcl+7jRi1wF3xMld8GOaF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmccygVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmccygVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C262EC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776479253;
	bh=QxPEp+WLyqlVfAUosNWq78j3vZUZ4Ui5G2Y/vwmaFIc=;
	h=To:Subject:From:Date:From;
	b=cmccygVNavNSsgSdPVVq6Brd8OXWgLGgBp/R4FrMMJPRFHd7XT9PpSOS7efCGA9xp
	 3fiecsVOWtsAElcPQgWEplOfTGjOdK4FHE7AhnA/xtscBlNZNZfDp6mUdEsQ+7NORV
	 9+uLFaXxaKa+HirhgcWVeuw+/PhZsiVguNrSIjhhyDIWK3m62dpaWd+40Jj2xUr1Bb
	 1h3tD9FYdw231yzyiOoJQCbxfDfbn974A29/n7sCLaqw1PGkVSfi/fv/8C3NthIDaR
	 mO1scCSFo6Sb2nTHxN7kvkuGdiSEkmL433oM98b1gMxSoi/WPes1mD5AB4cvKuF4HJ
	 +0vtCLOmcls2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA7F99C63
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647925368.10634.9645084470082377337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97ddcd1cdf3707db40477215270cc5988c979c258ef9e6a6c2271a1bdfb4150
Date: Sat, 18 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776479253
