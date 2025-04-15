Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF351624CE
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710594; cv=none; b=E1Aapuvk1eeUnyWuOuRMDgcWxhkt2UNlvknfJlLVIOgKktwHDZBiPkboe+wpXeAjPKUEji9Bld15A/WYeCwHahdYxww7JZxLYoNNplGM5LycjElxlAC0gPlDxof8nI9SBFtDQoVYJ6JMfi62faOlxTYlCBvXvMdsQ0MOj1gZAOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710594; c=relaxed/simple;
	bh=usSN/ucXB87ccZyCRiUnhvwy1ogS2lJ/xrdcdVZazpQ=;
	h=To:Subject:From:Message-Id:Date; b=befLh+BLl/lwgnGNSs7RxrPsSu5ea/12TWIGu44QOrqZU/rbbVkzfEEK9/BsII+XBxTZU98IXXfjvVxhg6L7vwwzMGyftqktEheFyuCj+NTAIx8Ezob9iU+hVwqXIGKdCpHLKxGquU3K3scwFOgp3EHXVdx+WtW0rZDtwjB43e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORrNlO0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORrNlO0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5555C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744710593;
	bh=usSN/ucXB87ccZyCRiUnhvwy1ogS2lJ/xrdcdVZazpQ=;
	h=To:Subject:From:Date:From;
	b=ORrNlO0JohaQWavfxa1/EAIUnTKvQ/pAH61L1aT77eC9+v3KOh3+adsxLj8LjfG5O
	 pKismoDVp08/OzSB77hxY9EPw3uqVYhXl+uk+8NvnGEHsCCOdJXt5fqr81SHow5JKT
	 OPB26ceOQfxaj2fxMw6+XIxwLdVsAaP4E3LToSfMgCEyhgmDr2gjpyxspIDm0HFvU6
	 hWdietu9DkywYMvgqWZccxHwEeOgwMKbygOMd87H2fmNBHo17F37DTZ+vi5X3VZ4Sy
	 LtUs2QOaZOIn/b36gGGnGEJq5SQYL5IFP9WFQeVsEiH2cEV6zDjiMu+wijL6BqA/Gt
	 2DaNnewKhGzJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9371DC369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471059359.19729.12362958280776679667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc6d9851975cb4d3273d9bec3c73b22154b8b980dd05860e1b2d6bc55ebf95e
Date: Tue, 15 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744710593
