Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E94B1F78E6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778400034; cv=none; b=IjgVqi4jkMXAkEbrncZ+1GVs3hx3Jd7fyKaZK4o3lBGm+EI3xVYOKtpK/5jOpv0od8EqC/LLr+NG6cpMzzeZt7z9eIw1qcLjKWY5veCZD6iYqD9A23lBCkN6ru1uaq6ntJcFH14IGxdUMkS/eROVxQqkdIs0wYiYDIApLy4lu8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778400034; c=relaxed/simple;
	bh=zj+oCA324SVaiN09/Bi3HibmQDr7hKyrDWczHUExUsw=;
	h=To:Subject:From:Message-Id:Date; b=XZq6Hn1GWWxqMXHPMFKhLdDJS6peuOtpVLCt8U4hul7INfOLQSXgYHOgQTqmDh+eXsAPSAmJviR3mF0KHF7m3dz0qpxLI+Mp4JsPUWd6a4neCWdymlQesIEqZV+8ghfYahYyNCv8oQ7pNFjhmhhEbpV19HqXiYT7iBUujNnGQ/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKO+8yNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKO+8yNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C036AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778400033;
	bh=zj+oCA324SVaiN09/Bi3HibmQDr7hKyrDWczHUExUsw=;
	h=To:Subject:From:Date:From;
	b=jKO+8yNHzSUI2azwl44VkoxpmtZyuAjqpFRnTWAzDq7SmzkcOtlyUwjKW02PNykmj
	 PhqyrpHmo6m4lSTm4KLidCoha0jppH2TB8uzVoYAKLtEN5whYgDIRyncCkarULCGjH
	 A3gRS85YEQYas1PAf9xTyOWsSptc637XJifK+Orrd0ItMCc2Tw6mFpkB4Fse/KOl2z
	 UOB8ZOvBBSv/3zH5hfF4mAWlsM0tT6MwQe9gXahrbFsNN8SgwTi1E8sALAIMw++bwm
	 Oh0ahVFk/092Q1nDbMY3VHVcIswcXMxJU9yeN2YkdbsOYJsN27jxODevDmbIwxMcDx
	 93NdkK5cLV5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC8BCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840003368.9970.7199990939917161518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6237625feef490c6f0705d9dd6d6a521a68e9f82758deac80b748100df5fa3b1
Date: Sun, 10 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778400033
