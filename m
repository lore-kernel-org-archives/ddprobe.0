Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940A726ED41
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789304434; cv=none; b=doqpZh7AIVP26wvKDs5RY7apdUf+u1YU7OqJVxDW2yKBhA1wyFVGyKQlFwA8G8fI8ZlD/H2qF0SUSHm+f8dkqwC5Ymhqqb6OomEx5FkfU40Czzjh0/77FRSh7MjaOrkXYgHYAc78zzCYrOiEli13KeAUotwlrKK1yINmBDdnCv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789304434; c=relaxed/simple;
	bh=KTJi1W3bWvm3zwBy/ea+DAF9u8vGq/2SrtPqnVOjyBE=;
	h=To:Subject:From:Message-Id:Date; b=UlqhLnZoYDFMeqU9+7T3dwf3rpPitdFpe031LCMt9o/pHTNRkM8SlBpBREXAKWm1mcPggzagPGiVdlAkIF6/Iyt1iokzqCN4iq541151hRVbk+XND0PUqi+1Lgdtr1OFI1AWmxAkl0lnV/B8yGTIwjoVQEl8Cmo9PQg0uglg+z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkQEx+E9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkQEx+E9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B68C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789304433;
	bh=KTJi1W3bWvm3zwBy/ea+DAF9u8vGq/2SrtPqnVOjyBE=;
	h=To:Subject:From:Date:From;
	b=YkQEx+E9wDvq+dtZpALHEm1wUDAKpWl6PUN0GDlLhrb/cXoDBhmBS5cXO5+A/yMed
	 rA5LhFeXH4RxDbAhCiKEE9lQu17ozdqN2ORq27Enf4m+BOw87Gc48khhhGRtbE/R06
	 kA0/rJpPAc0yxh1sGYcqHfX7J6nz+QwcFgLN9yPNXoVvy3L/jUtqpt+bPu9/2Ez0w2
	 bcWjrDdQoxIcF92I2RW1ccaXYhoBYggs5+IPAN7CdeJIhd0+0C0Y+e0PGYu71rvj1U
	 sB5DPSQCAtZXqaQAB87c2Lkbt6gw2noW2+rUnd6sa/foJSEt3RE2wh68YV/bnyQuD/
	 n2Vgn88xgaEtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF663C88E66
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930443368.21783.14409172910005327153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c9f09fca618fa0ea53651598e2fbae1922b1f242ffa162f0facc37f11b16b6
Date: Sun, 13 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789304433
