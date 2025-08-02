Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579371CD15
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754173194; cv=none; b=YZ6ha8si90HbMqNqw9U1o5/OtFhwJtdvjhX5ltZhbm1+Ohl5vc1Hylkws4QdKdsqyL9bVY4xkse3Hk9TJ1DZOKocnurTVgdepplts8CO9Z7nE86Kf4FCLeQenujzpEXnV3FdQ+y1UQh90UO3WfyeUnuRsdrbwVZiRu9xxWP6yY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754173194; c=relaxed/simple;
	bh=bn7EP1OV6F3MnhCi47ABPGayE2sfG7tg3sWY/jpR8vI=;
	h=To:Subject:From:Message-Id:Date; b=mbL63L24pnvS3kXAg53l35kPDpoZab0SPUiW8rxXF9pIPHpI32XSyO3PxJsDYhR4W6rUIfaaAPCbnO+U76LTFqsxuiVvN1QAguTiICKw7Xxfi/I79FkF372oTocZ9YdP9r7Ja60FepglyFnjlToFzTEoRaOW0eKRROR47UK8CYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gY/Kr6IZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gY/Kr6IZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53DAC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754173193;
	bh=bn7EP1OV6F3MnhCi47ABPGayE2sfG7tg3sWY/jpR8vI=;
	h=To:Subject:From:Date:From;
	b=gY/Kr6IZNxInsylwriIGml3NRuzRguKpkdJB7IQM0Jnk+J9E8bsxwq0Dsj6kvGhWB
	 pWXG2hrGSwkgUW9+Ap/whyfXv/6C2zKnMlE/Tof0sRYy8kbsgCkZR1QfMhPlzrFAl5
	 0dItsSM36xg7HOQym7ne0soPo0quqi9Iotd5/JclIKcOOYJrFwRLm4urg+aiXZVRK8
	 fVOD39NgwT6Mxt5ztNDWQfOr5fNH29EMJlCINi/uni3+bH/LsUjCPLv25wxb6RlZuZ
	 Uo3oeXpQzK+BizEsQ4tLFfMGTmzGb3h5O3Ov9lb+5icNOgPn5iDHa1GqjXtqxZwxqb
	 b6J7psjE/bjDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A73C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417319358.19027.970951826165478371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d09ff5409aa5560b707f8a988966fb540d2d414608f5bada09da635e2a2c48
Date: Sat, 02 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754173193
