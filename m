Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D564360
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719516863; cv=none; b=YUbjPB5EYw5vahZ8v8Z8K5AEA9vG4I2UruHoBwBrzqFr7EVOFoy1MeVfPWei7ixU7SUow/5ZrPdJE2UzYZkB3LJDJJP8izQTyJHKIXyzvP/wsr33AuO3YkumpLXffCGfHJtj75sZVR6vovb28RAbOt/2OnBlEbWB7e8r957/eZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719516863; c=relaxed/simple;
	bh=+XvvyhUOM47kH1BaMPcycJ9IzoiU3HvbQH9CjSFSM74=;
	h=To:Subject:From:Message-Id:Date; b=o/2Y9aeYoyNkDaRXudKQVWBx0vydtweolagqCictTyJ6FU+T2aiIJRiUEMwRrPS/tBhvBKv/tz5ZsqdtUjRtV+Fu7V3gTm10QQT6tbg7H/3PoLqYf4ysk2eTqczU/5kwxP3rZMN3tSSNSZWfByiv956X1qKhzbp8ZRQedncqZK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwYFHgTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwYFHgTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F50C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719516862;
	bh=+XvvyhUOM47kH1BaMPcycJ9IzoiU3HvbQH9CjSFSM74=;
	h=To:Subject:From:Date:From;
	b=GwYFHgTsd3Ds3ENMZjgrLUU9ayqgoSwjIIMiCXHoUaCk8MZnwv/hxeycy80Sz/rQ4
	 5Q14E9LczbodzgLc6YbyIheoVzKGqwFrBwa9iqQzgvc94LYjApHaNb+W4YHcYDczpj
	 W5NcJF/TUuXCrS8NUONggHjDi5nCHCMDrjXRVYEQqqbxd/xzN8lvZg2uBCK2pr8J31
	 KAmaoOOhmlBBQpEWfuHNi8clOjjo78rz0Wb+JWU/tC8g3MP62bNnlvl+8Ew2cJJC1M
	 uG4uoor9FzzQr6a8AA1LTpRWVMBot4QsKvtlau78+9/DCR0a5uRbrZeEOZsW7TWw5X
	 1Mu/ym2RqMiFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5429C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951686279.30518.12519380762476003816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92254239b3ec13f091a9411397663e673332da09e6a06df79df2ec43464e7c7f
Date: Thu, 27 Jun 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719516862
