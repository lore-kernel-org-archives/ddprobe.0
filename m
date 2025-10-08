Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE65224AEB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759935594; cv=none; b=CFuX7jbJW9MHagjtrNUgv1xfHzjZO5vMr8+1W1vlcxljfhSfqAioy9FpGr+DQbCnZlQ7jyuCzPFyNmZKC1B72Vlpoqi205zpCutP+MWOk28RfO2QRGSe3NsxhnZUTd3E1nmbNeieFJ7Xgm5DrISdEwNbvqNSUU3iddMZZOJi8No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759935594; c=relaxed/simple;
	bh=ZL66MFEc3jpoy6Z1dMR2D1+tB/vic5gRL3ZjbZ8etBQ=;
	h=To:Subject:From:Message-Id:Date; b=Xa3eU6q+hoBrV6ZJkBSHt7DsYWTEAyW4tYSud8Xgm509lTd8qgj7/fUu4lRVB4dvaKV0iMeKsgEfj7iPsv7BpmhLzurkUD/SI1iVyM4arOvM30Ra7VCsgGoBmLbxeWoSO+LLLyBvwt23sMcRLQTboMSc6sHcd5YHzzVzpQ8GT0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVTKZOEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVTKZOEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3982C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759935593;
	bh=ZL66MFEc3jpoy6Z1dMR2D1+tB/vic5gRL3ZjbZ8etBQ=;
	h=To:Subject:From:Date:From;
	b=WVTKZOEVhqjLr2mT3MFlL6uhE11y/1khuXAudKSaWbHc46m4MsSbY86+hOOHe+mHw
	 Y2VkHBda4kVdfaAxu+XMOZ+MFVeieFF/Fq8CWY4SoY6pe4Xr6hYSTnL99zDoI0SBmv
	 v2fZeyuZR9TA8HtjT6o0wU1cJHoUkA61uZwEgLxEp5zJfUWhz55H9IfUwp1/8lH7n3
	 r3JOv6z4iY7rWuVcbQuMDo5uZNOBXijDnrsBzlIs3+e1gcIQObZq2awIKOnVQHXDEk
	 8KExRyrdD3ylMDmznwnrIPxaoe5Kyvu6mLlK9NO4vHpqstResMQHCQnmEA0dQRGtlX
	 zKca2aZfL1FiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63BCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993559357.4652.5489225393310401134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f1cd600506c3c3f7f17f6ae8b9ae3607576b508d8ccdfc52f0cc73fb283570
Date: Wed, 08 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759935593
