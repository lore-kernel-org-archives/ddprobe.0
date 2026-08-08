Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610253515F1
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786222234; cv=none; b=XV336XhBiqzISN+UOGjrcKLpzfIHqnxDJk+p5QEjwYed2OZCJeVu7P1aAlsnvDqWWb3xR/Jne+4WtPPqib0+lnDmzfAAJ+pg9W5Fc/uqGLHCVIbrpHMpi6CshETEN54ihtNQmCbbsEZjENSBXJf+rnCDnBLmiQNUmc4a4VX/cnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786222234; c=relaxed/simple;
	bh=ARVhFAIKZqALP+PtaaJCtosd9tna/co3iASRe13g+/A=;
	h=To:Subject:From:Message-Id:Date; b=q++vdIsuJgEuIh1GZFlD1BZQn0E9wYp3KRfRRDTJgvfhH9RFILhtSjuvgO0LPwty0hrD1KBrynOAlf7x0+hRmWFuACNXe260cn/InfwUc+76FZTqzAj/TRBsIZyL+WtepuDQhkYNKwGBA2+OZ6v51M5HpI62LW7FYzQtrl/nJCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebtOMDko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebtOMDko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5523C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786222233;
	bh=ARVhFAIKZqALP+PtaaJCtosd9tna/co3iASRe13g+/A=;
	h=To:Subject:From:Date:From;
	b=ebtOMDkoxbCXwzOHS7POSR1U8+9px92A0+SnmiA+HT2x7x+15MIMu6ehsNXZSJYep
	 vF1FHyWyy86UOfNmYWso88EAbwF/GfHhEfrip0Q2AWbvv9Ji5BDSn6Aoxb76LCmJFF
	 b3f7dSpJhejE5t40RkNzuwd9SuZvlypaAb/GVK8sqvGP8xQx1NWdkfoM+zzFOl2LWs
	 zRHtix+kwl0JW9QSwbKYfpyC/io1MQpaUKazLtu7Q0yZcW7YiBgXOMWYciQEOze/3C
	 DdZzF/1FJXXbCvaP12q8/NcCOPOCuKrPRYIU9U0YAeQSndNgJxd3VAb1NSTlyBHpDD
	 Sp8T04HHozjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B269AC5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622223369.13928.12327417619230592169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a07ba9e1c6808ca18a0b4c243fdf02162329edd0acde45722fc76685ab93d4
Date: Sat, 08 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786222233
