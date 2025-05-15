Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7C61401B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747277394; cv=none; b=sOGuGotaZPBYe7V2SdcodNoCFkhTaOT8Z+Eis1ePx+5Jy7Um2z7fyIC2wKsLCy2pE6WXUcxxugPAS9v8lk7h94An8As7uorxvYh0+4x/lb9pRReLKSGDzQ97u484W18kEwgosIiuOjUn6lrZzNXtBoDFte8LvAm1dr8wmWCMqs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747277394; c=relaxed/simple;
	bh=/MARJQVwp0xzvvjBENEY+A2mCH6NYGEN5dMstEZ98/E=;
	h=To:Subject:From:Message-Id:Date; b=IUtzewDrL3IDlI8XwJRjizEGYb70TG9//yEmUyFFGUjHbO5ynC7ROx7jowW9XVbc/1Gm9/EhSzOLP0+CDfwfPc1ljsBNVcrImjgrnOtynDwNgP87weNmzIWOS2bVowEJKM2gI9Op5mTFQRkhDSSWgXqb4pMQJSs+jJlBDtb1yQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvLvL/9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvLvL/9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6145C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747277393;
	bh=/MARJQVwp0xzvvjBENEY+A2mCH6NYGEN5dMstEZ98/E=;
	h=To:Subject:From:Date:From;
	b=dvLvL/9UIYSuOwZ9nwR/R5pOpyh5f1upVDZSWXm+LGf9IQ0ruckJoB8NU3SHGXn/s
	 Pxs8733i5QeX4s0laAZ8lJzZrrpJlNXjLSVfD7R4hcPh+s+aBqKMjO3EgqvMrs/vnC
	 Lq5nbKSSxNa0YQLQHdc4ND+eR6VcFy4PSIKFb/yvwKdzR5K1MmlK2rVtK8J9Bxr7l7
	 ediLaTtphU/2NpKKvdGBMk5i4R2uVvtBxO4biTRVFfEAfriMhiXjcsBFkytNLMPfBc
	 7UUOvuTyQRtD3QIk2aZmNnskE2x1WmzsNYtUS2UTbsIeLE77udiOXjG1H7rbm0GWJo
	 JgAQzaLHHPp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286CC3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727739358.17369.17701774935052362829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe532d81fdcd18b30f06d91044d67f8b7286880bc9d89d701c09811dd6f90082
Date: Thu, 15 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747277393
