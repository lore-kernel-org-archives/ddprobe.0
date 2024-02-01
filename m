Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024445CBE
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706751497; cv=none; b=LaafaKe/bgypBfx3btgs2QU8F+QwNJMfpsdFlkfNQSPqTKNqQUQbf39kaaWW1UhS2kDsUAEKzrbtQlkRGdnZnKUbqVn6O6Yn7J+7VsxzqBSPHd09Pod7wYdZl6jpPI39y5zliGzKpmxldek7byKgjht0PhTWfRWQS5lp8q9GOJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706751497; c=relaxed/simple;
	bh=Yt1G+jbxMEXQVCn4gSrbTlhuiUNgf9lskF9fDg0pXRk=;
	h=To:Subject:From:Message-Id:Date; b=afcLUg2sTngGSn+4T45OWG+We9cXm2lkbI2Z4NmxhA+CmtMhRbIJoAl5I6QuyStgjHiWAtPTCimupNGTrpFB3hjFDuRd4++e9L4khFON6Zy3uAVEASk1dcF8gg0SJoXRJNprN1sAbmf2+akQvbH79f6tN4havn6+7YWgDFd6RHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=De75XInM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="De75XInM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C788C433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706751496;
	bh=Yt1G+jbxMEXQVCn4gSrbTlhuiUNgf9lskF9fDg0pXRk=;
	h=To:Subject:From:Date:From;
	b=De75XInMOySYhoQtUdUmDRGVmhjA1ATWagX/VX3lMl1slsa7EfFmbzHAlRPAMyA6I
	 aM1SxS15fceil5Cc4/7tq+35vQqe74+AUsz6taOgjVIySzPHlw+9p9P0+ml0rlxjCy
	 Ai9gwglWsQfHV/IDmrLyLhfPjR4THgzb9cWtZo+cyLkOneThLtA9Oac38DXsWu5KRI
	 g99KpN8xiwU4JD4rwkLUR9ApL+JgMOYWd5xqtRFlzYg2X+GBcM7EzH71rWby9iS2gc
	 LpdJJp/7akrICaF523ZbvrZ2uz0exI5GWJu6pPxr22YsSHYOPajOh/UnRhKikjzmPx
	 6toFqrhzK7X7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C83FC47DB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170675149637.20039.5669468651522781746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2097657fce4ca329da700e43de953b6d603b7b80493cd17011c98aade589e9de
Date: Thu, 01 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706751496
