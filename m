Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647E813AA4C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719376403; cv=none; b=Kwr1mvipIaBttrEAH80TwD5UgYv1fLpaR+KAwnKUaQ5cMLNMqUY6isYnn6MGw7s39JroPxyJZCxdFYeZfXm52MIfc44ZSH1H74PrSRQNja71X5yj8kggY8REp9So7U6rvfyJuHoxN5+d+qm1vmdQFYX5x3gbM6OjK5zEGnweFWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719376403; c=relaxed/simple;
	bh=Ef4O+ABFUeAMQEjpyb8FvsNjQ/3fYODUKSB24d2Blko=;
	h=To:Subject:From:Message-Id:Date; b=XGK/CmHL+1Pkem2ehK0Leeny0ZLky+c79A1TFrUb9I64dpHl/wJ76FWTVUf/Q8/WBNCR7Eend+Vck9/BwzbXYAS52PfIOr/XB7tuaLuFNlhkrUTnfWKfnqH3pdoYJc0Xt5ISj15tf33uctWdP8tLSHiS69j/Tm3bWa+10ToxN/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzdAf56H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzdAf56H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB3BC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719376403;
	bh=Ef4O+ABFUeAMQEjpyb8FvsNjQ/3fYODUKSB24d2Blko=;
	h=To:Subject:From:Date:From;
	b=IzdAf56He4OfVtdssub6I2pxeHd7cL41i8ZenHVksJIMwU53A61l7OmEWeAWPNVzg
	 jJcKm5F7pcb3vBrm4xIK9nLolgfr8qemzfSFtRuogm4YwO8eMMYPgML3V7vUU4FaH4
	 UVT65mLM+M0/1O0c5CN9SxAfD6/ovW+vjrqZrJp9atk8RfHci7LdY4l9EfMzxjDjGM
	 ef6ACtxWTIO33YFaJhA3CSYbmOVe65q7u+Q8IUl+iS3ljzXC4AAJQdyhIF8lkxIQor
	 LEj6Lw6lVDCPImQ60RCYEWvcjOUJjAvCvekxib0QA/KknyffdEr/PZtGA1gFgYJ+UW
	 hj5EhUz8J6S6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D256DC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937640285.12966.3314402903264126414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b683d21100c3a0daf8c5b95e686bfd460ec5d3a32cb0c1154d52bb9d47a84aea
Date: Wed, 26 Jun 2024 04:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719376402
