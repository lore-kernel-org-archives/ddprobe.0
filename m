Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D7821ABC1
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762600194; cv=none; b=nO+NEO/ACKU2lRoHaXezuX02ERXYd+aDfDDcdVXeF6rI65ZokGoMbhJIogYJJe4nIvL0F6WVqmMeamXzzjKBllWW+u8oZUfq8IQobJSVpQDs5V0dcQGp0t9LK3Fac1+7BZr01rthXbvAFGMPbSxsIAvAuEEAkk0oYae6OvFDxkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762600194; c=relaxed/simple;
	bh=iTzEz1eGiuxNhWzlT8nXas4UjPBqQ9vyI21byozxqjs=;
	h=To:Subject:From:Message-Id:Date; b=ZTeQc/36p6raulH65e0TC1sCg21P18XMJsrnAQq5mA1Umt7/aQm8XDZpF86uLISR3NpILVUPmJtDDqpsILJUAhPmutECMTnhR1Es7VYU5uhyw9HozjQMeaTCZZp6LBH7CYKEVkoEk5sIX5w2lpNAwSUCX232fR0qiKlNcpV5Yuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCxJCmvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCxJCmvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE97C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762600193;
	bh=iTzEz1eGiuxNhWzlT8nXas4UjPBqQ9vyI21byozxqjs=;
	h=To:Subject:From:Date:From;
	b=QCxJCmvfm8cYQ19naI/rntKBTdYfFUuwJwtuEzo1vKVYT+Nn5ZnJ2tnBD48Rn62P9
	 23Pv6eEMfLDN/qAcGsqamQvArxKJOnNW6C5riQpTyGEsd/IIo/+ajDtKKO5B1DqZgT
	 f7W5vab0jqn97knc/XpqwbcwWHeZ2EE698WECQWa/fVaYJ7ImJZl9xYXS0k7Sb5iXQ
	 3jLt5sTjFIW0+zBEmxUFZ7FA/RHhPts7KNbvX/FTytwrbaqDKDt8nTUcSVuAHVInC+
	 8UPhLCuX+JrtdSqHFtaSf4kZ+N3ShJykaQPdkXs770AvvtF9BCT5LzwPos05u1Syqi
	 Cet7awqtEsPwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC71CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260019358.10181.16774888821098722712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30ecdaf9389f0231e661b788b5e7324741f4fee010a97e31ec5e44cd1ff20a5
Date: Sat, 08 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762600193
