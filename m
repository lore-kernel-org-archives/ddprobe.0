Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1358D154425
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771754094; cv=none; b=iTycTLWePn/6+6mJteXPBLyrUt6maeN5LMNVB7Am3CAz/yXVy9lXeWFcgpcoTskQmnNRfM1HQvt4B0YFXC9mOGPdXvhLNQJ2Gelur7B4FgVoIi8gTHjnC80T2n+XIZtIUDKZiNhs6z0b1TfsnKFAMLvfV4jj2e+Hq8PTfWGBbcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771754094; c=relaxed/simple;
	bh=ud/DB1CQhqdWfcVjer6PWx88jgOjOYR8StKp2DNdfSs=;
	h=To:Subject:From:Message-Id:Date; b=VjPXWl1H+PYaNJajUTjuQh8/jZnQ86gziVTP8m0yKEV9R39vCKzjnaDG7Yq8K/x/lOgTkyMpLN5ugEimlMYQ3QgYImW3VhAd98UNneAqZluUVsfz5+3Loj+FKNnHQxv955rg1Pzr7EQhAtxQzOmMMCzKC13Xi1UzIrYBUVE1yDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEqMZiMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEqMZiMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E91C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771754093;
	bh=ud/DB1CQhqdWfcVjer6PWx88jgOjOYR8StKp2DNdfSs=;
	h=To:Subject:From:Date:From;
	b=hEqMZiMvlQ5H0gOvpB1UDo/8uFhMhAINt3GGyP+4j4tMbvU1dzjnxy0WK8jnl5FZy
	 GT7lFPCF73wvtj9owIvOwuViqW8il3b+NeVSDC+7mDMliA26wCfbuIZWAFFVBq0KAN
	 5G0pk6gJjFdqK9YR2+McN2IjhObBzXyNRHQNd2j/6jyaXxSssm7yrJxVzDXpX6gvOq
	 GuGMyLkejpzXHwEwYgHowyBtbVygBnHpnPsipbYenBvwiABNNqewhS6o+E/aSwe32+
	 tkD7KqIaguUCQ3/DG+UFo/W9DcEGWhv2+8gXY/9XBUZpSvWGt28S+Gnjec2tQDjveo
	 oeHeH44MzBZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A43C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175409358.868.12685137634843904877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a97e56e46d48c9e17934045964fdcb3dc85b0c52f60073d678edebcdec3dcab
Date: Sun, 22 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771754093
