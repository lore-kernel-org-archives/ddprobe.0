Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0FE1DFCF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705493297; cv=none; b=RdGHwr/BKGr/sLTAfaZgIzhvJQNU8wNggzku6gmTpx154mapkAlxTosXBWKHACwivJdbSHtNmDtAG5b6AHEviX23nwookErw8G2z4Yy4tGu4Bp1Jc3DzPSLs3V7+iZ5yquDbkDSm/qhASocBIq+HSjmO372A63Ep8v4L31RVfiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705493297; c=relaxed/simple;
	bh=z9UuebnpKDO55MEbb3tsOKbzBNqEVo08HuSR+0MKcE8=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Qz/zqE1F6ibYPF8ziKwS2oGdQF4V+ws3q6srNIiRjpSVz+wTTBsfk20cNI7tTg2OtbylsLec4hyHiUQan+vRHU2aDk2003mwIfPvonjpBMiiF0eUBKGhRnnwLwAUpIi+nLFNqwSrGsxJWcqodpx73vM6QCceZJNdn5II6QAHIr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IN1N+NrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IN1N+NrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7914AC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705493296;
	bh=z9UuebnpKDO55MEbb3tsOKbzBNqEVo08HuSR+0MKcE8=;
	h=To:Subject:From:Date:From;
	b=IN1N+NrFVgSidq8UfKUrOPHbgdN5Ch3ChHqq5L/YluXL2qHi7NUpNM/gddKm+WUIE
	 gxuJVRAw6RiK5Hh2wAPd7wUtSKRC5GuOJumMLfUM5CZtb8W6U+roUb0EPh2iCB4m0G
	 nz4WwRCkTN3zX2zOxa1m00+Eb6BDZc+Ud/DQYHhIDlV1Xdej1nBsp3C1MTP7oogP4z
	 5kUaLhWNU00S5tSkG5R0ZM6t9woT2XxavZKGkL56/xtBSjhxWVhcOq5VxszltI7NID
	 x1HmA3uY+8A/wMN5VQ8HRKA2Gnf7Fh5cnzbrARonYYmLQhrj2oOU8k0KU0e2iihGd2
	 hdTQrTF7J1xkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6237BC47DA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549329639.23844.13733570343916753345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbec1d2c1e6af445c99712069555c6e563f59e05e9b142fcbdf86236f277eaa
Date: Wed, 17 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705493296
