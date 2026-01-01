Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3E9126C17
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767296034; cv=none; b=QqF2dTMPBr+B8OhKDyh0eaEuO1wuWuJqib6F6+8QIzuues8CfOc7jwfuKhI4pySE8oPmhkY+gxKwxfkX1xu6wmr8k0QMaCV/JwLb7Hy2FGdhBpMpFVYnqN6ICDg5/m/9VuJGEg+i8IqnWZUBtU9lzvUZHW3WaKEPtXh5O61kBH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767296034; c=relaxed/simple;
	bh=rdrxbn9urf8rwDMNA62zDh0zNOpibmLoTJf9iP58WM4=;
	h=To:Subject:From:Message-Id:Date; b=caXhkhGq1B3q1il1Q6EXxnra1+kbRcvcRoEuIOWtQRjO+BoDQyYaCfDqeYQ8KNfntoP+i/yD8qM/GXM9aDulbWy3EF3V2YkZumK7ynGNXRWP/FU5MhtgENWeaNZhZUW6kQsk4m0m7hAEjAGmCtTg+wgGM6gd8MJT2ih6siat9G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQuBSh/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQuBSh/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8151C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767296033;
	bh=rdrxbn9urf8rwDMNA62zDh0zNOpibmLoTJf9iP58WM4=;
	h=To:Subject:From:Date:From;
	b=pQuBSh/77qI2AQyXUWDp/Rq9MXR8Ygr+D95BwnLmeUZ0cn92nG0I4Dk6MUwQh13Pc
	 XHj67MU4Fy92koNzGTADWbF6E2nAtw1HY9x42jo6MHvcRVAtIm6Chpq2Tn8gUHDxxv
	 ktfZWXOLqK9XJWWS8ib083lglGun7Q/1C4BKBERaCdHVLWSt19be8754dC6Td93g8H
	 6f/sqgXgG97b8X6MfxyyzB6AHdBHLphkwBohVXsDo30mpt8rl26HBbpP9952v3+tbQ
	 ywEUldiRwEkhog/HNCMAfL+vJdwkW9EXvHPWQFM/v0dUzBd8GB5dlEX+iiccLEmT0Q
	 2DXbCLoaYYzww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940ACEEE254
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729603357.14284.17385424197121796441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde6b79cc68745afca960e52a0bbf0cccb660d2df85be909a808e42e7bb08551
Date: Thu, 01 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767296033
