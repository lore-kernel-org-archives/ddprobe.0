Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A51156F4A
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746407994; cv=none; b=D5ARQOM0zsXvzJm11giEKx6Ll6VvkUE6b6Wp/VAFywQVck4/NvteQJdTPkASoHWk3ZeN468KZ5BJPk9DrW8xw5OcWszoSCPJ/mSoFfnTLRHIel9GEUA4rNTpRtDHr1BUKAzspbI4YLKeD/lJnzvX7/nVLhWGs7fIMZihH/gfeRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746407994; c=relaxed/simple;
	bh=gcLMP92W4OVdfAbJvt+yTzT5xFelCXyyVDfL++SDAc0=;
	h=To:Subject:From:Message-Id:Date; b=P1RbWrjLDJ32sLyUJBrA+Zpc88nC+CW3eI2+3SlO0e0SEOzSnFTF2IuPCqsLYblqrXyiZTBSRhAF99MZinAedcZRIKWZkZCpsqX78WwUt0Ov3KmjraK44URLarXA+g4SmUkAwZLPt7YVYWsQ/dkDIOKHBHwgsQ7nzMGCTGkGVFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6HnftKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6HnftKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B6EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746407993;
	bh=gcLMP92W4OVdfAbJvt+yTzT5xFelCXyyVDfL++SDAc0=;
	h=To:Subject:From:Date:From;
	b=t6HnftKXirXHFRl4Y1PLPY1XgzfTVMS2FPBFJQl0qWfSemGir/GbDeLf3mBcDQvZj
	 CyuWuV67RR1N9IUDfbYa1C6c09PiyolDNT00favfHZdHMFmp4kURvzSdzKk1V1QXUX
	 VmSsUrZItk675V1xX+dezImNwKOeX49kB7jxWdc49Tmr/T6SkmB1OHMSkmVwFV985X
	 wfXVsgBnWgxMS/zpy49/rkFFEo89vL2OGGbf7uocQw8mFluxTOe2nj9cjqZdwLP1qb
	 rB9jw1rwqSKFAgdy+RZsBCFLtSu7zwFwGEAsKozhrabRY1ikBJcGO3m/2wvH2kAG7c
	 JgkYAgkU+Qygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D94C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640799357.26140.14350888749317582065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12b36cb10aa87559de92de328f208683dae21ede7f3e08b7d11c7525d75520c
Date: Mon, 05 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746407993
