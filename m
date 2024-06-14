Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240FC19148A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718354903; cv=none; b=NV+oCikRXd0SBLxwB7+pK3G//pctw0jJnVdJwRFZxaDNDi3zei5xXqvlo+DUlrnmJQTgTK7jVh/6SyM8K5+kGbnPatPCvXVZqOORExvG3/OMJ5I+3OlQ1bmXxkh22uiNLNfGJWIATezkjjsxOE+G2xOXVjUKQY+sHy9Xrvpw2Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718354903; c=relaxed/simple;
	bh=ZSf31qd9gz9MB3q6XIevqU42RtfMESTjMb+m4EwJIUs=;
	h=To:Subject:From:Message-Id:Date; b=jC+4EmGXZmBTb005mL7deDdtlYma2bmKl4QPRjE1qtsDApqWU2mojP3q+mN+oZMUrlOfV/YgjBJNiIjcQzjt4JMjA2QksvqOgN0Bxwse1V7BdSeBYDBEEtk7UW584GYnma6alrm7dquJz7gJlTW3yXyKfKOMaKxDJ8/LjRwZedk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcxOyM5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcxOyM5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA14DC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718354902;
	bh=ZSf31qd9gz9MB3q6XIevqU42RtfMESTjMb+m4EwJIUs=;
	h=To:Subject:From:Date:From;
	b=TcxOyM5KZxuCB6pxmZR6QgIczfamno47uExhjUUR+O9rt8Q323/LW4m4NGDpDDXOP
	 1k0a+OS/fyUZ7tWz/E0jtwsR0xQgAh+UVvoWqGdd7GASqYvCGfxo2yaJHR0OHK3f58
	 qieS7NuPjEVilXYZ/okJb3RXq05MXgqsS/x7sglE0qEkx3r9t1pK1jbJb7GS5KZ0qa
	 re5FnzKUVOfwo0d8T2InMPhcxOD0LD0ePKW+2p8Gjg9mzX1mcF4jaRQ7uzUMmi8Grj
	 W/NIBYXk5npo5fVhsJc+RKzcfhbETk5Mq5svI1fWWlwv4Ch4gNggLz8ucAi6iNNxuA
	 vzyVVrFf0gJUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3265C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835490279.30281.8187724858643675102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1c4b3fb0e13830e0ecf1655d8359a00d1a40b4d5cd3e977af915b299d51684
Date: Fri, 14 Jun 2024 08:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718354902
