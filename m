Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FC41EBFF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725413754; cv=none; b=REGm426yLRx8qDjw205237bEOG468aCOQzlhGkvzZaeXYG3fwSSvSujfW3fG9NRUI0CzaoiBN63cIteAUGo4GZ1kNr0/W4ZGoojmdrkqV3+fl7q4ejOFW8pnMAL96Qv3dsCavHc+ggJdE97zb/NyEfJczbP7PI6RkUhnc5nhZOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725413754; c=relaxed/simple;
	bh=eJCG9yM+sHfhsdee6S6nvh7YrlDtwV+Px6kFPi08g1Y=;
	h=To:Subject:From:Message-Id:Date; b=OjTP0zODTb35hJPAtf/22tmG27EegXbS3PDHbdojkrWgEg8dX/CIk7P04WB/HpwiXdKyQLFBLzHThfCC7u/sXGpuvKqyseuLnVBCcupPTUkiS1ZShqI0lB6JOp3ubywh2tklfh6KoVlXpN0CaurhuFc4IgSN+/VABm8ENFky8XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXlSHvgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXlSHvgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8886C4CEC4
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725413753;
	bh=eJCG9yM+sHfhsdee6S6nvh7YrlDtwV+Px6kFPi08g1Y=;
	h=To:Subject:From:Date:From;
	b=CXlSHvgqtd1eOi1FWV7YA3rKmlsse19rh0+InXMLU3n6RuIryUO3ub//9xZIlG0j5
	 hj4rryU58iGDbqAw8mbS+0Pl+5D/NgDPYb+0licPN7qnhcwxkUUhpF4VVx5PoCMM+R
	 ofKorZokueelAzqJlup6TQWhVSnsux+EyN+riFmpTQaQSrA5Osl3/7ThySHFVBRBD7
	 r8cqnaMItWknrA5Bx/7uqNRqHgfJ9w8VZ0/5JiyA1YpZtghbXM7oYXYhQqgJMeB+mE
	 d1FWUmbCQRM9lvLYP8JmPH3CKw7Azobj4tkZzJak1/oLOvIODfrdvGVab1o3vTVmVS
	 vQfkVXZOiKuvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF3CD37BC
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172541375360.26208.4579535039705997261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03a299798e3e1bce81c2d089577f3b848479e67431ce96fbd938ace74c9413b
Date: Wed, 04 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725413753
