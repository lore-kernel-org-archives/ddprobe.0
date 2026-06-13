Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7775038D3E3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781345194; cv=none; b=m9xj8phKgRrkxIipnViQO8cxg6MA7v9V3PYEXqtL/Fdbtrf+cqewDaKv1zc4KR/X0VW0ijrhONbjPxlUJ2mZWyn9rjLklDQ6+TdtuNp58ptourfy68MxejaObkdXVDqubI3P2x1Cs2m/giJFAjc74BLjxKkyTpgAG6FkEo2rZ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781345194; c=relaxed/simple;
	bh=b4Gu8rptQfZ05vJmiydWgr4C5n1DbyUesuJBn1mPYqw=;
	h=To:Subject:From:Message-Id:Date; b=Zky2+ytRNV2obZzLHJnMYxXuMX92vEiO/yJkYpY6Dprw/BTSq0dobsuNo99aTzj20MQOvONHZHPT4MyRsOFGq1rzS9V7C+uwqkZJ7F55hQvD2lhMiQw6KqwatJ74fanXLK+o45GBM7GvddG2IneW1L8niyn6rpmVgO46rK6CWT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/y8cBni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/y8cBni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A98C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781345193;
	bh=b4Gu8rptQfZ05vJmiydWgr4C5n1DbyUesuJBn1mPYqw=;
	h=To:Subject:From:Date:From;
	b=o/y8cBniELuN+SZXsEtiuTC+QnGKKsWv0YHEOsJ19+l2+hmeKpnPjJNI+9DqOVsIb
	 3gNbbGjHaFJMzhdUxRN1yHekY2XIjQ5PPlNW0RZ63aDUp9hvEDUPqdL+J7OUxJvRza
	 gr9FPiXvgqTb+Cdag/+2cUWZH/07oJw6fWize8SvxYpRa2hZPgd/gchzyFuZfP5EHN
	 HtBqEJ09iYdwpR9cKaXvhU3RJmRhWO1cJPk2TMbgXbYa3wX4MS+1YZqGe5Zg6sQc88
	 XWV7uM6i/mfaV9ih8zimg4dXDA1IvOQpEiDCGDWFn+dFKbJNVckT9Sc+0uh6cFGKXL
	 eI4WqkR6+QzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB362CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134519369.12682.12763178107618251636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535343f7702f195c043a05285038137992c6fd2f0f4423fdcea0c043886aa2ed
Date: Sat, 13 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781345193
