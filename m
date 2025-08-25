Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DD51C54A9
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756112394; cv=none; b=BYoM4wxoj9SxSNV6rFuaxvG5sBpyXijr45pofgJpabB4KI6zIXDc86eGGwkTQgos73Sh5CwNxdtkodj53/0mB3HBOifLip4lTtCWmA2viHkB/KWeqXGl2I6W8HTZhd5U05qzCi2KKEq497nhOPZmEjRBBGdtgX8HUYr7HCQKwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756112394; c=relaxed/simple;
	bh=yTLCvKMbaE2Lyjj3BEz6JM2SIVV4xoM+8ZQMTYIDg0w=;
	h=To:Subject:From:Message-Id:Date; b=BKs2xByDyC1MStRW/w4B2ZL2zfO0/ssDrvwM63FpmGQC7CBznUKtL/BmCH83+S4I4/rGLTGXVX+SZg23NU598eYvdzLB2TwvTLCEN4P5RiotxKa60MrfsvwGIyVCzW5/4XejxKWrmCUxGgRAFPJpDxqIstYaPZ2ulzK5Hrm1NYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1hlGUID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1hlGUID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756112393;
	bh=yTLCvKMbaE2Lyjj3BEz6JM2SIVV4xoM+8ZQMTYIDg0w=;
	h=To:Subject:From:Date:From;
	b=T1hlGUID0sK/PVT+7E8l+xRTZV/xfFWl0kTaL+oUscuV71+JXwB0Qa4Gi3dMcckJ8
	 TF+0qL6OnZ9tnR9q9EjOXvSCVYQF+pQHboDk3z1FCMrc/nLpDcSv1YA2mqKfWLX99e
	 qYmUokcWZmatOzXuegtOhot4mPmQurxdBEZSoqltB0yidR6fTximf6IH/ztTFUTCy8
	 sExIkkjBIHpLLaMzSF/2mvHNfRhDQc2Vak+wCtfeXufn+qlAlUywBFL4m5pqWg9EAl
	 7YXLYVcXwVmyuVUTtPlSzUl46vS5B7Klp+L+C2SZbkCv8yEoqg0+MVdWRFk4GRp04/
	 SbEM9zJksrgcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC20CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611239358.6245.6345343860504971984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5d1db561944fec96b03ff6a270e16dc45be61a3a5e3e083dd085acfb5376fd
Date: Mon, 25 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756112393
