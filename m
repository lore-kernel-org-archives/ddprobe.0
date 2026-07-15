Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2402B4C0408
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784140715; cv=none; b=PX4csj9U7qDZy1gu4FE/n2hYh8EryTH4jfYp0qo/ZL/DSAUyCy2OqaA6c+PNAKQxs7I189O3MyBMJzFIpCddgWz+vNcZcfi3/l/Awb8kNPZuc0561SZQ/uADuSa3J6FF56cNBRptZ4Go47ar67ldWpK1nRhnMboyi61lEeKLNOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784140715; c=relaxed/simple;
	bh=YjpqRoDkwlMDjsYY8uN2ser7zZHbS6lY0h9/tF6Knqc=;
	h=To:Subject:From:Message-Id:Date; b=S9Otb8O04JhrXdJFhtYNh98Aij+Lx3SSeyA+zNDHAIMAzW/cxSH5oiF0kzIWMpQQebcvpfgG9luF69Pq2Pi/U07nQWr4QLs/R14roJGGZpQbq7DNS9puZqyI8SBpJ+gPqvFBEf5R5yedpXuxhIN+mvxpM7OsTJk+MVRrlxjRCL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdr3+nxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdr3+nxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26B5C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784140713;
	bh=YjpqRoDkwlMDjsYY8uN2ser7zZHbS6lY0h9/tF6Knqc=;
	h=To:Subject:From:Date:From;
	b=fdr3+nxQwikJKuazEkwKyodfz3JuQ4vJEDSS2e6eQNE7rmSp2XEVb35Z25Eb7zrHS
	 aQak2HtrC/8z2JZ3K1FLn4FJKv7rgBjXDVtwzKLJShYFYYkJ+rWp6deUQxmpHBQzLP
	 CNU6gGHbRLZ957ZL+avWOFdgibh43L2tIVjeEdx5cIA9HEVFid88oZ3pSEsgzesRGa
	 NJXsp2XXiSizTQk3+1kCg2kWfCX0b0QXdCZLsD3QNW0IKOrcklTw0Io02auzhZF6PN
	 M4Lxml0L+kARcEZ7xaP7jGuEwE2sNnusDFVZaBPs/cRpp3p2AxEBM+DoGOQgcipR4p
	 tTZNioUxF7VSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBA7C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414071370.7938.8581715338323051051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ccd057ad1058522eceb9669eb71280d3466700a2c3e4cf02636602595d436c
Date: Wed, 15 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784140713
