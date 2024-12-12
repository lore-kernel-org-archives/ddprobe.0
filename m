Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA77154C05
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733981754; cv=none; b=HBbcMZc/QXRHjXSFaoZJBnNjeKjHXtyPXgEBNXh+ZBrANnTXwGezBZKVQm4xNbLl5yMNtcgK8qOgElwD/mUWgyYmiEFNo2YUcxRizCjAlwKeQpiXiMRr9q2hl0Y9IrFl/DyguqxkCblDVCPowxLXKWuLLP0MfYIYkBkN9tqFQjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733981754; c=relaxed/simple;
	bh=60fwNssoA4Wd5LaT3HzEppuZKd+xGVuaS1qrn6Rsyf0=;
	h=To:Subject:From:Message-Id:Date; b=fPIevVVl+HsuMpQadksnTvGZ2n8r1yK9qIcbj9kpFr5duhUrmbgOPaHgJQ/dgNKlxbTPUkKRdFqaII8fd+V1xKUGUlrnnQuDRx4CDhSzj6gqVrmqTpSwTrIUzNhDo8xdlhBJ//ZcWVsXVlBvni8bBHLIuCK9EqSpcZnVLT5Ql/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r13gQcPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r13gQcPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B301EC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733981753;
	bh=60fwNssoA4Wd5LaT3HzEppuZKd+xGVuaS1qrn6Rsyf0=;
	h=To:Subject:From:Date:From;
	b=r13gQcPQ2Nj0DDIJTfXPxm7wKrCC7JvSHplf8yZZ3ejh4CngRgIpNDwo0XNa13FDi
	 vJqLFAYeJpNxFmUJVQpos6XRzEbEcMGK6pRAXnSjUpb9w7zwmrhxprTDAgqxl+hlEW
	 aM36o6VtaO/i8L5j7fWI9/at9aZ0WcHoZSJ2p9oWdSy0ICAuLBYRyXq72sbMfqZhtl
	 gK0J7KNluWiJTkpGv1WEk+ZUQRKw8wmpEXZJ2U0f/iBvP5zL0xMcVYsnHjH9CJSORM
	 DwnvJv1brhCqq23d97tNs8+yw3aZqRnGzRPUhlGWcG3oAj3t2cVxbymNx4PrJfFILG
	 9KB1v37mzlQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B527E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173398175362.12388.3740348219230676896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db66a950f384d2afa795ca34495533c075680aacb4e042e86f778f858303969c
Date: Thu, 12 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733981753
