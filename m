Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B692BE7DD
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789934434; cv=none; b=ahK3Ba7yjIXV7/4DPieTuwL9l62tjz0hD5bdBEtrRoXJN7VJcVZBz1CVjbuO3Fl9Z4FZgz9LCAOqJLlhLyBrquQs86t7enY7uTHiETfPnTYJdzyWuARaeWwDcv+Jm3lkhHCKIaKdiKflHoD+2RiIotygxEQagY0MzP46Jh6vbKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789934434; c=relaxed/simple;
	bh=Zq32WMhxxIS+TbP1ZbfzDC9wNJ1ne5nYX9w7fE6m528=;
	h=To:Subject:From:Message-Id:Date; b=MUhTgF2YyumkgjhGc6Met1E4j3nKYm0viczX36ZlsHsJLfmWzWRPzlla1v2nX6ZWZNyZao7Q4kH4dS4pvA4asFqHrCEadLOP+UAUWJgYfDbJ6iKyF8KjffUsA8ycwiH4Kg4DWIyhqIAhJY/Ef/OedMpPhWIqQydGg/s5J1JMEZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpZv6KZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpZv6KZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24E2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789934433;
	bh=Zq32WMhxxIS+TbP1ZbfzDC9wNJ1ne5nYX9w7fE6m528=;
	h=To:Subject:From:Date:From;
	b=SpZv6KZDVgqdAB0qj5m3KmfE4kOjSYATWllqxZstswMuvjLXuZLnvoaWJnVmMsUQQ
	 Ld618CV1An8S4Ejuwo2NqXf5+Stl+7h50set4yB0A3U237Mti+DrfhDI4k9u2oq3Jk
	 WTW100M4kV2+agZsPC+RDyq748v1zQM+a8OU/fJhAfT6OPao+vOlLGBZ3keK3M3FPz
	 c374hP93HF/dGe5PS6vGilUdphod/BMywO5PV73DCWsW4BurhCFMx53maSUtRxagXc
	 apmZiKJIMiXesy567VW64FnNqIcyuunihMNlPUuzj+uciN2CqxplGvuR6uZEHRyIz2
	 Ga2QUV8jP/Jww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD4C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993443368.9175.9252089213316799021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ad4e37ce4c9295c54ebc63a89e1b4e8d8b302155fb6054cacd944d1643179c
Date: Sun, 20 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789934433
