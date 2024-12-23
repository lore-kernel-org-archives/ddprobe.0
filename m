Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8379199943
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734966353; cv=none; b=twZcNVYORbYSs3RTcy4x99Q5ldKw+WXNSotA9sPmOismu1SsBQhbCUdsC1wLCq9a2YXLnb0C56gx9pGY9LmmDHz60eAtIbS2JJFd1ga5r1KLwApPmjAc7w33zF8AbslKM1wC++bvKPfufFvs2vzX7fJbXwBlVWKQKGng6mBFFRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734966353; c=relaxed/simple;
	bh=U6O6H0SEw4A9AfjgP1aFU4df6okS62ZtOc6qT4nuuvc=;
	h=To:Subject:From:Message-Id:Date; b=W9JPwbiwhnGAgdk0tBR4+0jQirc96IEGBPhJ5Vx7hWiJd2YRScu45zlTjb0fuhVmv62Kq6RITJoBFIOndU+4hn3SPtJfwc80hSkznX88idYZToxQTFlrfLPRiguPBj3n+w5CsDQ1Dd82A0rQawPKkdflOsyBFjFHxCQ+TRTMzWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKHOtt5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKHOtt5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF65C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734966353;
	bh=U6O6H0SEw4A9AfjgP1aFU4df6okS62ZtOc6qT4nuuvc=;
	h=To:Subject:From:Date:From;
	b=lKHOtt5vbZXat+vpQkVXMhH0B71e2ZemUf9NJ6X73mg+ImTGK4A7VuEy6LAC1DGIV
	 KFRcJvuDdvuEVuhe+sykqzBLmP8mbUSrruuFyRH/CG3pNa7nUWA3OFoTyl8s4Hb5Bt
	 F3uywOO9nEKxGIcKdzSH3ee/TJVgYYtvMilue6MiFI75+/Du0Be0DWanLGKCEeHQz9
	 YLmc6XCAO+aLgTrbUJTfssrNCGkvQ++jK46f0FQWhWm3c6ZRO4Ja+nMGl8paB4Zef6
	 A4E6zwKzzbqB9OnHn1XjfiwmLrjZ1v+ZYJ7kjIN9DE+bk1eK5xrIB0pH6mtg9lmJTC
	 UGKsvAYVlH6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9893CE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496635360.28884.8604335196591197516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c1ea522216ef9af3858611b5a22537f8abcfc33dc7456e0cf766190e198996
Date: Mon, 23 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734966353
