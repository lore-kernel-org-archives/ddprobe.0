Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E1B344021
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790568634; cv=none; b=kOJUIh3ACM2JvFvaRgTRBaEtB5U/Bk3/DEpbVCBWBJf7Z5izkZ5L87OWdI2sY/AkHgK2Kp7PdFa9TSQGekaS3m9lhNOx3VjkAI/dwH1tghNzcvE0UYp22r6NJ8lcEH5SsZqQcBJG6Bk5J9hCwTIbcNOifrKLNeKUx2F8MahIwi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790568634; c=relaxed/simple;
	bh=UCwHjDWLBTzJmVVYerMPn7hwsdCy3gsF8MGIaTJ39Yg=;
	h=To:Subject:From:Message-Id:Date; b=Ainb2YAZF0VSy3qEtfVIvCvyhQotSTtTyThJPyjnq/wtBZ3MM7mohyTaGacdSd6tYrhcctvkHAthCcQLtRZjEvO3XrJBH6UGH+H4oiQusSLLimEzWQTMwTmNhv1PvV8kzFnzxHU0wKsoylBNDJ6qfV7WtDTexY2EyrYGvZxBQnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl6UGplx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl6UGplx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F3AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790568633;
	bh=UCwHjDWLBTzJmVVYerMPn7hwsdCy3gsF8MGIaTJ39Yg=;
	h=To:Subject:From:Date:From;
	b=cl6UGplxtEV6cFsEbfQUCougjh9HJ8N/drQTwYptUiC9dSRia3FmajFHkVr0ZZ5kd
	 fMAFKPI9BFXJMrmvL8cfeWpvKK1f74kUBQYP3IIWcuqJPHO1sFMDDuDEf56bnonWzo
	 JhylQo9oFOYD944VhdiTWa508ijeJDy7ddnAb45cHnWZ3NQHvSlhhLrYmVUzMUhMT7
	 YSheXCbp7JlmAqPZc+gJii/ap934pupShxWQdgzJpHBMvHP2AVMQVq2HTf4rle2SRx
	 WEFMD00lV8PB1+ZI/6tkKDPW2F8QHbyYJQ0NW2CtkSMpR+1MoVoeht6zyCoj8Dm61o
	 Nncssd52aTRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19CEC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056863368.29248.17156443198291558022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c601191aff0d1267c8aaca946521a95355ead66a697d277092dc7d24eb2f136
Date: Mon, 28 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790568633
