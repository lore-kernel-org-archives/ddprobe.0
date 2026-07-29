Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F251F391E77
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785349235; cv=none; b=kVnJJVHqrmA+Rbd96WjLc16jUIUOqkrRhCfuNFXPiM9hAQ+vEBj4Uvu+AAq3AEcCxcFTYF80IQ2U8ECN4FRaxI2tDYzZOPVu+M+hcvvFdBJAstnPJalhaMOKlepbfNnZmy1n3GGvwl9bpVMeogqSy0nsRzZzhGWagWa0Auhp4Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785349235; c=relaxed/simple;
	bh=XZQxHb4YF3WL0WDOCrsRYcP2kLIO7PZ5/1yc1S/Sl7s=;
	h=To:Subject:From:Message-Id:Date; b=b1BeLjsLyOZvFVNZacagiQhvYvCdop0JeVplyF/C1s5xORb8yz+1PLBoDswmRiee2izpTZa4IM4hEmFWmXTj7s+xBIHJdZynjkl/VhwTSCXhryVNeQsOVRVsksAG4Xgluy5a+08jyIOC+DCVJEec+1zx0MPS+Upp/9KUp9b1bLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pF9VNDNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pF9VNDNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5BCC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785349233;
	bh=XZQxHb4YF3WL0WDOCrsRYcP2kLIO7PZ5/1yc1S/Sl7s=;
	h=To:Subject:From:Date:From;
	b=pF9VNDNkay+hTjs9rpOCFmzn7Bz21zIVhiQ3LD2g2dwJS4xeg+2GgkAc6Z+c1e40C
	 zo8q/dCPwEvlEcel6edVQ/WN8Sbvl82qkQRHdTbAyuq3O3iDQiYXXLNwfLG4BGnHg1
	 PNZyp3D/WU+2jn6V2zPCMSDLJjxXi8L28ZfVmnFxNLbWjD7eeYP2TwfO2ZCp6Gwxq/
	 2dEs2ciW3aYBR2uAKx3LD2xaFADzlMQZrTX+ykodZc1OLHe8jJzlMF/9lSiCCg9Mbk
	 N6XqGc4P27+6bDO9tpTILYfPK4wJy8hRT7o56TUNi24yNdN9vmKXQveoXG9KvhF19N
	 lzdPeI9ERMYkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8379C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534923368.12022.1330162753997877939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16364dec74667f814002569c49971fbdba4bb4c515a48924a8d2140c1f62684d
Date: Wed, 29 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785349233
