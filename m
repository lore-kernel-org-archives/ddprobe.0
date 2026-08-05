Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616133D6CC4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785906634; cv=none; b=dyDHuTlNKfO4R/P196LNGxeL9TWX9hGLpJKfWF3wZDZigTQNBRxEmQGaIf0h0+wfebzc1Slqcj5RrkKtZqR9pRwhYBR2c454r+STvQ1jtcOOE8o6y0jttjFen+XeX4cvVV3Kqwtr8mn3QKbv9hf4xaYSJwfDWV25BjTQiJsjptA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785906634; c=relaxed/simple;
	bh=TewBjoFtpQjJ5KSTdiVbMimDnVp/eonluUq3oKJ7hZs=;
	h=To:Subject:From:Message-Id:Date; b=H79NvuAOeppXppPXKVWneF3jyxB6aoIsLfwyDibjARFqhTbt8BqN2Owmt2oTM2+65w8ogBz3Lai4ef52C9QhABzJenLrjF4bBqkkwjn0nu1ZGouE9akpMOZq1/+86hF01JZJh6AKGgyqMtlPPz6Ejn8lSB5OhWRam+zR+7tfi+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMqWUaI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMqWUaI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F54C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785906633;
	bh=TewBjoFtpQjJ5KSTdiVbMimDnVp/eonluUq3oKJ7hZs=;
	h=To:Subject:From:Date:From;
	b=OMqWUaI5VLBO/g8iLhLqNsXUPB1Im6PcN1v0hp50ddo64qGOZRbre8kQfOLZzjjQ0
	 K8E4z48MD4LpJC7E3yRNtShWq4+Vx98vtyFLGox7P65lmHEUwOvrpgv7sNXlKR0vrm
	 PlgIXNOQvkGo58DQt4JdpSA+yws3l4s8XtpLrHJSRkhziW04vJ2cwuS9rB6VAUH423
	 nR5AuhFPiY7yylNQ4J8HqDPM2HQvHS6J6iUr1j77s2cjyfiBg99d/eFhmG8VN39KPC
	 FAoxeVy2ZAaWSEGXSJQrPIteIdvnVstNYFwP7Qn43uTOjDVRJY10f3ELoJfZ8LkTvc
	 h5GHB/cOYQ+vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE543C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590663370.16048.6965983722865467444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9d1af0413162c51ef0b50487fbff7708c6baacbf1ab86cb4085f861f2c6673
Date: Wed, 05 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785906633
