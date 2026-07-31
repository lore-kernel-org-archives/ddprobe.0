Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A90437130
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785521434; cv=none; b=GqPSovG6RHvr4Jd+mLW5g5Q5tbpaxWkMILQh70QAVLmu1qnxy5IDnMDIqHskc1XLqGmGlg3Grys7arZgDPvvJDUnItaAIkLeWxTNgluziiBNWl3npJH16G/nae0Wzl97UqeDidx4HjF1RVXzsx9C2weloyFH07B03+pNjjQ6wzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785521434; c=relaxed/simple;
	bh=9/PUx+d1jpdByslfZ8CJmGf65Cuz7h/zO0e5MgR5GdY=;
	h=To:Subject:From:Message-Id:Date; b=tvv1jN0IUlHKwLgxpOWbtHAsVHhF8Y8SAmsUioNiUzvQxL1bd5CjahI/Lo3IQhrqhQh8lcdSksusL15uCZS/lFWj6KEx7GL4GP0B7N1IPmIGT3vikcuByIVsA8WhUnSr6UDcdQPyFVmE0Kwc3T13e1gcFf7tL0R8hpXaPGmvoso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8BMibOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8BMibOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF510C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785521433;
	bh=9/PUx+d1jpdByslfZ8CJmGf65Cuz7h/zO0e5MgR5GdY=;
	h=To:Subject:From:Date:From;
	b=M8BMibOVv69IqRTech5tqwowebGy7gz2eNI5l58hI6hnnZvkL6UmCeALNUrMJbZqH
	 l2F+qL30eWSa4fxbQiLE8uvV90u/0V5+1EeLlWUYWlUVP8f78pR8JnJwKiIkfzG4sm
	 fLi53mXy2jy8TRpFcbLwOKXlaE7ipeZeEdwfpbnmK79mawN7L4HeMX1621oeUcoxyw
	 qMuKTp6VbmJHBrOksk0emaNBiO4hpcuskIWP1Kol0OP0poNeEd2iMaQEqDBot0hF2S
	 lsv51oExEp+qdRLoWf5IyQjGW8oMS9Mq29evdWwHFbKk19ySKYGYVrM0WxfYb58+5Y
	 4xY/IN/w3Is+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD255C5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552143369.15454.946302670345552108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb867412d714d0c56715df2f42335f480dbcd0b4d109f09fa5681da778286833
Date: Fri, 31 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785521433
