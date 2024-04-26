Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B553BBC5
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714175543; cv=none; b=rNrxa3dOibHHlEZdjCRzh9TNhWnUTmA6Fd3KbgCVNWzZ1P5FqTtr8BaZ8IYJJgyvZHHKjIFv5lZEckiMyl/1XGm7sHIf3kjw0X1MnckYWOIrWc6xXo4qud3DYHyE3mpXdwnut5w3kVoTzLN+wcXfD3+FCa28+Fq+VlIFFZB0hTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714175543; c=relaxed/simple;
	bh=sx5wW5Mt8NZHP/OigmfkhNKkyb82P96D4bGQu69qVqU=;
	h=To:Subject:From:Message-Id:Date; b=KvR8QXylrD1kbYqwTv0mv4hpVoTYHyhEE/AvJfb2baEB94UrsFFQDicaI3KPewxuAnWm4wbhaTI3KkxT3X6TToVr4eohQon4hFPUYvlf0wuwnY6NjXOuOvi7hoQW0yRnH88geQHrpjK3P7Vn6pD9M0/bnkREgwfymM6Fx3ufR4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErzUnHPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErzUnHPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEED7C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714175542;
	bh=sx5wW5Mt8NZHP/OigmfkhNKkyb82P96D4bGQu69qVqU=;
	h=To:Subject:From:Date:From;
	b=ErzUnHPFbbdIaM2mUGCDhvCXYqN4JwgUTGvsLtNYFOrbFPNC4XUSp4L3wuXEtRo0q
	 ydydFhHjfgWLxAiFBYvEITfHMJKegprNKag0LVTn2uQZiHjp68HgAt2zSstw58689k
	 dvJvQvhBzhV1UBhDvHu8o8HvUd4km7gGeNCGAnl94HDm8sTZvHGnVBAAMPAKvN3ifI
	 LbAiTok5XQ0XrfFxxtj/6s06/T+16TYEwD3rXd9zkOY+9xm4apBiOCaqq7v3/FxBvP
	 2IIrYhQf+3aZDCejQtzn2m4YUlPIwfbJAhdmyhLb6CrSCIEGEQOJUAS+B+9OHvRtkE
	 qCHAIpGkGqYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD54FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417554276.23611.3087811273791975980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b10fe6ea041406e374dd16e24b77d62e71f6970d0a7666c12bc1b04e1a38b6
Date: Fri, 26 Apr 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714175542
