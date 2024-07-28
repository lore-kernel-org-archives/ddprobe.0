Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B78512B94
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722202554; cv=none; b=GE3EOvZzBdhxSeim2R8T48FvMm6C9T/DlqWSSCu1pk1w2ElW/E0ynFm2lPe8DDd2Q8e6iGP9x8732zWZ3hzAh54SoWQVCMHgiwqwbuYzUH154+o5pRrPMbcyUP0jmK1L2Hw2ITsaiuJbrHVQ7L3/LVvXdBpPcDlupFva+DH+pGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722202554; c=relaxed/simple;
	bh=S9pCjAgdK46AiSmmnJLC0HSxznzzYHey8y5+G5CKckk=;
	h=To:Subject:From:Message-Id:Date; b=QY7vtsvtoUL3GXAZ3JZZ0qFjqN8f003kXd7S76+YXftWjxJtDWuQWojz99uFDVNTY0C6ae53zNbRrqcmP+G15xp0q4lb9lf7LXV3OsIX49O3dJbpOu3XicwK7yJ+9ncqi/OySB5CAsOLf/sxX5y0NRFQS80HzwSZnywnHbh0vlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3wH6PQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3wH6PQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF117C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722202553;
	bh=S9pCjAgdK46AiSmmnJLC0HSxznzzYHey8y5+G5CKckk=;
	h=To:Subject:From:Date:From;
	b=R3wH6PQHYAZUbNdOB8ftF2yLepMPO8QC4rjdI2zCrPanKtZcbwmRC8C83iP3FwgIO
	 4yZogZdBCoLf0PQf4/ZzMgHfnsrVNDi5qwanJsJ2jhs/Qt76WstFoeC76QMxsZ0hTF
	 +Wh1rPZG4SSRFUDlrSYJTC+pbpkmsNaXAaRR/fA83ZuIFilgSG1E/hODNKauUg1FWB
	 k7rXtuYpU06ZUVlkZldSYCxLDaBu3bQGvCvXaing849tY0ckKGm5adF6bXzV57kchc
	 Tt9SzuNm/JL8cI80150mkgmCqQurwzGjPhQFZ1mCAYDOqK6u6+py+mPlXPDRzuLLkE
	 d0T3Ltzy7aDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EB1C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220255362.10095.12299449598971963642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1426dfcc9312da964581b3fe3c1f57734cdb6682e9d3224fc16141f1a870cc19
Date: Sun, 28 Jul 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722202553
