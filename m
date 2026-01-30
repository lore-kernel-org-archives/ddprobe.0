Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340A4354AE2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769766234; cv=none; b=nwL3o+ty2EdZexm072icG8t3AYkBEHpjtZEOYXYaVdl0WgnOkdWNoQUSE3441/NzTofZuHKtDnQlqkPBq/8qBcjH7iEThXfvWXCGbvOeuT0Eki9sljU9kvBGnD7YscUHArYRYbM4Bqc6xGixjO2r72Pzsym5+uyAJs2TM6ljlXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769766234; c=relaxed/simple;
	bh=/NrIa7XzeqGuJVsG6OGOiqggmhXzcRdaT6ZA8wcRMPE=;
	h=To:Subject:From:Message-Id:Date; b=eIjpbrSbz37cf1xBnTDFmh8VTwv+yzvEY+yWqoVl8HpQ6/8ee1hMxgMzTBWlXSaKt/VgskOYiARsqCg0vReKkMlsE3Yphg7OTffLeb6V6KRqS2d4kYa0ZcZSCXBrKgkjMFuc3CQLfyaQOOZ/0N+QkXt7SDMwTn+qKfTHaHRJn40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrkNESVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrkNESVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAE8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769766233;
	bh=/NrIa7XzeqGuJVsG6OGOiqggmhXzcRdaT6ZA8wcRMPE=;
	h=To:Subject:From:Date:From;
	b=IrkNESVAxcAV8Lr3uPE/sAEuzLMCpYBLVPWHJy6K68hXT7/0uvw0D/DwwOcf5Szz/
	 vmqgc+KpEQC+qs4cx+6pop3DFW3J9KPmk4+0YnAD1SFl7Bd+yVay7HgQAu6U2e5fl5
	 kxrLbeQJGVi4SzNW867rghKnVh/6WfFZDMc6jcdnAO9kCUyiJ9+ZC7w+TndxTfClYl
	 IIF9byyXl6XyQu+HXfV5cuP3IwgDNxvzjPNN6PEot1caoHajCL+Ugkf6Tyy3H646B9
	 8n+NblD5a6EYLSM21eU39/IS6y3ugGnyVAlCMB7w37BBbbcfKnbayeCdWl+k13sfuE
	 aKDOECmilqDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91020D49C91
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976623358.30474.17281285685462010929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fed4a4c6998099c06dee563fb60c9da861c257f02e228fc546b30bd8d191d0d
Date: Fri, 30 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769766233
