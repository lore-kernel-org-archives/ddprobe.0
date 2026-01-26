Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADFF258EDB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769466234; cv=none; b=heprx/71A/MflUiWfT7jlDYpqYcRuJnQ/z69+Z4ug9utTRG6UvQHASTfM6tKpG5PX9MMK7woH1QrmTzTv4yfICstifuEPy9qfykp2rhteioY7Yfs8r8SD6vB7GYlvqkUGK8KIFIIsUafsyu1xWsMmE/UVf/jXMbFw/mHalgwsVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769466234; c=relaxed/simple;
	bh=Ox204wqwknGjVHRxn8B4/q2yj/bQIjp5BN/513FOlnU=;
	h=To:Subject:From:Message-Id:Date; b=XsYOsTF1Y0LwJhY721/ot1cIBk6mwAK2c2iR4MACCGs6b6KmfckQ1OtcqBMM1GKxKRFXNcB9wFex6sjhNv1RdUSjDx7Iid3wEGBQpueAjTeKU9WfH7Y3Altk+8U0H9WR4u+zue/l+rmY50Z5PakDie9qwUrsVnleQ4bXhYFKYNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUTmXtS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUTmXtS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1170C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769466233;
	bh=Ox204wqwknGjVHRxn8B4/q2yj/bQIjp5BN/513FOlnU=;
	h=To:Subject:From:Date:From;
	b=JUTmXtS6a13mK5TNKGcxMDHwEEQqA9vdPCqyGp5xFuSWFtXlSb5Q88lu5+nNYdYCG
	 NE/0EVOKJeSZ6osaHOvXP630w+NgXxnsXOSZotDsHmDxMFqwzq70UImqB8y2qnFGN7
	 dO+WeblKPq3lY57xpHGpa2dWwDhO7t183yeITG2TJKRpKOF3QCpQ+9Xw5UpPghLbq4
	 XrYSK8TpF9FNudseqX2qkUbUIyKfzvQSc8IYhmwgl+/SZ4pp3RNTFHOxIPxM6BgiX8
	 sfITGWerocQmknsw8blRHu8iV3heTwWoDWwsIyuV+UMghodqsYHJUUbarO/MlRlnRR
	 x0Ffwtz7yqOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB9D19520
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946623358.26869.17085495720463799726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7176297547ba5f686eb6fd79bf4389b6ca3db4d24d1a848f8bda95c3243166c5
Date: Mon, 26 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769466233
