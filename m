Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAE829A312
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764577974; cv=none; b=B4ZSfVlN/zbokOZ7Bd6A4Eat4xfAf3e0tYo2Qw6ilkCbuwiUQgqvJ7ccAKCuR9PQ67XrTBdffRoCCkTt7Qr5NXIymqHD3SZZwv2f5HQ64CEqEHFyIaaUiuN1dw3RscZbEopCh+RGghaD8BezAN2eUoXC6Sv2iuzY2yU325V8FRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764577974; c=relaxed/simple;
	bh=39D2mlkRuulOMo7fcencUevsBpEglMqaC06R/IGHf9U=;
	h=To:Subject:From:Message-Id:Date; b=Gj0YQ/Urk0lgH50/eOE1Xc4gWi38NVEb8ec0jPHaENcgMURgKEnNapJm8e5h9t6gyEkbeQUsJ1vFHZNCXw0wdE3D4eouaHs2091R99Lsp09NF9sfh9vy9kC7FuJuGNaU1cOui/5UFxuk6D9A4IQdrETrSKYPyjS9S4M1Q45Opow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuSDvxPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuSDvxPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61F8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764577973;
	bh=39D2mlkRuulOMo7fcencUevsBpEglMqaC06R/IGHf9U=;
	h=To:Subject:From:Date:From;
	b=UuSDvxPkK1JtozyqS8FuL1uF+dFQBzK7gU5CpBf/YVM3zk863wucWU9P6yyS8ItLN
	 Ju60Va6B6nqtXRqm+pvLi2+fi8jfavsxF67HfoxkC2AMMvojC518wRQj2sX0Rtgu1G
	 +YX3eU8On339Sa7yRsxUIA8eiGqw2yIhkRHQN49VzfVSGIa9OUWtDS35vp5wz2K1F9
	 QyzY3a9tkSDq1Hsxi5ncXgKlX5X58GZ4nAr4+q8nhXe9WTK41nZKS+euByrFgl++t+
	 HIiCehOIGR6dvYULqoCLw999cuKLj3Hr6N20Q989xOT2hino8pLD2cUZpLLbpfrrTV
	 uYFN42xT5YICA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB694D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457797369.13060.18147261801942811783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5160092f659ecfe5af04b9a518fe99c7ce632f369d35f6b9ba5cbeedbc50f4
Date: Mon, 01 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764577973
