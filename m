Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16231126C1E
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758622194; cv=none; b=a/36F5qotiyC0+temwuaskRMM/axYjTNCpSBhBRve+HyvjlgzVg0WHuE4KCzgFwjYQy+RgqZ/SoRLEXCR+2/NdL6CHV57ZzPEyeKcN/fwbDhv03Doa2JC1sEEqopLq52dhrpctNOff4tMykwJkp3Tn6VW/cUEAjAltnHfdM5Wzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758622194; c=relaxed/simple;
	bh=kU3z7mvxoyugAjoF89NGXYdxtY9MQzZphAhUrhzYxww=;
	h=To:Subject:From:Message-Id:Date; b=G3IMB+MucU+brv1pLekblkhK+T0xgO7BcXWxs2qFkAcvnwW6Q5wpO0tUyqWnJ2slitXvs8fFYE2z7jWgQdfhGOPbmKTi+ETXTMgkkF2DMVk7Y4C+1Lj2NHVeKctNephr+V3scx7idRuZYIOlzVgPJ0vvgOHIrt8wz5lGdknWjnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2e4UFjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2e4UFjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758622193;
	bh=kU3z7mvxoyugAjoF89NGXYdxtY9MQzZphAhUrhzYxww=;
	h=To:Subject:From:Date:From;
	b=H2e4UFjErfmQdieUk7RCSSjY35NIFSNt223++DKbz4ir17PY60iF+TWKMx4etxL6G
	 Qe1RdeY9yLNuV1kPQMYxiT2+vjeaOyGh1aiaWgojSWvPoA9hPC5nj7zwTXegznmZ8/
	 RiyPXlzCLDsjj9LLSdxOCwnGNqtsiMlCtz3824bB0pOY4KFvSFtmNKb/F4t3Jbm5tF
	 OPLODmOT40F2yLCZPIjdI4s/R+fJ0YHD14KAi7uhmMvBuqz2yj4yKFtmiD5MN1Nl58
	 XsGgiToEkbqD12ffZPuJKABYKl/K9FbP5kshG7BESrZSibkcPzzARkx/tmWayXkVZz
	 A5Hw//QS36nHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DECAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862219357.7023.14304877695937793943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a670bc0613024ef9cb42e9fd2ec0bc72a6446ab73ebe7d6d1865068cee3ea0f7
Date: Tue, 23 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758622193
