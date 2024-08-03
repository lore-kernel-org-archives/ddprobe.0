Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7F4847B
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722691554; cv=none; b=C962wvoA/6MoGlSmHkuO4tJ6SIHAApetwJ446x/Uv1kQO8fvX0LwNhsi22kEYwkzDAnieAdfgcEoEQEnBhxAu1g6J7E0vJrmmPvZlC8S8spMv8lekcxoaZgtlwzFeyUmGihjAgNL+S3NRC59SgFepNEEbjQKJ9YH70+VBUHxt/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722691554; c=relaxed/simple;
	bh=JYQgj1/tmJR37SCcHmrIHiBGVn8EL7wPtNJxwhLjxjA=;
	h=To:Subject:From:Message-Id:Date; b=MT21O5hiPS+XY9ZUdcAkakeb7YvG10dpFquYC1uT8XGGQ+r2nlIe4n74F1qf9bpqpxyXPqHzRXYQh0X+OPkLXJG4nIBO5j9stxx+3sHaxIMEIjUFw1k+bL+IWksSFrLRxS0jhJEbQrasAC7BsC0pPsa3bGicvvHhX9Wy01dpVWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUOfHOzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUOfHOzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3351C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722691553;
	bh=JYQgj1/tmJR37SCcHmrIHiBGVn8EL7wPtNJxwhLjxjA=;
	h=To:Subject:From:Date:From;
	b=SUOfHOzxpkvow9wJAxZjG1oOxiobDfvilstHYGMk/DfPyUC1iDfb34+OkTAoyAx5f
	 FWPvKiX9uozFoDOfpuAcq9Q7R5ZZPrOreDeruscO5xBZb8hKw9rLqzQkvcGXDyFviq
	 MiMEqgyOUL8tBgLsmIU3NXx8e+UNicWlENN8aAJXkiz2CRd5tsp/pD5mVO3y7kKbx6
	 9vuRUdiSb5lywaS4TcFIoBOUlB3UgUrtsv3st7xVqvslAm9ARp2tSGKNh1ErmFB+iS
	 lGt32wpO8VAfJ+ftXDhW0TRMrIvy8bP+7URuDNvmFtLDBFPuz2bdysSRtvh8R35+M9
	 p9bgRVwsV/gRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A106C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172269155362.26277.15787761426744248121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592d32c35762b1ce47f022a4e3fc1f948a3f14aa683740d61e159ee8b856d1c6
Date: Sat, 03 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722691553
