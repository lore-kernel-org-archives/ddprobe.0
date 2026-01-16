Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9F11DEFE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768528434; cv=none; b=Smv80hJAvTTB6dKVfhtnB7YFiYXgTj/U1OgrhA25NYuY/J8laT0/zBoYGO6EOyAWzwhuQl5TRy+f4IFCeoMKgIOHpwwGnh66dYZUOup6OCjLEWTIC1OnKyAxlmHzmACZV2iklw/ZgJKO9FkTvpG/6WM9NUdAhIPJ+Der2bpmDeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768528434; c=relaxed/simple;
	bh=kPrUjN3DKrMmW3RlN/RS6eYbMSE3EUhX8/TyLUMAKiQ=;
	h=To:Subject:From:Message-Id:Date; b=eyqqOCgm2WC7LBPZQS7q+rQ9OgmMtrBp9FP031r0lvxFbMncsNY5aqhvpXF9YCDb9UpBSHifkqoxRGdDyPGilTdi0paAn8DmIn99EkHyS+Z3X+1n44rqKSciS281eQw9HUIsp+0WwD0TKZg9Vz9N60yIIj/Ts3eTJ1mLKLjS/BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R68X+GPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R68X+GPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CABDC116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768528433;
	bh=kPrUjN3DKrMmW3RlN/RS6eYbMSE3EUhX8/TyLUMAKiQ=;
	h=To:Subject:From:Date:From;
	b=R68X+GPz1a94sHF5yBykiZvapc7brv3nsGexuDcq8iXbjB5bTqrTj29Naw3vOVKdb
	 jv6dhKIO5DJy5AekagymyJlLSCCEPLiPeYq2WvezfuiVUf7L9KEE5FBwUfFeIGeE75
	 chbqaludk+MzJtwWy+yBW6DCzXtNpC7M6m2twY/8McfOiInHec7DtHyASdQUHx4Jb5
	 dYtIna+w6d/gM1HeWc/zF8Tvg2fSCSzAIAVJ7ZVbs6QGguwJbuYHjssYf7V/bhahuj
	 WB6HbrFwHDUNsePdV0rQ5BSG7JMauY+MqJSEW7wRBwtVo738xL8GfqwdtziRH3r49b
	 DSrkqydqweAIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1AD4A5E2
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852843357.14368.12538270457845210137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174d76b8a183df1ea057c1159c2db124537f59f2c96b96cbde9424cb3d6cbe71
Date: Fri, 16 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768528433
