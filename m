Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B87C1F949
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730690154; cv=none; b=PtNkjPiKOPHniJkSSpV5U0qLnwIrGaSKx3fOmDqr08OeiytQI4l+TQA1b2JLt7yerB7wRuNCogOjEvopBzHULctUK2slxquF7cEeasubsWx/GTOxmnPMLHIGfSjzudq5SKmsO0kNnJ9T4F1yGSUntJ/bDvvIhGFP50oN1hyHVuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730690154; c=relaxed/simple;
	bh=jFLi0YiqI5K1cfJXjoXIr7NfegRLb+W58/GqmG4FoaQ=;
	h=To:Subject:From:Message-Id:Date; b=KC8QQFhzrEf5QvNy1Od+lavCoVl3Om0CCHDiR72joy6f8YDbkZDpqwao5bxm7Smm9zBEnVMd4kcAX+L44qBEvqCJkVV5n4bNPTTRapGe/G94ZY7YBEbSv9fA7aHFDvs3NCH764yG5esME5/QElz3SNRrjCYysQmjevw0xso9yds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzM7GT8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzM7GT8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7909C4CECD
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730690153;
	bh=jFLi0YiqI5K1cfJXjoXIr7NfegRLb+W58/GqmG4FoaQ=;
	h=To:Subject:From:Date:From;
	b=JzM7GT8/1FhtBB5uwjairs2upWlwRpIeSYkPZji5GwddJo30u6jTkVKNWd/XO0x2I
	 Yrimu5FPYs+MOM5QfxNdeJJR4IwzHV9iY43HLLz+yoHSOKR+pUSy7jnKAR316xFqmy
	 Uqe4kCUg6EW8c90I+cLMcmB1JFjlRWpf7G8IOftkhs0S0VRt/teDu/v2F3T9hlXLsu
	 cbJY9t31YjH1Tv9r/OIN9V9yBnwcFir3RjcMUTo7Evu+DWYgNypfKk5+oP+ewfw2Zw
	 bQxfAXWR6J/PPrp8JzEZqMl2W9QcCTTfwggDsRUkXvnmy8O7c9jasZC/lw5c820scU
	 AE+NtgbT/gC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8BD111A0
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173069015359.17312.1573480130340076141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a1a9b8a6272b0091471628df66f92cc13535ea2e678e8f0b6940c05ec2f595
Date: Mon, 04 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730690153
