Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428EA14D2A3
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718047103; cv=none; b=TDDweL9qEAPGDb8odmASufqLtY9+o8SqMmlYMlRRdwqvlkcdgcSzCk/7ZOoTZpYoAAPT9LhMz+x3YR2MpIooxbjym24W6TA1o57FX88+BfYTz6o56DTFr3zRo9QFiIpQR5adhuVfzldUJvQTXn4uwFL6JGtO3dKZ1moFaeGQKv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718047103; c=relaxed/simple;
	bh=Ac4/lMLyPkZwrnliccZgR/Z1gCWsoS5AuEeBjIv43os=;
	h=To:Subject:From:Message-Id:Date; b=B2n63ommqj6+yqgmUzCADGTVDdTktEoQ5EjssvaMlEw8iLyG742NGXlcxmwwA/hG/2oUbElL9CrtdIeAMm/w08sUOl0qcraV0nIwp8AslSXW0U5RA2F3rEVJDFtezxUivlUUVNfzC5D7Jl1O9DDg2TLWyQugPo2l0cTCDppJrLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6vBicLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6vBicLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2379C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718047102;
	bh=Ac4/lMLyPkZwrnliccZgR/Z1gCWsoS5AuEeBjIv43os=;
	h=To:Subject:From:Date:From;
	b=X6vBicLauhp2+EQPlCr/PMHjRs400o6jY+MmM7Cvba742tSCaSfKdd7NGFn+mn5vI
	 GhKcuff5uAEucbICQpx1CbNg2JAIf5TI++cynNhBIQ72bkDh2mtZEcKXEu6n8cDRZx
	 bFInAQu1h7GYMdc0oZxd5LaUWSglxZgraeRcnGHrejosTniTTSv3n0tpR9h4T9cNiz
	 s6ijHXKcBtbKRbW7W0c51VZ2lCY4lxps/ynsshUAY2CPwO9unWB8ErSY32w5SEu7CI
	 0XS1WywcvNL4VatTE5bf11Rwa2G8Z1+sX8+RL2sFznTisfQqcAygJhGnjx1QSZ7lat
	 XHGJOwNEVC1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE7EC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804710276.32071.6904172890861832431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e102c7091f365c113398d5435c4a719db0d0bff37736625473e9b3469f23b8
Date: Mon, 10 Jun 2024 19:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718047102
