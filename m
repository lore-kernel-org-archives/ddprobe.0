Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5430947D95C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781017534; cv=none; b=Ibk4JQRt5rhgkYJANsPrXU2rrskXMY1BUc+2CoHXeEyQqgIU9j0wJV4EeHNhLPMMVl49jUw34FeEmMYCbY7sIN0if0YUgEHRYvhopalFqiux4Y+ONdzQCFwRO/vCGL6M0Owmn95v/yWaCFt2ZwdMaDnpCq0PIECGir4bZGkf/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781017534; c=relaxed/simple;
	bh=oQ8ULw6UMFh7ohwOeM3ot54C8zotZVxQi0Er9XpePmM=;
	h=To:Subject:From:Message-Id:Date; b=Xoh3fg6lp0Pk0t+7xlJJ+cf2PE8M2MEpQ1pWkK5eDwe6fCSQwYxSyp5gYpeWUQF1NQ42ny5Vh/1YKC6dbwThKzqOWbvbTruBWluT8JB5HA2GwYCdY3lQ2kzmfTL3ddmjKimWTLCBLEWeli1KEd+wEMSgi72cyiANhK7kqMcF4PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmqmOBQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmqmOBQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA47FC4AF52
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781017533;
	bh=oQ8ULw6UMFh7ohwOeM3ot54C8zotZVxQi0Er9XpePmM=;
	h=To:Subject:From:Date:From;
	b=RmqmOBQBHHTi15foAV56bXrBNeKw2FL+FDAS+8RFCY4a2EoMHDZ4HMQrcDWdv9Q8k
	 CHAyqyvgHH9EFjqDsJGbkh4OJAMu7eQiYUBkRUnhPxL9YYvqY6Pk2FuuejQg+t7bu7
	 LGrHEp4Iap1mI7/JGAQefW94mu79IL32B0CzMYthj6/NdWt9Xb9xvkm6H+U5Qf5msk
	 //63ZJ/HHOHg5bd9FXjXrs6GDc2D5uSLk5ZEXrTxA9+J7HaQ3zsMnOhTgohWfZqdPg
	 XHmvGXVtK5DEjv7gfr+zoax0Ia7LWmVxsg/F0Py04xluqaz1p+UIPf9GmGaeXzlaJV
	 2ZHdheviOQSPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BA1CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101753373.1109.11968902331941123758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0fcad6046e2f0042bd72f0b0fda0d0130baf1644ae746cd570b7819b9cfc06
Date: Tue, 09 Jun 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781017533
