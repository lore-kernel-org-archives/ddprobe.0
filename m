Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE7E256E
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723857354; cv=none; b=BdQ/TGaUkFcjc2j3MlJESztLL1tKFHAEyAqq00LPxA/vR852kwM0DMvLfJARTR3PCUFMIA3UNRwouf6JUxq4Kih/f7rQcQUbroXhBDOmqxtdBYiWrfUQb4LIXvprB95iJL4Kvl+pjHZgozuTwRZuZIusGUuSbjWOEGxq5tfGoRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723857354; c=relaxed/simple;
	bh=h7EM1cwb530iKlM6bXdIfhg9CrHQiaeGJXEv7NpM2UA=;
	h=To:Subject:From:Message-Id:Date; b=ToiWrpMg/ZEF76ZHqDiUsDfKvP4Sb7FRR1OL77HSEKRodTmt5rAA9iRTeEOxWKuuacTf1PQwoSIDnm9Dvl7jklgMPJTKp6lurKCOCQujkKv1O7shDXAYGkcT6+bEAWV+Yiw8hILPCB+b0nDVgzgd4sdMQCbsDbq1k4PJPU+l4Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDA4+Lic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDA4+Lic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7827C32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723857353;
	bh=h7EM1cwb530iKlM6bXdIfhg9CrHQiaeGJXEv7NpM2UA=;
	h=To:Subject:From:Date:From;
	b=LDA4+Lico2S2GAghpx7mQMPxmihld0dtHb8rYYQnY1+lXMDw3FTUxANoaTYhW5leA
	 GlitgR9wTkz4uG32nDxNERBwkw0JEyKW+/GvLy/15XXDjbxsY5YSLu+S0QqR6yo27u
	 NvaSukvRDw+f3hQI5JxcsdeHnm3OyCmCCutWulFt6qhNUHE6Sbt5LLsKF7hz5ItyH3
	 50gsfiE0jy51aIb+gwBXoU4QoNEYGiOwKAgbLHHjbypWell49DFatk/1mm5wurra6w
	 So0PEk/Kt22N6GtJ41TYiMYeUUI5zUxgRyWgCIOY510FXxKSQI1ikZSDWKOg5vO+Ww
	 9gwOCOTGhg1BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92682C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385735358.25364.4257231388026316903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b71cbe89fd494c4c2fc3382589b792b3e43d060d769890c1d02587d423cf14
Date: Sat, 17 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723857353
