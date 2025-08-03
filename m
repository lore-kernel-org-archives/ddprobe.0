Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255EC8F58
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754207394; cv=none; b=EF5K/MRF0xLkDzeBzimCM/du2KJkWlKFwG5XK5+EX1TjEYz3LanMRILEkhhBhxu6SuWNjje/epxRAz195G8ryKt00iOPDT7A9e9LnJ7UrnHyQZutaN1X5pQ7UPVKfhAp/eRwO3ubMY/rnBbWyTpwBcnaWfZwAt2AUhYaSdhzRvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754207394; c=relaxed/simple;
	bh=plAyyvDXz9+vtaBaDrjz3r0Ppv8bEImquFqMuO+hcfk=;
	h=To:Subject:From:Message-Id:Date; b=tyGZXF4AZeoHITVnhY8AG8anK3AxP4eNUDK/Mz/JW/o9xyGKynL5MWk92MyhxD6r0g+lWDhBVmQPtettE/LQN5OvkN6B4+oHnaSLNIxnCjYCIW31oqhYCK7ifk4/4ss5hFP0tOgbg5t8FhJH9trV20IG3CvD6k89pTYmQmCUGA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzgHBwpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzgHBwpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754207393;
	bh=plAyyvDXz9+vtaBaDrjz3r0Ppv8bEImquFqMuO+hcfk=;
	h=To:Subject:From:Date:From;
	b=uzgHBwpyZPtFM3RA2hUXJyG53Ay7Crc6EiGa5DAWno6orZ4V4PblR3C/rOG7vkHzt
	 IFKnyzSvSkYClnhZb5a8HQipLZecO64TGDWkT3HuC0GNpnW/+vjAniCEm/YWtLi2Nf
	 O8tTLeEuNqrV6KelDvpa+cCtatgDoxvRACd1tfZHrY0ZI68b+zUwJsxKZEDgdNRhxL
	 PMDi1Q8j2io95zO7zVPxoL2Qw2Lu3XNDEHKxZXbH1V7VDTuhaz0P9Jek9DHd2RETn4
	 4Xw7ALKaC/NbV7QROO8okfyDqUbuT8uOuBue+cgwZrniHYFk7G/kloary3R66bbsil
	 K7rXMzaF0kiRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A78C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420739357.4354.3266860876820983881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428b0a6b172c08585731dd89e011fbcfaa191f3fcb1e4064db7b5b0e5feec63f
Date: Sun, 03 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754207393
