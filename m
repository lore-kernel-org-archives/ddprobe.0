Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104EC2222AB
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752148194; cv=none; b=DWwB9tjvO484ybnxJHrQ36UXU9Cj01xZsWDgPYtclTr5/ohm0aLF4tyXZxeUikRVcquHLAInpjVCAexoBUdftuEsBXCYWbu57ZDYl+UwTgHWaXQfJ+p6iMKL0nNs0/Z36CvMd2HZndAmAoCBehJPmLe50J3V7340M7xHbj/MJXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752148194; c=relaxed/simple;
	bh=CjbxHUXdoAYj52vWgtGgfzWw4YwZ46bCmQHh4ozkyns=;
	h=To:Subject:From:Message-Id:Date; b=fxMZa+mDOYZUYnxNeEJduONboy3SL2/aGlITSSHHSVVdsJy9DiJ9FO1sczpV1B9BKJllumGQYUDSpgeH02riQlpWTmSS4Jb41UmkmsjYqV0BnzDJ8Q8Zm4Sw9DIdNCrC9rU/54iYGp/kM09LT9DRfpiCRhvlusxC1pcyAOecVzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOuegmR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOuegmR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E05C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752148193;
	bh=CjbxHUXdoAYj52vWgtGgfzWw4YwZ46bCmQHh4ozkyns=;
	h=To:Subject:From:Date:From;
	b=lOuegmR92IyWVrjDrCNwTBhByIv0p88WMFwor53vOYNuYZYdfZvNVM8sLWYuaZwD7
	 Fu4ivfcK5wM0gfAz6nqZ5bGR1qzMQkdtRVjwrkDSHrFh2V6XpdD7ZZWCK3tmfyY3HY
	 ov1Ue9aQgNnxaOrs8QWfRjxU2SFb++2FBmm6TvuJWXG9qh5610fsS46qfYBNOXqBDP
	 KATwd8uV8uWbjmVJYo83xF1/tgAATTPnZQkcyd914Ur+Qvusp743oYGP/5QmaRKynM
	 s2hWYnJn7Nfnq64dnwKcKzsM3Hzmjy+WoJ2mnSbLgVJ6u78xEFRSn4W+sNSn2Z3Dtt
	 WH5o0jX8cyXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5DC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214819359.6379.8754436328794642594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47e9001f285935da9946bad77c4b0739f37bddc3ba90f614e36980f2977ae0e
Date: Thu, 10 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752148193
