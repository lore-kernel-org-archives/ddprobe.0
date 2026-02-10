Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D9B2C326F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770704634; cv=none; b=K6K6jdXmRw2evAqcLecdqzN76JkC8Xo8E4MgDM9eNZyy/dADzzbztYcObHJnrDYyZXJhZZkYlJ9n93TpBbj9yivJSqb5CvFjUG8I0NVDjhhKlgOBxQ3cLl+mC5VfAOPlkJE1aeRGkm4JgQRx9oA8erVfNWt+r+j9iOeY1fbnzec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770704634; c=relaxed/simple;
	bh=SiKlwoDrR9VLyNj+4UjhbiiWXs5yJa7O2ap4uYHsNhc=;
	h=To:Subject:From:Message-Id:Date; b=jx5qnbSbLWGyAcxXZCH9VEJZpIDlXksVPCs4kDe1qb5u9e6szlW80qebX/s+vscVrimqyaKZLcMp5cOaflHH6yHLbZ862JRdherr8d0C6MZSm6t5lSU3ijJsUDobixeUc+wrzYwtsvO+e4jGjwfaszNj2NAib9XF3VfDAmyyi98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUUFwrMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUUFwrMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AF4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770704633;
	bh=SiKlwoDrR9VLyNj+4UjhbiiWXs5yJa7O2ap4uYHsNhc=;
	h=To:Subject:From:Date:From;
	b=mUUFwrMRwtZ/+x2gJnyq4tUNo1IJNaaQ7wW2s1mMyud520ydQAGerQVYe2xDGvfXc
	 KLqpCUWk65qmHU5AwJdH5tEt/dvncBfv/ubRSE60TVbsREdxnX++4Y/GdD1CYIgYbq
	 /6KPHK+LdU42qQHqoqtIOe3eBf1LakGC0/l87BAn4xWvyfHgq6vzwBZAofaYAKHGRj
	 D79bH8Oeg1kirVGXqf5CFAfqW53fAJqp3fl9bWN1XeNGIDu1RI7DYJeRB8F2Uc/XPi
	 RIag9L9k00IrvcOngbOzgMLfSRAUsdUhpdAgV9CLJQMzu0ZtGQ8Wbs8ozEjlutOhYk
	 voWsEr9axt2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D4EA3F09
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070463358.30744.11318797168798782094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4146e10abd75a0afcbe4047a1d2621e5647105f4f51fdf07537ba52dc56ae1a2
Date: Tue, 10 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770704633
