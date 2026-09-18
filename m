Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BB04F647C
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789738234; cv=none; b=VgK6UYfSpAZpwsQVNnEcwskTZ3nY//HqnWRH2n7SfCLA4Q0N5CUt6HXOc4KQBentKBTvy2qigNosk9PT/lDAXj7hQYQIdmiAwjPUJMkFh3MzPfw5K5RXYZcSu5hEUppYydPAqrOZua3CaOealCFKBylkpUWA+g+kLwgVXAQbCqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789738234; c=relaxed/simple;
	bh=XR3JCJiPiAWQ/8GBFfxrNvMTzRNiw45BVA1K/WH4cB0=;
	h=To:Subject:From:Message-Id:Date; b=YhevAxH3iH5quOJwn6vGFCQFGl6qebSgu6Dc4A0WAwE/3muxWHmPmF7UqP/jBYXoQJo5Nwc0hpbRL64krQpydhgtXBH5x+kqECunriLVo7WIgIrxkmn3V8mSs3exBF3NK0Z6W7SzAitpxRaZaO9FBX4+7m9NnBnYDy7JriEPGo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVsSz0AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVsSz0AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA03CC2BCF7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789738233;
	bh=XR3JCJiPiAWQ/8GBFfxrNvMTzRNiw45BVA1K/WH4cB0=;
	h=To:Subject:From:Date:From;
	b=QVsSz0AHIIi44GT9pka4+x4RU5t1FBYzO0e3A8XmaUA9dtWv9lN6EBLYRrjbEmaP+
	 t5IyQtUZ4g5/CCo1HCDJcqr5+c0C+I+6WsSKwucMmZaTPNnLddXZ4fXtq4k8R0YQad
	 zny1Y4+VJB2oZ8xud2eaHS9zzpLNsmjn6f4qFrGXu/MFpHxS7Nkm4DNAZwPf/UP/mo
	 c8I+uf7MYDU45flKY00zqddPEKXwHqCmKBE5UVI/lOEMX8d6A9J9KO9TSGEj8OvUKT
	 W813twKNJlxxYTG1AQUZevsz0AkYeyR5cAEwGCyOkWiB9XrYPFjn5N0ZcBjw7XpvId
	 pQ4l0tiVp6C3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9019C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973823368.17162.7188357221651347003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9febe5743ed80de18a5a08fbd6faccfd2582c3bfbba085a26f85efc6cfa6221
Date: Fri, 18 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789738233
