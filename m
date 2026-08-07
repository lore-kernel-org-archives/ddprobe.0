Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516C13E2777
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786141234; cv=none; b=cJx5uDi6apL20GSETR4ogXPx1X/Os10aVbsVDfTkMNlct38BcpFovNHtI8NhwaApmsQWbfEguf6OJmkWrWDfUf9RP4eZhqDP9G6WRZYoGRTaSlsF6mOaQJIz1AkDvajqhr2kXE46lEPF4y1hlBfLQHckXekvet+Dfkkw1n05ojU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786141234; c=relaxed/simple;
	bh=L8y+jvRipLA5cPty6QQR8+0pW+z5FzQjhhRP+ZWnaHk=;
	h=To:Subject:From:Message-Id:Date; b=XP9tgG/ijwDpWCv1OJ9JeASVN/+H6Bg8r70IxkcJrPpsWEW40P/Ai4okAIsvQZnObOYjlcs3GQGsS61e4HQf70XJZDVFkWSVIb3Egri4vhKN+BhWM8HvjTHa9qJiIfinYehvTBR+G1JOnJVochmbzknOn7NQQ6JUiTPZZ6ItNO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8XbhMH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8XbhMH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E94C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786141233;
	bh=L8y+jvRipLA5cPty6QQR8+0pW+z5FzQjhhRP+ZWnaHk=;
	h=To:Subject:From:Date:From;
	b=i8XbhMH/mAhKfms66IZzNTZcf5IlGBKxj2U2ZfZkNY94YOQabvzsgvoVcKrxbKdgU
	 yCAlMCdJgiA+WJQGbyP7Mwv8wFgw03nG482jlUkk3bRUl7SqcPodtb4AoGz1n+ylLh
	 MVzXuG9tYjdYv7GizW1Fndc7aGRJFG+oFJvC1d5t9hmjYS6w/fHY8IL2xeRunwL/Sp
	 jyZGv7d+nMTUo0aWb+wTvZ4FT7tRr5jzImQx2XlwE/pSP1dPew4EukyQDJSDeLvt+f
	 YWyFeLFvQCGj9SbVysBxNcMLTH5aoReG+8qCSEhWnWKcmxuBODmpUtTp9Uu61GcArK
	 MSxySncTFd4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05F9C5AD2B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614123370.32644.4520910439837821142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420528e9dcc44068e1a3afd458f77eb3e1b6f52a7c09a358d97a138ff79f0301
Date: Fri, 07 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786141233
