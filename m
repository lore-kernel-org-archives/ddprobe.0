Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C39200CB
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724902554; cv=none; b=WaVofjrizSgZGH3ZVfXfRsKjcovFHx5HljCkHdMkC7MaiTc2b4DDrNMFsXqPAxkd3Dz0mYHvrFpc0kFaLvr0cffpZd3d2w9i6/nGa356DskCzR+gNcMqopsk0HgHii3GA4EZwKgCD2IXeQ0PpmclCIRR2ZuW3nt4jspwBx08WTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724902554; c=relaxed/simple;
	bh=T1roCHkxXeWQkCzafoQPuOO9fmKkQkXDS1yDqzTan4A=;
	h=To:Subject:From:Message-Id:Date; b=XYN7sp/YLHddWvlx5r+ofQEcR5WkEfFO6Nl4Ten8usY+vhAorEl3G666BDwk5xYSc2upCH/9ub+i6HXrMJSOtEbw5NyFEkkzQSDu8GRMNTO635IxQy6QMczr/QSQJ+ay/HULbaPHcfPqr4F1WJuyUN22oocTv0b5ZGHmUAMdQB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBnTKnZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBnTKnZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6554C4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724902553;
	bh=T1roCHkxXeWQkCzafoQPuOO9fmKkQkXDS1yDqzTan4A=;
	h=To:Subject:From:Date:From;
	b=hBnTKnZsQ5lgkFpJ3phxe2Ke6VZWC9PJd+FH5l/ailzmWEBV8X7uAgf744zJ/+Ue3
	 9ETKbSAOwi9fP9nsDuip7XSwdIs76z3brsjXkppmYuejiLpw10c9w8Kdf7NSNB/lvZ
	 cgpbIzrpfgRe24LtBCiNjePHBVlLz1S6FtkcIt/w2BD/i77fVKAJxQpHsdUSVY5gnl
	 Nc48TiUWlEF25zsgnuJfaVTPxLa+RRcW6mQdFLwqcM/+heeMoq3UOcFZTa13w5bgXO
	 LAqAavnnJZ+0BI2LL8F1s2NiyAfk8/igRH/IeDf+FTKr+jYhGQOV5f6BCO431fVKqZ
	 iB1DhiEuy5+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22D9C5474D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490255362.6562.707558900243134950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95b5cee244bf32547b0fe81b54ce1a072a8f6f771ea1fb6a94f04b7748da975
Date: Thu, 29 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724902553
