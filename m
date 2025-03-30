Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEB14A35
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743338995; cv=none; b=uUYUHHJ6LjBcuuNvX3otZXMytG6g7/RN2oLB1XRQEGywJr1ckw1L6DUtqq+q/f4eVfLhpgnD9AlurIZpuThFLrmkpoJ1sNpTajFoyFxJawvQetneNhAqYFHUYahgAcm95mJz25YEziAAIff4+KJ32fR1NyXaNRkX2YeoihKOhwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743338995; c=relaxed/simple;
	bh=y5/JT8dDH6dXRMKvBV/aKS2VGgbD6lThKadCLWjwyJ4=;
	h=To:Subject:From:Message-Id:Date; b=U2CxAyW2600e3M1XpivvAuDWz2lhjuftnhS4gRVU5Dbh/SqKTdyn2WpgW0+ZG26h/IOJbJLKYhwNUYFfTvvkQZK4N1om/TmUrEHpAHfDV8lcz18eCqpTOSWor0NEFUk6j7vTfndUs/2MyQBQoHXOvwEhfxHjqgBYQP83+rm0740=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaVKhXbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaVKhXbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BD7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743338993;
	bh=y5/JT8dDH6dXRMKvBV/aKS2VGgbD6lThKadCLWjwyJ4=;
	h=To:Subject:From:Date:From;
	b=qaVKhXbi7rBYzGOWlbWVQBhF1o1WdhGXp7PKuW4rwcgTisTguryDTOVv0CMPX58V4
	 nL39HEAx9qp/UPIsFmj15nv576zrPJ5OX7jPNbjeY3sTkshYUNT81cBaR+EHnbAIsL
	 Os8Ug/JFHmCG/k/YuIGEro5gHxXdCSLcOer3Aa93HfkbBLScofjXLer41berccrozf
	 Xt9R3s69UcBzbZLSUqr0jzYDczWvmYkrJcRqJ5boGVKCyOQTbpiPyR5nAyB3z1FI8g
	 9zbkTgHNg1WSHUuFUeC0da7u87SSUq0PGHW0ztLnpykSybdf+dc7aCW7HixNbgdObK
	 ecBVq1I2C/zqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A344EC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333899359.5429.1977382807804111800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad6a1e0a04c70535aa1e749ec99d750d14f884672d7fca4bc626f11e77ae470
Date: Sun, 30 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743338993
