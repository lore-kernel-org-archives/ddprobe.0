Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CDB26AE5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775082934; cv=none; b=byz4PoDZOQrj6E1Fs2dbV20t69/5w4APqX5wOO+1rmgy95pmv/yMLqMUl3c595LOnXDCXv7mQth+Uh6zbwtDLHg4Qsbk9J5X9GpNakHWofVEK/4wukXb+Sk9EUGGfmIdMnZ+Clo9s1ZefAO8VVqyXk9NS8zGY5jFgq85OoeZn8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775082934; c=relaxed/simple;
	bh=C4Mf+zIwMQnEhIkQ6bVoTxVP8aEsU07ybY6aok+ZVTk=;
	h=To:Subject:From:Message-Id:Date; b=RIkB8jxG+Gatb26paQylHh8uHTumg8u05BNamtmdZCxZGixulYF26ssydmKBODkj5MzqhWXWlMnEl6eYpmYrNVPOUYaYT+nIffsTy85w82TeswlG1l4O+p3vaLmqRJhdk3HM49B4MbWF4gfPD5UVuR/W9xF5ljp3aQW3+46aQb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU/QsZhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU/QsZhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC20C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775082933;
	bh=C4Mf+zIwMQnEhIkQ6bVoTxVP8aEsU07ybY6aok+ZVTk=;
	h=To:Subject:From:Date:From;
	b=mU/QsZhWV64XvkWrBATHvPB1KHmmJqkQVX3l6Koj7hpBJS80elKytNIu+Q627TAAH
	 Na9WMNQuTHf0TYcUtnCz4bIinatDrKMsjKFVUkdqdKlBX9CoDlBKg881w4ZMsE964L
	 U/AniEPB3pZRaECVir3dyasvFMM9MeQ4NVHeIdeWDioflmGt9091KjQQlMVjsUO6f2
	 tXGW81S6oMGUadMn5IkmSM16YT1kF1dhhE4/h7bLUVrzyRauwIFTQ2UoYR42QWpwZn
	 46YiiSJ4jRtz0/BqLjAzKsWfEHgc90bNgbQI4YmbI8HvzaLYhHxdSCCOTy9UqvqhCp
	 p0zxCQGNjKAmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8DC10FCAF0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508293369.21682.5023816491737689451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8a7697909451710be4874860e12c2835e9a0e57b9e72c0a60b365b44143dfb
Date: Wed, 01 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775082933
