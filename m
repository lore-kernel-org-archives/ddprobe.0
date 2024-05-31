Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FE639AE3
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717166063; cv=none; b=iLaej1RnHZ5bP87d5I2AGGXAUVeFXDjVP1QsEMRUnEzfrH9g6cPAR4Irh2fnIk0kPhpltxL71G+NTPl9xtC4q5eRhBaK0qbPiv74Aikz2V9FhxkBEUo1DAUwhBMtK47fnOjPrSa17U+mg6BmeUGSIBHPivjWAmxgDuuXMXcsq5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717166063; c=relaxed/simple;
	bh=L471WdQlV7RnXPNF7mTBXVuhECyKLuq3JENlsBjbsfw=;
	h=To:Subject:From:Message-Id:Date; b=D83j5nsPXjnZljOkaQDOPy4FP4HMT1/KPA/5Ics8NrefD9dGz41yd/ytdOu9CQSTvnyBCNNlnBRUWGDb0TURAQVxtdvpYS0ZWqsO8jchxyHj9RgWrSAq3Hnpimq/HkPX5XP7yjFxyCp+meM0J7qFDzBRS0ZfmhKk+rpu5DH8d+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJ/mbg/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJ/mbg/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3380C32781
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717166062;
	bh=L471WdQlV7RnXPNF7mTBXVuhECyKLuq3JENlsBjbsfw=;
	h=To:Subject:From:Date:From;
	b=gJ/mbg/ZTcykLUoPhwnXedS6/WAs7tnhMWINdwuGnmMVcl8v7tf8m/cIWcnXf4fUP
	 QFpLnhuPr2rGa76veVaCxakTvaCjlumA+kVhcpGcPHmxXXxyPzUCIl0VQolQU4N0cL
	 s59AVS1jp5+1+4rinHBZ+RJsFQH+ZGz+zDhl0OW4qxpIGQAUyCR56YTajFGzBhctts
	 A9L3Slne1LnueTO0G6Q9Isud86egKu401efqxr+UoeLb1v619x7vRZZjr9n/qU6DH+
	 qrTw6zQP5uoBzNBJ5TS9qMDTar46FVco0yePenj1GQiweLqBvBer89uqcJSAU0XX0S
	 ajjXwkShufpSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF98FC25B7E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716606277.8993.2727063798389063098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44ba4b8f16e3b8532bbde23af9b0a80280f8e0f3322a1816f01f07669dbf991
Date: Fri, 31 May 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717166062
