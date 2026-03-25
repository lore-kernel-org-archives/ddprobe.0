Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1020A3BE140
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774442094; cv=none; b=rmf/wTJoqG5xGvYQbKsq6ndN+NnvrNzORdi+cAoNkCQmiEfgEQA3ApFqEwUDMNYxmtjVdwG0etBdjlCUbGYMq5HfTO23Z0GUIiTduK65vsOPPBhb8uhAnHIOEDw288BFe3xLnR18DyAuik8sDcxl0DaBv9yfAztR9uCU4eGwm9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774442094; c=relaxed/simple;
	bh=oZnJfYhvhWdPL/vcocNFBZZCdfQzEj58lPPWkbAPxmg=;
	h=To:Subject:From:Message-Id:Date; b=ltevGdCwgn83q5YUwxAzsDHmP+8MQmntJAK0BxpQ+VKgQw88KpHc2FmCYZqLievhzjKBel2yIZgVw+R+ymboLahZJDRNnW51e18xTE3CJ5cO2HLjs+R+m4t3kss/xz/GEak73roiuU/uMl75jVHp+iYi2q9xCGAM31u2RiW41qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa1V/OSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa1V/OSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774442093;
	bh=oZnJfYhvhWdPL/vcocNFBZZCdfQzEj58lPPWkbAPxmg=;
	h=To:Subject:From:Date:From;
	b=pa1V/OSCVUny3M5fsi2rJgYEcyw23ye29TwKwBRTFRGTzcmr5X6HufsxePUP+PLQS
	 xwJB2wHZVDrGVnlv3MWVuqDkLcPMnukERhyxOSMUdOOXIHicqFWe301d8PlbIUkyQu
	 dWzsj9tqdOHrRXcQfFE8YXGOxoUpphbAYSEBd9YZZtVcQS7DGfa+6wRcuawhPAql8q
	 qBBg9G7FN4bFBbLxxVTaPmhIvH61aIR+x0hD8sHH4VYhOT0+Cunn98w1w6Myh2Krys
	 GjOnCuW2LdPIJ3MxT7yq79nWM3A1NJZxMnMt9YvarH4Xz7+5Y8G0ptfvTWaP3bfFz/
	 9WqXNoPsvatiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92733106B522
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444209359.16050.11798517825160462001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfddc83ebf64da0221b5d44bc6f0dbaf3cdc4e88ed00a7fc2e744a5f18b14677
Date: Wed, 25 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774442093
