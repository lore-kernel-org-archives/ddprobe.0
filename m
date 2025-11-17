Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AE7242D88
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763360514; cv=none; b=MXfglVVAu2cisfcSA+Y9gq08yQsFVi8wL189i/m3cPLhaoBa78RmFe81glUrupythRqMzAyW7Z7GM5uHPEiDGMxpApIHVcptxD/XJLVIJ5QMzqny0YK1j1fGqF/REH6pknbJkWKi8q3LiougVUijh3l+UNb0bQW9w3rSm+GP9FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763360514; c=relaxed/simple;
	bh=PooWpAr2Q0jsU9NFvHXRWEOSAxsbX0mim5NmkHbQipI=;
	h=To:Subject:From:Message-Id:Date; b=MyjztlwWbWxpJR7MUzL10lgBOK7hVzTg20v4K8dCkzWjxgEcsnX8dm6TJyVpOA6oVTfxj6+o3QViqEFFTwZbmqCZGlIf3ctvKGKUU97WRpSW4PqeiBmRhiPjnS7UT89xZ5k20MDwHqCZyridnpr8i2ZZFHJBBjl+O4HtCGKT7fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLPi1RTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLPi1RTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9422C2BC86
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763360513;
	bh=PooWpAr2Q0jsU9NFvHXRWEOSAxsbX0mim5NmkHbQipI=;
	h=To:Subject:From:Date:From;
	b=QLPi1RTQJbsqQypjJAAjbmo9ENQmXE238fatHARNlgHf9nYYmBqH9VJ+Fr7IgMKPO
	 aEgOvGWj5Btj82dpGS9J5TJZg953rEZ4+duE1LuLIuonnattJcMSrMQZxndbaksqjO
	 N3BSUUOpnWG6YC+p8gyZDJxurWwX6lh5W7WNQrWaM9aLXY69AaPqK8Y+KWpVTIZaWZ
	 kopTFtQI+8T507uKUJCWuSJrNzUJlEOaFMzZvn17g9B5Ip2x99iRpuiIEhVvrNST67
	 dhClthDI+NqLbEfQsu67wLA5pRSjYFb+4ZijhwD4p6ERO8PZ6STZ/wPpMjbLN2uDnr
	 +Yz5mj69i0Gtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFECEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336051359.25910.163602440014881776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80ab2389bf6a2bd37233f28cc7ddb39873a3e9ae88933124476709ed06c71e5
Date: Mon, 17 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763360513
