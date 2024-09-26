Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E701D5AD0
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727378754; cv=none; b=d3632/TU29DG9IBMawNfzytyeai5BKqUBvVFot1uoVr+Y52Qa5rQyVVbwoXsu2a+43yGYqXYNAfnXb1cihGn7bm78KkYNulgD2r2MOAxKQEpvz+r27IRgdC28U9KmxMa53ovfvShvdO76NoX97r+gOpClAmW0rpqn0I/t17KBiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727378754; c=relaxed/simple;
	bh=gh4Sj8sKh2iCnxYeBO18Y0sm4awa3aexBdNG+9oEkdY=;
	h=To:Subject:From:Message-Id:Date; b=oTc6bE+xBIxJdp/EoJ/Cj7N0bN83CREo15bxJZXkHptp0znf8FTvEg4E1xYImj3yl6UKOKbl2Bc3P+mjsgVdGrCx90FCkGhHOXxeb7argnKU/lWEESy13y7a0PTCS7NWdTkVTDh/6fqYCAElqRCmxSyMOBT7v+W9GSXnBrFhb5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFvYJQwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFvYJQwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD169C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727378753;
	bh=gh4Sj8sKh2iCnxYeBO18Y0sm4awa3aexBdNG+9oEkdY=;
	h=To:Subject:From:Date:From;
	b=VFvYJQwIjlMt/6pZt9HJtGQDG6QGpmsf7e8pmZf15zkKErZWT/M8tf2UFP8ALzM5q
	 CJtWR6AOff2CJ1WZRLsLMX9SJpTOzTKbGinCnRZBlmaxPC0k3SZRPa1SQTovDzazaQ
	 3hzVrY5j90nO0yGhh9YzuIM1CCzl+lA5J6dypW20KybL5kS2fxq5f98bTOvBUgFXZc
	 3m9SucoG4QQn5Pg+OwCWDmRgjAcA7cd4IhSOGg4vBkZ2/K2htdE7sYk8+PURezH+im
	 uHeFPdZfWTNlOCY2aRWX8294EGjh/6d2OL8jC/nVqQDrclKLi7Up9POIK7XfemWcBQ
	 3N/jMyEMjj/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B843CDE032
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737875358.9069.18107404623463020085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9e11bf0188519e51468cebe3a81560b2ccb70f36c5613e4d7b84c6d330f22b
Date: Thu, 26 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727378753
