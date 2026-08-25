Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3C02AE78
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787701234; cv=none; b=lbd0ZTW+nQ2P1ECL4nx0tN2+LDS9pV5HBRDWY777ZoPX/XVxNqS/H5ugbkT2MLpWkHzNz3Xq0jvhAVYN5gxLuPHHSLhI38KD/RZHDi+R3VUmCA1HUjueZN3q9RjMIZ9junKsUNJZ/4ARNr30qu/CfhzGxhhmpvgThJqlXZwJsb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787701234; c=relaxed/simple;
	bh=DsyAfBSYa8m03HkgEyTqc8dPkcAa76sqfH7W5ghHLqk=;
	h=To:Subject:From:Message-Id:Date; b=J7fRHtksfc5okGW8jipqojku+wLwo5xV8wCr+TdYdDC/9I1G872bHQzf1/TVAxLad26TtXWRF4l8ONZQKwZKcHa5lUcaoAIdLZFZRLVjsLgqULtosB3B1IuAjVnH/PlzM2UItLFblenG2T/Henj8XKVSxr6E6NPUMKB4EF/NFG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7/VBbHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7/VBbHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22BCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787701233;
	bh=DsyAfBSYa8m03HkgEyTqc8dPkcAa76sqfH7W5ghHLqk=;
	h=To:Subject:From:Date:From;
	b=M7/VBbHYLGJDb76Q7rwdB8/6OdJpaVd17WQRIPq2T0jBk8W8g8eMepQBrbsYOSoB6
	 3g5YqCWs5hBHjdeyQ78jfU8W9DpHAIPBn3sCPjiV7J9S9i6XZw0pcdQ6doN0J5U3DY
	 UMNGQb1rPlbCtzSBG1hD/SuNDkxbvSJlRtjYnySVLq267hmHGg+kbaDXqknFLqKfah
	 aWiM8LA1dtpTtLyIuJJ3WNhQMYdIuMwhiW3+bEswfAKeAB68iocr5g16lfEoIFlLt2
	 /OydPJKN/06DOcu444F261vkDKEdNDnz3WZV14DwnQXFuYQggLzDjHLN+gymu1EuMb
	 O/ZOOzgjOApsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE439C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770123368.21310.14366045564043890223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489f262bcfdc95fb918c2c207f0b79a35e5d60ab75789b37d7f21928143c9d7e
Date: Tue, 25 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787701233
