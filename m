Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CF3362133
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777025254; cv=none; b=iy1jhnAU/VtvY7zQCs5P7Y4HZxg3HirnQrikwXZJRpw/jgIfd09b4ssuOyqm9bAHWLQjZyqdBPWLtpQzl94twSAOBMdCOI5wzvTRgChrdsde8dD44KE/Rx/ps7dEMpjy5meWQ9TlSIG8iEyryfBbk+hz7Dnr0WvPTd8N7CFF8Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777025254; c=relaxed/simple;
	bh=nGp+q4USXGkozxQmUTzZd2ZPCQfP3mozRG936UDeGxI=;
	h=To:Subject:From:Message-Id:Date; b=Ov3i6KQRFOcXYJJuXsIBp/qAnaHb/Tzx8Cc2Bq9w+AoMd5T1sUnq/sEQBsyvU0bUcUUe11eVdvOdVfu2CgOwd6UbyEC3wsY9K5HgLZ7FRF2+LOrfDBVSE7s00rf6e8SmGIqQwS5xw8BDZ2vL0oyGKbkqC3YvK1aGulqCxKAnO88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNBJy3Ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNBJy3Ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7AEC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777025253;
	bh=nGp+q4USXGkozxQmUTzZd2ZPCQfP3mozRG936UDeGxI=;
	h=To:Subject:From:Date:From;
	b=lNBJy3RiNWWl+M0wrOPQURjrWm08mmlxAm1/SMADvlyk347n7i77GzKT+rdmUoejQ
	 ZHOyAgWchoGcz+WhuRvRvEr7G/9WClVOlInKuq6jezg4pp8JHy4+nwXfx2NVW3Y9XS
	 91k/KRd6ALzWs7qSKNWuH3X/6FCSyYnSpXxcLYtj7kqbwAioaBr9E++cSZwtqLnjDh
	 gZ+7oCxvRO1TutbNFZw0CjTe7SfxO+Gbkp6x13aDNA9wPrl/mP1j/31f5yWSiD9k7H
	 KTRNFhjQo/tgmNXaDvtt//nWBcrKwdCp+zMxEEVBtDki86/MMHGP9QpKen0HVlu5+s
	 z2bJkUaW7Mm6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA466FE51FB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702525368.9452.5631094622623482833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08529dc80345e828d0b76d81f93f282e29f0fb25dac100ac9a89aa3605ddbd40
Date: Fri, 24 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777025253
