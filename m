Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42681198E8C
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741789134; cv=none; b=elZN+PrUZbXCU9FcC5ZpMvdCdTDyTd0sglrYJ+4HELb4ttT2DTf126aoU3/SrlBqTEPv8rELCvq/PLRYFj5LS6aNCxtmtJ14pqtC6BjlTu6XhnClPsVE6z2BD0LDHaj3hPHN7OAhUcKfgVGMuZlbFPHOOtANfi9WnG5Js0atrec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741789134; c=relaxed/simple;
	bh=qqr05JgksKJtM0NXqoRbtVv0jwWRX0FKOIDRd83K3RQ=;
	h=To:Subject:From:Message-Id:Date; b=XcWP3R64ef9PvneQmRtTF7XDyvM0bJAjiTgo+VV8aTMJmPZIPec1NIsyeBvPyrtstnNV5Pj212ryS98YpiKqBmrdmVKHvTRb6B8fulZ8b53+HRKxqEUANwpqR+meVVnm2wqwzNyPVfQ54SyZx49JTqrMh7F9kgQckVsW215eOWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjEVbY+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjEVbY+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D0BC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741789133;
	bh=qqr05JgksKJtM0NXqoRbtVv0jwWRX0FKOIDRd83K3RQ=;
	h=To:Subject:From:Date:From;
	b=XjEVbY+3Cxsg79Caogicsk92bSC306fR4W3BlRczO7777fYq6Ly4RifpcksEYjU5K
	 iPBm3uhrhQs6ftY0dVikOU8ghLwZMILmqJF4uEpN69INXGSvoIcqmM9uyuu9BetaWj
	 +ZCsGcjGngOmiuH7aSknJNFT3jJL4lCumxvXMbaNiO1EY+Af9qcYsaGKTwcp6Uxp2w
	 4K7fpLKhWlWpDMG70H+jZW5s+U13Ioa6pG0zTSALxNERK+FGE7cbMRfidpfOOVc1Uo
	 9oGW+36vtAB2IxFk78i5pl5NZ7gHYsmMAsxOMS5JJBYXl5Qr4mW4Ba7qtrvNeF36zM
	 5jGmiAmQx633Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E686C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178913363.709.6323818581286508775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65384c0d8805839392defdba8ae0b981e6406fa4d74180cb786b3e58bac410d
Date: Wed, 12 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741789133
