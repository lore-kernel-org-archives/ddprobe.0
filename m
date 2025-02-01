Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B1118872D
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738410954; cv=none; b=dMkC8lTYNGfy3IIUX+On1A28SUltveyuHXNIr5AAwEtcUSKy0Qe3tIhPlAVYzeKQqrzH2G+ayammLmJ9ndSflhx31hbXBsLlE2sL0qDNEa01yL1opYvGMMfbS/5dxICx8lI70vukIomBTINKlfrp3p4pMsAGYOwU4CJV/537NyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738410954; c=relaxed/simple;
	bh=a10rvb5/Pk2TGgVbPtAtX2ozn1QLmHauB2Btfz3UaHA=;
	h=To:Subject:From:Message-Id:Date; b=Bc8amSbswWVMgoIYaeKFjbKcVJpShFxZ/LRs7EHjc/jurfJAvRyn4M/7GFvobsNjqL7W2zMACdzymC++0VlPfQydW6lwYuM2Nq7uDUAEn30YiCW9a/AVuHeUsNxT/Oh3GaAfL51aTsHcCcvJjtxBKUDDtwTm6kWzKmu7KaSfZkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RV6dbM3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV6dbM3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA90DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738410953;
	bh=a10rvb5/Pk2TGgVbPtAtX2ozn1QLmHauB2Btfz3UaHA=;
	h=To:Subject:From:Date:From;
	b=RV6dbM3o0+G05os443i9Py4eV3uqn3DlUgEq4HXsMKoriLabzLAJUakjIVo4hGl/2
	 WljPSxznfuAd/wciKSGaYoh+op2s1U3Duv5yOCZplY6NrUCMRI0sQn/Prv/Edi7CaY
	 s4co2u2gPba5nI5oQwqGYLKfLMzmsya3fo53Q9ynEXKZ2P9+cXy7Dwk4gPSXd9Jt7f
	 ZALirSsEEAsDORJflUUrONXIath9/TrkFp8fuSdQT2ecMQYW3G9ToKe/V+gwQi33dT
	 aB2sXdndLUWLR0RafVCWH6y2Rb0rKtNxVNiFI0yiBm55BJzMupi7qHQNdwl+ZV/II9
	 D+hh+gIxuRYCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A1C02194
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841095360.17021.14769238190158942784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4282d4075a315a90e056801776763539c34f86bc923fae04ecd5aaa1cfc62931
Date: Sat, 01 Feb 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738410953
