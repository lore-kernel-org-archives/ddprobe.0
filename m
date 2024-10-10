Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D55963D
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728519355; cv=none; b=Kj4+2kdM5DgPsSxa0DHq43slXbNdxD6wpC2WyEeURikSC+Afwwj6mmt0zDPwkRnlD/k+AATqeLx6a5GlFza/SVmyrTQDiCijybi4o7Md01ywEKRhwvWzpnh2xa+tzFR9mi2R8N+SzvhrQGyrX6WCZPm7TIFm2NLs9vFZFhEzowk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728519355; c=relaxed/simple;
	bh=r7QqTdKDq92bIQgTLMvz5dhLXpSfOaYdejMpjnuBWjA=;
	h=To:Subject:From:Message-Id:Date; b=lvxJ0CC3YeTjJNYhcNES2K4qw/Nqi9KfQGiOdXCw94vkwRcQQ84XRCzF/4/btBnBY/NraGDrMFhV7KTZgEN1alWDsoMaVHJKe9PSehZ/EWi4kK7evySkbLS4CN/lzJbJ/Vyi+wDpFlHS/3n1PpRgZ0hNB9i4sS3TpNiATDbZiaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6lR0lbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6lR0lbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B779EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728519353;
	bh=r7QqTdKDq92bIQgTLMvz5dhLXpSfOaYdejMpjnuBWjA=;
	h=To:Subject:From:Date:From;
	b=q6lR0lbAAdT9yai9O7N+ebgzwawMcDvt4s+BAWq5gx+CzyLsRI06haH7xYDpziqyq
	 sJa4dxvi0T5z/pvcZqTVLmcwmCEe8IA9Nfzkn51ZbqtM/1TztE7jit5Jq6nN3IrIiF
	 nFe1BRD5bnfoBUZRXZB5dt+gzPI8CMisWhCN10uQQXK3iKbjpgOYYV6rS1XCbX8nSY
	 vH80yWqo2kOFHBr785M2FvEYYfZfYeHF+TW/NE9q1onQyzEbWMUKNbLKp8mtprWxef
	 OJWHnR8YhU03fFHmeYHkslPQg3E0Lav0c3600QDfILvUGAzv66ikuww9pmyZ5cNt3p
	 k8T1OrNykLYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D39CED611
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851935360.23414.12855695162212771451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf290e6439058c9e13fd5378c89f47c62a57822018d60510337cf35e7378253d
Date: Thu, 10 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728519353
