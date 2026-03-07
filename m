Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B053876CA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772874894; cv=none; b=bIHSfvYs6tDUecDlQulbkbeD4njQL09p2YsSXBu3O91RbIQXohiLEOAnryNIQ/3E0vBdhf2vqCCzO8TDzumAidq7ptyxtTd9xwKHu8qQ7RyBAE/jq95Jy9qskoefQQ4b0zBgaJFKDm8rW7eiAtB0zLzm1fA62jNBOktwXFpcmwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772874894; c=relaxed/simple;
	bh=MMiIdinXErFGO5pN5H5wZP+aML06vUUubQwBHTyyRmM=;
	h=To:Subject:From:Message-Id:Date; b=ElrUwj7tsLXkpSz40sr/wnalP3YjsUku07MgCh3fP9xPMUWSkX5M3+Ok3G9Ur3REuG/lvPWI+HgqrneiSn4ymSPv8M5N4/ffM8nozv+8T7Jf+3K+auoY0Prih4FXnSpHgg3d6B+7oh9cFWK+Zf43IPxJyXw0hed9i4IB7pHiwGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmSgvkJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmSgvkJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE266C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772874893;
	bh=MMiIdinXErFGO5pN5H5wZP+aML06vUUubQwBHTyyRmM=;
	h=To:Subject:From:Date:From;
	b=CmSgvkJWj5cuGdHfL6WuGi32i3vPd0Sqi/SGB+bOhrLaXxv0WqNlSeXkVuQlz0/El
	 iiq+XyYRfgqAlG3aQi4KyZzf0DCFFUAvskjZxalvfMFGlZCG6cPxEjgPlk+6qNW9Xh
	 E9ieYpV02NwePWcViE02/s5x37QeLss6cR5LQzQwC3SPHG9gvxVZCiplobQZ3yLj7K
	 mMSjSJ7d5U8gCtSTRU4TZGOiWdokBtZpGHCt023HPd7OwGkJ2WVZ0sCP5xNyV/QcaV
	 rXwYJLAp/ENIKK209H/39OgQrU69ebttwzCCDlYRpCDdR0kEwbG8UynS1LlC4mdduu
	 KrTJvddhb5SKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97642FC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287489361.15307.198339848990613380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b786bc989e32000ef3dfaa7cde5d79ba4afa4daf7e3287ae4037ba5bfa2dd7
Date: Sat, 07 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772874893
