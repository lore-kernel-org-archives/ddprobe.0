Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5018F3AEF57
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789029634; cv=none; b=aG74HL9eOzLrrMiZVws+vOs9qCMY0I66awdsQQ18gAk5gzXdxsuCSEU4tKMXpNK6G8LPt1GavjBrdbT20RfTY2gEV9BlyAI29MEfZIBhfJDBhCvMmNPfsERkj43RCp9rTABkPNkFHvZn9+wOb+Yz86NJc0MxPVOQkocCnCb/HXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789029634; c=relaxed/simple;
	bh=fRIDUWYWZUn7GMfEyWkh7HiwlVWRsDTyALrgqrL1Pg0=;
	h=To:Subject:From:Message-Id:Date; b=mIfuIlObMFDgfTnOUvt2hfUHHIMi4/F5cbZqpatJuiVbflqohy/oP9AYL574zfhHBzpeX/SFI11Kf2oydvDn8rXjqNqm27DC0LH80j9z/woybm7srxOQM1IJmYHBo21nrIZCqdck13YTP5Hada/cWhO//joqeTgA9CrC9IUfnoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHNZOhwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHNZOhwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ACAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789029633;
	bh=fRIDUWYWZUn7GMfEyWkh7HiwlVWRsDTyALrgqrL1Pg0=;
	h=To:Subject:From:Date:From;
	b=SHNZOhwFJBcc5n3Y3PLBFIfu44FN8pyjY4tta/G0a+9ttGLAiBBieoe07usvmaY7N
	 HE+JtqeQvaYmU9KXP4m/+P4vdH5s11g8V49iQxQ1lVsKsdjOprPklsi4dvO32/O+Or
	 gk+Wytvg5vxws02MlE9pBrek1kPE3ls9hJM9PrXjoUW6tuTpXtWZwyo6esOXjXw4vs
	 RjNJP9FbTUfdGY81GES7hxuI4K7EfDsJE8/3RpoCZvPExDkuIfUhM4B4eulyG49OTo
	 24pzCUOhyobvCgJZoN9IFC8Qe8mJCshivZAD9iwUjLKi9fYgZsfsAxCwFUdzcdDI2O
	 P9KgCdJX0vVSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB897C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902963369.22173.716052478778770924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48c958cc46e71ecee60a41d6ecd8cd7f4e12b646f7d64a53da9cf7d4709f8cf
Date: Thu, 10 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789029633
