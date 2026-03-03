Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3018139D6DA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772537094; cv=none; b=hAqvRuGB7wGiBh0N6bU5GP39VYMxAHgpPDdllLAyHoQ/dlUx8pcZ45lrlrOd7uc+SZ3Q/OxmPFqPJaumpVk4GqdguKKbQ0w7Tgekx0bePGo7xydsUZh+Egw676YpufGUe5sLlxUacn09n1ltp1dmBAW23irAMv8UJhiqCxxhzDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772537094; c=relaxed/simple;
	bh=T2mVBtoTmssv1IBWZkWT98Tsq2JQntLgAKEomzoJ284=;
	h=To:Subject:From:Message-Id:Date; b=XoOlNjsR16xfwkQ+ytrz616PYD3IqOTUO9WoKf4ys1zYhmczG+iHPsZZwe3VueieaTIWiuHhBlOjak2/nOZbxR1VOXd8eVC5166EtDEUXvMgKaa74nHFofbzZrfXAQCV6/g5OGROxhTvvwtDlWpkkRYRw3VgnvzWPSo01VXh7KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlV8b148; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlV8b148"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772537093;
	bh=T2mVBtoTmssv1IBWZkWT98Tsq2JQntLgAKEomzoJ284=;
	h=To:Subject:From:Date:From;
	b=RlV8b148HEPpEKQIeFL6VXckJugD8xj7ODTm30U0UofYaCm37gVEG4x0WFrg/6hAa
	 tcaJDviuG1Vn93jUWqJCNi2KtRVTgC1TkrC3svdqCvZnG3bTvu6eAWqizFAcKNMrZP
	 YMjnBpBoZVzkz3gVqsvFSKksS6u4teaG6O7nEYco8LpPAuvnYm7BDlEPwH2NDvnM8S
	 EbJkABlMWzwCjyDJq1yXcY21NOYxoVjdpZuf7S/Z5G51aJ9pqh2DWRPrrQweTpblON
	 gGh50qbaBetmAHs5zzzklxHYsnWZPQwUaktP/FwZXouUB4UL0ZT6oBtNU/7xdhzIb6
	 FcqdQpxCoWJNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E79EC1431
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253709360.20150.10869320609368864723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583d1abf0df0e036c73169eeb4a429b46e84718d4fdca925e3ea32abcba2b16e
Date: Tue, 03 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772537093
