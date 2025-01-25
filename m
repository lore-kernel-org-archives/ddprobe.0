Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386126088F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737822354; cv=none; b=uN7bLVJj3TQ9xQpraZQgwNFdYbRUJpGBcx3SvO8LavJGX2JRMtCowTs7MxivdiNB0bi9OrJg3ReeNPj4bUOBWuCxQzkoX5Vicbw0oXn+W43z/egAeYmXyvLKzftEMjUGHrBmMZ0X56nXO7jYe6l299e/txnGXfIN0mh3GxTOt34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737822354; c=relaxed/simple;
	bh=SDsYUFQt8O6be0kiNBZiMFqnU+jl6i484j0U0jkTeWA=;
	h=To:Subject:From:Message-Id:Date; b=lImHhYdqHq19HCYiQgBDI41YxRbNLI2WfRhVSx0klVbkR+8E5O5UCMwsuBvDs9oUqGZk/46cqYfyEZp3rGKBTEtNz9H553kGTfs3cIdG96QhoMHHyJMnu4Q2vNhfzRTBL/Aze+mc//v8FZsRBQUuY6evGxfAGU0eEbe0609HATQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6f/CgFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6f/CgFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D7CC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737822353;
	bh=SDsYUFQt8O6be0kiNBZiMFqnU+jl6i484j0U0jkTeWA=;
	h=To:Subject:From:Date:From;
	b=C6f/CgFJC/dKpxGDTXgq/5mMpGqbXThl4VGLRID+io64S/3JfssgDv+iWXgiGKt3j
	 9rRshxXvTceIdYFFAJT+lNc66YxsIum4AvTQUyR75F0eaJvNUHXkSEa4QiY68jpbiW
	 lOuEtArRdYAUXupxrC64TB7abgvWiKkaRQMsI0ZSQ4Kp+IMlRNPajVZlBk6XHRz7CV
	 92H/lGeP9jOMP8GK/IafD4F3XKDtOK5C7STGz6HqP0ADmEnVVgHgoqqC83/MINfQ2m
	 Svu6/vCdqykOt5KK0+ZzP0TWReo8IsJ6BMVu923CqMJxQ4+F/jo+1J/bh8S6JnS6Yf
	 TXyn6c+bs0Rww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C6C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782235358.7776.6832847891902383489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5580ddeeb330e098b6c6fd1e20704d89bbf749a1be92274d79ff5ec25a3d19af
Date: Sat, 25 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737822353
