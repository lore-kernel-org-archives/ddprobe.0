Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03662367A0
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756676993; cv=none; b=Gr9OshWFacg7k2fI4/03XY6n8wuAj7+ZabG+bdMoYMfcsnyLqTe1HqY++aRC1AiJpj/DmKY5ZvXsvB5ESLuGuayTtsBhdWDdoxXe3ApFp3dxvIUqX2GkjZHYiH5sr1T+k7/6Gv5q1OUk0AO7rkbIF53eS/OqTdXAyU3KT1/rDH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756676993; c=relaxed/simple;
	bh=p5EewigcjiaVE+aPDbTjFndcr7sJIjtYnJnrnLAau7w=;
	h=To:Subject:From:Message-Id:Date; b=YNg9vT7CRufLXrNhMKVDCs9HAjEcYhUMQ5Vos93UoDckJScwdKFKarCAPvBi9ANI1YafNP3ArA1uuH/FmI8+WoWQgJZEezMlcL5FZa7ZrzhI/P0ZVzLDFV+HKIxn+HuMARbIpxv0LreH+S9zXzhMVFT9pjzExVMFdD9Sh2og2VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIM1KViB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIM1KViB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AEAC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756676993;
	bh=p5EewigcjiaVE+aPDbTjFndcr7sJIjtYnJnrnLAau7w=;
	h=To:Subject:From:Date:From;
	b=dIM1KViB6h+XTRFaO42Vqg6E2TD1ME8KfHcqyInLM8/+Y+KFDIxb4M0t3wlQu31Y9
	 1ApkmAisBSdHi7pmcPmsykive5/2V/GJ3KVgDpQbdGP0RA/hmgUsHuaEnBU4mnXzlb
	 tQ58PgndUcbRATQVhckgk1plCg5Ft5HvZAEFaNGbliNpG3+j5MGlKfipOe8gi9UXcy
	 zIjTHLdO1yigDaPrkVX0MBhwJ68oaJvjVc9l+KuMX28li6yza+xgmTMUiQa5n3HOJy
	 k6h5vHqoOJfmB5SLUMBOrkadS72Ge3vvJivWl767F6BmnHjWdO4cH7aspyTOM/QHLj
	 Lk6EFPlaJkRcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B73CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667699357.21664.5481048884511103281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5683cee0c018ab0240b2353f1d4a6fd007d8611d8cab20f87082e25da17f5c6d
Date: Sun, 31 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756676993
