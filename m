Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27A0199225
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728300353; cv=none; b=tuaocGVbhA06HptL0ufEfG+nSNl86wyXsBmMcm2h6u/h6pscryrSoPs77ebsZh3iCHt+MeECHNUycsygIL59d+tNElnG8I3yheRyV4ToxqChm+mlrgNgFMF5ZSSXWIyohfPwnllfTCT6ztMBz1xE+Oyy2Sr1/SA+7NpAnAc/d0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728300353; c=relaxed/simple;
	bh=ljzxifEBFO10vAWAsezmOEA7KJBKN9QtPjkgC08+ynQ=;
	h=To:Subject:From:Message-Id:Date; b=hikaFWsfjzbVCE8+gUXc1j7lvsBoMGlghzZ9K8qI5cnMSAgYZ1zcc8KrDVvLDO+YN3c7cUiGTTs67zfPcm0jSpceDc5bUn6AxGkARILtv0QklN/RKraj2St61ivGuLmaP8Dxcxd5415pckmpUEtP81j5+waW1kdFPF0lUfdGG3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgWe+ORv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgWe+ORv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B48C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728300353;
	bh=ljzxifEBFO10vAWAsezmOEA7KJBKN9QtPjkgC08+ynQ=;
	h=To:Subject:From:Date:From;
	b=SgWe+ORvuhzMRPmriV0hMnOXbyAxsFN6nxn3PgjwmILmYacH5nO7CdHW7qPiO3/wV
	 cof7RDztYhVeE5KtIUyW7ZavgXkEOBgqI2HrqnWPp+7CcJIC0Q8QneOdHGUq0mrJX0
	 JSKKSdkHcoFK2zghyJdj7sWkwF9NkTBWMiE8ao0bQMVOrizrFBgfyMZWyVdVRl0IqX
	 liFf0ofgeim+f2AQFdzmQ3kK0zHSghaQauEHyiIOCXr1hT5fF+CM7OIgzHkG67RsKj
	 lid/XE9PHQHNLoYjHxBLEJIJtoErK1KPs3pPNQf5v2h+BLKEXjZPEeRtVaiJSHrz3W
	 qxTqnqkkVTiPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E1CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830035358.20249.5280931111082664728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb18d20e8921297938e3af11d4a832707aa4de367f0304151f83d159a9856df0
Date: Mon, 07 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728300353
