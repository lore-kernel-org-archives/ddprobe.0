Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930981327FD
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713283163; cv=none; b=bEZtv18ywOkUM4YqsqK6v81Ln8ELQZgsnAvIGoxWv2JSaxY0OumAsXgh/UyY8STkVH+Kd8sGHF95mgt6N6dems5Fj7iLTSI9wMsPeD6tiBj96Ms/r3f+TfZQ6/xK3J+svcxnXG36m46eBGZSxZXo/ooVe6JHdmfBV97ZozkJWLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713283163; c=relaxed/simple;
	bh=3CwlDwj1I3knTqgeXX8TXSuvscEzGCHPuCH3bXAbOhU=;
	h=To:Subject:From:Message-Id:Date; b=jc2GnjwBPctOsiyCq4JxKIubJFYAude4QKai5ynMhJJ/oLqlzaJGXZrB61MG8kKsx6fibx1ay0FrSTGbwWIMn1O7oVEuzIyY183OUDHgVep6wKU2fBaF5Nm/QsAeo26Esnv0uFgFR3E73sLkFpQTr+3tZZsGys5qpVV9hUpTJuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7y4mlRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7y4mlRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F33EEC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713283163;
	bh=3CwlDwj1I3knTqgeXX8TXSuvscEzGCHPuCH3bXAbOhU=;
	h=To:Subject:From:Date:From;
	b=F7y4mlREaFlLZ7NP6rd+cU1mby7gSWHiX6K96uvG9+1MObYgX0hbWuAdp0sHhLFnO
	 oDpqgVq7lvhVzDDa+ZiLPr5i4h3LZJhAWCnfcT+ap1LGfPaWKlw1QUDF5rN5ArvExk
	 +0xQg66YXAF/gHecBFIv9+x4gCfCJfQTgi9RrCHUx16g05JIafQoPumlPtY9DgXakc
	 HS0ZT3pUYEIouoPv/ZQEBE9D+SW2ScwE54KnOGRcdiVTHb5dSzEVYFhyKFEglV/Hyx
	 a78B0yZzy56czUMZoOiJK8gWz10NLSGJYTvu1AB+wJgjbWrCf6HdyyFEjgvNsmVvfl
	 Go89pA0TFjsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD929C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328316289.13530.1521448350012555963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c026a68d382b809e620477318bbafd8a95e856e4d49962f548768b0e8f4c8a
Date: Tue, 16 Apr 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713283162
