Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E4128DB52
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767221634; cv=none; b=ghEbVZE4QwmMjt1fsnV/fl20Kwe8ZV/hSmOSXdZvh1/wJ49L3vnhSb8vWQn50T47IXk6ULOGK/BjLCpiKqJLzhg5bYps38D4togbxf4Klhv+uIsCVWikmyrQaIxfVzVZ/SBAzSbSkleFQMAbiqpBcZNbcCvquW9d4Cy3wJauikk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767221634; c=relaxed/simple;
	bh=TFvKqbdmm2ByL8AFQDmf4Xn9h4eXDWYwJ2Hl3QSOw1Q=;
	h=To:Subject:From:Message-Id:Date; b=c34/MsLUb4nXokJH3QXccruqv1ZiVshoQLy/Mosy1eYl7f+kLONMgFvEY9Q+uoYnG7P1gmxUjidULHTwkBJ0wCIMd7ztFGnC92twni26aBr6mxoNnW+QKZI9X0riwA45+6iYQ+lgvbko7Ezg9NpHFtoPkzWYFzC+u54UL21e5tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMyv4smn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMyv4smn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7905C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767221633;
	bh=TFvKqbdmm2ByL8AFQDmf4Xn9h4eXDWYwJ2Hl3QSOw1Q=;
	h=To:Subject:From:Date:From;
	b=OMyv4smn9u1P1Ly6OH6UAuy5vNw15LtJkUN0GgU+IFp5v2GIsbTTW0lU1CV7ERNVd
	 kWm1TYZ6miWgrWscJQK/VuonhL8tvh5i8HgokHy9+XcPJBi2JAAOqc7LvlazTfUq/r
	 NauxTyxVYMxkhb75zhDsCLlmB2N4L4lu5U7O2t9vKM3aX75Mce3qxr5v/IWQKBY+No
	 Rw6Oyh+9Qg9mpIC9aEanVDQJGFktB916XO1WQWqv9PkqxlXUNM16wsElKmWQYSXwUa
	 Doi+P+8hhoY0jsaQu/4VTnwHmxxwlczWYIZNNos6J4dEbMjhgb690OnWnQtAPoJ/Xv
	 wsZqZdsGmzjfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB55EEB570
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722163358.11311.14514655054308578651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f04b5fc75be723b3304f531e0ed408f73e0d726ee781c93475f614e2121c2d
Date: Wed, 31 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767221633
