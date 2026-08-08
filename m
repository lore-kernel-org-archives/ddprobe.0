Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A333B47E9
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786219834; cv=none; b=EuG7/lM5sALMiTnnHugh4rKy7PWB78rpkxcYEAmQKwo1GB4D4JCoGkJGhpkfXv0X8ppywSWtSffNHRkB9OHDHPu1glOthlIDGyv1q5CTxRP/ehSik0Qu8c5L1dkuO2MMGWHHHvXB0Iuweuok0YFYh9MpJCoYOo80zzskdSpBnNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786219834; c=relaxed/simple;
	bh=8bGm4LD0nAmLhKk7SkT/jH6+4Js5H+CbtN4BTe7IH9s=;
	h=To:Subject:From:Message-Id:Date; b=Ijr3ttFuZQqWaK+5VhDxot5FFL2jQE61eJEi6C2W4tpOYz1HD2km1n9OsJ7WGjIRCdWb2fDMJT3enp4WvELij7856Z84bkw8ebASMVDAPHMlTxMvIi8wnXhkvVgy18PyIacGbyY6u50d6kzta94Mu6JQvi3rEOP+ukeR2GMvYjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZApd8rRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZApd8rRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B76C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786219833;
	bh=8bGm4LD0nAmLhKk7SkT/jH6+4Js5H+CbtN4BTe7IH9s=;
	h=To:Subject:From:Date:From;
	b=ZApd8rRW6vVDhk9Icz+zcE5/8kmmGI9YGn0aOEMgVmdCbPd7QlxGuf2s7c1yBy0lf
	 +LC/+fUGJidzQpyqiBbPlJzZojLL37latH9F4B2c/j+fF7Sue3Fy41skoKHVD7X1/X
	 X+AShUT7yfYsp78jc7MQ+zSivBHKcCP/gL7sBzKvU+5cdaEif2qr3TNrqYfAn+3mYj
	 9FdW8lsty+x3bEEh5E8yDdYQKJd7SYrf64EYA7/x41fVqT7YU9+KAnkuk7wV2kvqKo
	 39x7Rz60SkzF58gSzikoPUeLCeq14vWYzQFYmLM/nOn18/SmtvhmqvK9XoCs003DyX
	 2xGhxk9xRX4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C6C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621983369.20731.591830727509154610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645de82ba0ebebf9eb91d77cb0aa6d2d04d3d96a8baa9f40685b4737beb2c2f6
Date: Sat, 08 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786219833
