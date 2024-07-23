Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FC514286
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721696754; cv=none; b=MdgIgSqNqVYIK+/FbvQs8If08i1lOn1yaIXu1b3VMkOhgm9llVzja8cuXbihveH2dfNoR6B2kTq5ezhCMmFsf2lM/DuZenEW7fiRCxcE1yC+rsZK/Smed2Z3QI++MdfEIt2FwYm/4iks6yHEnbWh/EfpqDJt2w8GLBoJ4OYX8bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721696754; c=relaxed/simple;
	bh=S70Y0XGpX/fiRheoZvHQWB68zZuildcTOkavBpw7qlk=;
	h=To:Subject:From:Message-Id:Date; b=eawf/XHax1eYpqFKRRpcBkjVU2P7NA29CPodC6S22m596+jBoMIW3xq4CAzQKGG/nisW9hn8Y3I4qEmBBDw/rB5ZgYUDpVYm687smzH/RW8wbj7+Tfc9mH6jlhiIvlu9jLYgqyf4UiTKZNYNG3FpRIAmljNSMz/NA6IPS4LeIaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJfo7IPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJfo7IPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7ABC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721696753;
	bh=S70Y0XGpX/fiRheoZvHQWB68zZuildcTOkavBpw7qlk=;
	h=To:Subject:From:Date:From;
	b=KJfo7IPlvIucF+v695W70XJLNEUICOXmlrwDTYLjt2f38vaz7A+Y+ZWir2L3pNCGt
	 YJl/1ZMUfaX4F9N2ff12URfE0HU1cLfUPW/tJKs5JI9zSX7Vy/8/RzeHspUvCrWiAY
	 GwPHFZkN0psLR8aFvlzn4LHjNd8qLyjWMiganEAJtdKrPJuabRIcokJiiARpQ3DUNV
	 D1bXu4vVUsvhh9VpRTXTk9vwWJis+9pPv3Kxq+QPTaHGmg4x9yzyxGh4IBxf7E21tK
	 YNVdAbFX3/5esgyXB039AAfrcVb5OhUh6q7Fb2yVrVVPN5yotdgwvmadNDfQSDX/gq
	 jNqnM7baVeDbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92461C3DA5D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169675358.900.5409062941051822094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4863ffd0e7ba6e803d3d83b5383dc3c6cc12db05052cf558e7a4d6226765378a
Date: Tue, 23 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721696753
