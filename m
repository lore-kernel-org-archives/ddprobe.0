Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5169A3E3C4C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780508074; cv=none; b=fF6iTgCl4DlvxkJv5g0krGCB9H9qSkicdrRZ+NsPGdEQFxsIAuC23PsPUcMd6Q0Rn7Wh6vB7Al1IQCh4DkXS0lZ47Zi00N08cl57vT80gOPN6guS1mZfzGca0O0jnHL0k41RkxSjxYGBRZVdakTjaH9VFPg1cZEqxyQLaCAeMMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780508074; c=relaxed/simple;
	bh=ipUIJH8rLyMVUGHNn8ofMiiRaYL5bWdcHiFbNTA54gc=;
	h=To:Subject:From:Message-Id:Date; b=fvW1lfVcyG7ZCotJJm5YSBJWdlE+m0+F4Dlq+gThRPus+EIHbkRSpLyzfgcVLnjoPqdr5+jjxu6XW5AglRPqSvKOMYQ3pKKFQ9B2rykPAXCMEO/ALfgB1LqDTRIyG1kho5q365AplGbzDdD9uJJ1NE4pPoflnOPt0HPrnpX0vyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fba2bx9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fba2bx9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF931C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780508073;
	bh=ipUIJH8rLyMVUGHNn8ofMiiRaYL5bWdcHiFbNTA54gc=;
	h=To:Subject:From:Date:From;
	b=Fba2bx9iYYBAX+sAeJvvjZ8U+4a5IkNKmU8WM6dZNaf+SrvkHk8+aw8DrJ6yk0f+5
	 b85zx8/9TUqi7BZ3Xb/NFn8qf7GG4ckM8u8T/Ye0FrsAs7M+kMusUtm7qI40+LQOE8
	 hBjykcJbETqPH1wR8AW99lAG+83x71nCVjtGXsDQY/6+wk4Cv0pgs8vT5jPSrweYiZ
	 HZ+cgPXoJAqBhZjo5qgl5X2L4AxI9vu5Bn68TtQ3tUW9K59U/UZCk0Zt9JVtwJo9Jo
	 4oe3ySTAEGI53+J6a/NQwd/UDe5EKPhGyWjYWsxFh3DGk6eeMXSfAsAxX+SCD5qY0D
	 5VbaMXMMnmztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78DBCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050807374.15603.1558098189259442399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac2ef4384c4e5f0065dfecef51b77318ac934ca84a3afc65d6c9dc0cb87c4d8
Date: Wed, 03 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780508073
