Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725D73A5E84
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784786374; cv=none; b=gXGdW0GTspqir1SQLBuHB4fX1d/+uXwxG+o4SJTHUE2tVMLb4pNrMr1AW/fm58R39MOzmWUZd6hGaqPw7PRH6uKtfVVYTjMkpxLcRxoQfmJ/ikWIKv2n3xSnYWZyGPNvyOZ8xc4gBFInSqduvyZ1nPZ1a4pQE960/8KmM5h7ZsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784786374; c=relaxed/simple;
	bh=eLQx+DPmR/koAEIibomECYTTE1p1oheNtbfqQmsrK3c=;
	h=To:Subject:From:Message-Id:Date; b=WWVIIVuGPvFY87OYUAy3uAgWktx57lWPPjD+KW31+So9SA4LvE7wgEHlCkMpVqoyeZiltV4P4NW9A+UY5kmGG0TM+s4Duqh71wnK3HV1CGk+dHgfECsRG1rgNzktMNtel6D4THNrrnCYtzyWHKj5bfq7Kn8PdWbnJ4XKGv/PnXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGqBfI43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGqBfI43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FC4C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784786373;
	bh=eLQx+DPmR/koAEIibomECYTTE1p1oheNtbfqQmsrK3c=;
	h=To:Subject:From:Date:From;
	b=oGqBfI43Ed4Z28Y2GwiIgHd0sCN88KfnenjCKU+Y+seHd3UXsoKddnj2C2jKG1Hts
	 vy8BqPp0Xz8wavMRBtrhGGUiPMAh0YGlUAZI8x/+FEMRXezqXEnM0qGr46nEGqlXay
	 FO5bJ1MBHa3B1Oiq/wa0lbmFJiH9eQPBGpSkfDS3sRLkkTouifRe3apk5O+IBtGYqp
	 pscyyQLUxVZ1N8JBiBhmVT/7iStRav+w3B91UrPn36ZpgwhtU+xMvqn9vAfuaXOPxI
	 8KKRFVeyfrT0+yuMuBV6heZq+nC/iEU72rxEEa+NlEsd126bsPylAjIg8OMfRJxxpE
	 /wqtOMBVncmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF3EC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478637369.4963.16643278717469187914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51095e34a84a587eef72a31530948c5eb1621eea346ce7d2ccda005654855434
Date: Thu, 23 Jul 2026 05:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784786373
