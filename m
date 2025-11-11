Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1738530C635
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762873194; cv=none; b=Xh8GKQmYyO+Y/yyMMoZ8ZGohb46BihzbiJQHW4F6Ya9kCENI1kVnFJ4phI+9Q8g/p7X3QVE/E8a9ZLnQIyxTrsWq71P4MYTwfQvF6ULAtKDwv60WNsFLoBXl/CAdU20WICVutpcp9YeT9rvnMpT+bh8a4qdbJNZLpr1lg9KCbj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762873194; c=relaxed/simple;
	bh=W43yVKxzZ1snvm3Fbu2Kx+X/Y5iPNWPObjfWelz0QDk=;
	h=To:Subject:From:Message-Id:Date; b=tm3mBIvsWcdVDe88+4Ahqk3Kar6jCYQTEkxqJmvrb7NNoWrj0VpxSXs6KO+Z1YET5e0Vu0WtyShuHdlR51mMChPSpafbHsCegUFjeg0Wh6pZ9AkYddur3S6eqV3KZrSZzMN73ih/ukMdr/wu4lNXISU6wp4etLKsxOT04p9tz7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDQrEiug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDQrEiug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F521C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762873193;
	bh=W43yVKxzZ1snvm3Fbu2Kx+X/Y5iPNWPObjfWelz0QDk=;
	h=To:Subject:From:Date:From;
	b=QDQrEiugPmfFLd5rc96JL7CS2ufag5UHGxv9+vpbxyxzrW+aNk54DBMZ+BJHqOXAn
	 cwtqFbmRmZwBD4lw3oZXWmTfPcP1HonoWK7DuiNWxLn9clc7YprkBqMfQBR8I5ZnKy
	 dkkn2sLZJO5XSTv/b3MD3NiLs0bPvhD+ek8id5leVJ0vm7sBIbFCpWdEnhTO4KR/O8
	 0GBVhTwl8lyiT6AMAQOryR0BEKH/5+87ebgb4Wl1v1f1O2ic1oehFuyswkCRnCjGgn
	 h1K/8c/ndkk9NK9wQrE4eOZdNU7PM/ZeE+2qO6yEm/DKnzSGvUNHFHzdayeyvyraWD
	 ARWqo3lTlD/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150CCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287319358.2698.16424597520858307453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb12c051a44ffcdf5eb3f6cab5070cce031786aa74eaccf0989ec1660163552
Date: Tue, 11 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762873193
