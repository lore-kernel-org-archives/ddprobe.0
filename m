Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36427C2F2
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747195194; cv=none; b=OeKcTpY53bx0xlBQwQFdEg26mYf00yL4VGXrn18uH4YXNdCPhxp3Hw8DbUXsUT3S/+kHgnQ9DLO9Uw57kwfVkKf2ITdXIaKZDm+c2RUmQBBMwjs4KYF3s6VwpooX9J6ZwIrtCy6pRwVNH1kmfdE9JFfE2OouR/+dlAxDVrk5Vck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747195194; c=relaxed/simple;
	bh=268bFhkfTQy5977zWGJgOqTPueRpABF/MEfKUuOEkgc=;
	h=To:Subject:From:Message-Id:Date; b=BWXrO5yHGpM6TkqZ+J7H8B1Y+/5vCLws9m/+e0jrXLuzYK/1m2tGUSP6pF7eeRUZNRd1ZT61QZn0MPuxm7cHQIukZxXxc2OaAAyy7StfOv6wrE5pje9T7GswqqYHeouHJFs78xllPM39KAUd3Wjwe9rtZCPb6BCMesIpo44NbmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWTwOQ91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWTwOQ91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1925C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747195193;
	bh=268bFhkfTQy5977zWGJgOqTPueRpABF/MEfKUuOEkgc=;
	h=To:Subject:From:Date:From;
	b=QWTwOQ91CKa1QU2N4Us9g1xxJUzTeBqXyXg+lCex/Y3wZEvOqdQRfQkx8tJ06ep/8
	 5EO3hmknnj9y/mCsEFu2gObuuC7OaWxrW8ren9Uk3LgvylFqDdhHgzJsrS+dJ+Cpsd
	 sqUuvG7fG05XrQ2JzWfCf4myH//AnNlFB8MPAG+vX8/RpvkkqJgq83hjoaRwGerYja
	 73I8LONEkiUyIRRzOoJNWNHMIRtXIni8PX8ZiN2mzgcRXjyNKpGppoDqUYoXsaZeae
	 wEUY+LFmhpOab644Ge5l0KQ/hWya4cBGRPYFGFtJXTtaGqCvzhL3tjAiDrd38Rphjk
	 bghucjjZt7lQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393DC3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719519357.24530.2507249744158596086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82bc76f05a44c026009a2cae472057e43508aebec6c009c4bc822b4af03ad77d
Date: Wed, 14 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747195193
