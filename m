Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AC2322B71
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766755433; cv=none; b=UC5U8A7YAAnRPyQb4/cfbx1ptnhTvIv7G+D1j/f+Z6CKCjV8bQ2zI7z/Od5FGLwlLhJ79rxYvbOW0I0vMb8Mec2n8b/v8boXIWnCHtzk9rvi7bdx0GCiucri1d3uyXErCF7MNUTJiXfbtGY67YeDPZY/DWhg7DGXxkKAxHUqFPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766755433; c=relaxed/simple;
	bh=avdpf5I20rO1tHjnnzgcgv6ZYJxF/yAd8M0/doGYAME=;
	h=To:Subject:From:Message-Id:Date; b=S/GFhP8PdFkDVSOeOKA6kiZGel5eT5imJo7kULMIzGfOUFnSaJt1YIf/OIY6JeGjo4gSk3EY3D+YMgJs2g8IUC0lmdQ57pMBcbDh9SobjKD+WZj/09kDh1vI31HzkSeHCC0IEU+w0Jv6/Eu4SJCfVqJKoH/HNsq2iPX4lzWP1Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQUZnr9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQUZnr9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B77C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766755433;
	bh=avdpf5I20rO1tHjnnzgcgv6ZYJxF/yAd8M0/doGYAME=;
	h=To:Subject:From:Date:From;
	b=XQUZnr9jQ43HN6xvEf4zWxzizr/nuVPO8XSdc/JaSaisjOcUoQfHoZ+TCdZpOJtsI
	 eMWWjUAyGUCV62VE/0wUQFgrGbmvvIVgIDxJTRbXOfs2CbtgHrYWi6c/YUpcSLpFri
	 ODZhkbZePOMbGWM9tqRWJbYczvRMW4qi3OnAIGBRkd2hGVX0uLyDntdqqG3eHH6Cml
	 VUi67rL6/+AXudiO9UWUwGUb6RORnTBgC1d30QEKan8DLMx3VgRHFbPGd/09CtehCm
	 Ddks6dayKWTOvuRjv+UJ6PKSil4co3oxQTgL7HrjLX/UzGhLnFqln9dL+eYLrXrRJ6
	 0UXvbq74NGhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9DE8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675543358.16666.9431840549808731193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca017afcc45a09770584020d59f450b0fd861f0d6d1da791b28d20c682a51cc7
Date: Fri, 26 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766755433
