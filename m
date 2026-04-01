Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE2C37F00D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775063734; cv=none; b=fhc0q0Hd9jas0U1iIlq0PrHCW1QqEn7Ldj8FnKzMHtZG0r29UbmHAQ+FmnZ2c9h167/CliySXXG1rclu4Y2orSVInch85AX18wqRNleKMYTi2iEIG2H01t74PdMkz8rEXoI6zYf5Z1mFB1iW2GFd72HkcaXPpiBc/Ul3MXpteHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775063734; c=relaxed/simple;
	bh=ZXKXesu3O42dJEoD9BYFN41b/n6SOloiKGpgXc/ZEoM=;
	h=To:Subject:From:Message-Id:Date; b=DBLAqKQvNv2kLM/vZ4Mozku3qKDejJm8H3IUP1hBkOVIF9VtTvXAq7cveP8On5jsad8vA3hePaQedv1FcNmvTrdfQVdMwHh0KRtEYFqlwGEKN0MrsDM67AcsJac77Vnd1vFQWn+r8+ChvVx4zCZyXxCyVfmQYSp+LEnYfdjkL48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCgzpEiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCgzpEiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC07EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775063733;
	bh=ZXKXesu3O42dJEoD9BYFN41b/n6SOloiKGpgXc/ZEoM=;
	h=To:Subject:From:Date:From;
	b=DCgzpEiK/aCHKnKN2/fSqMNqsJKRpotUAFfzmSnLEHum16hk+f+a+cQZUj12UfZTM
	 Pn+BFOwqhCZN6xUQoL60haCoBrnI6aF0YHEPZI/ElQyyefV1Q26JqMe/5Fji286BRr
	 ZJJFLUQg1TkpKmu99RH7rCN11JQ860PKaFP4erWQnezP/IaO2OW3MGHhT1ZdaGesD+
	 vgwUMltdlLOjtxSv6TYkzjofHGQOYbQakDdU1GlmROPp7h9NO5BTCFBZnJtCYzysbb
	 VppQUJPbTBbeqclVWA9UoNk6E6LpdtsrsGlm50ugdPMFuITwy+d5aL3pX4jcTm5J4j
	 BaWlp1ar9ttCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4241076386
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506373369.2860.16349076448867475947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85276c0deee0a5f696d1ca24e3c26adb55a8d89cd27ec9c02835f01f4ffc884
Date: Wed, 01 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775063733
