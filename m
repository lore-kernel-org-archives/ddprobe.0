Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2224628750B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764749574; cv=none; b=j3VqLvdk04eB1586DSz57zN+mDlBO4EuKy1S9iIvuCVyLIvxdlf1D2iCYOfuf/gsTgRA04BKfqyTSnt0f6pUvx8aFWS0vPSBH8+prMbbzuNAbU9koCvE6+jvSfyXCv8a+Wq1DgPWWme3Dw6JoQ8I+eVVAmkEBZIqNVljgj9Qf3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764749574; c=relaxed/simple;
	bh=mLyIFJBgC+R+31RKmoxL1Osf4CY45LqUyBLUZvHEVI8=;
	h=To:Subject:From:Message-Id:Date; b=J7KlqWDhIVCpeWCki2ubi5oszyK63Yfo0hmMMlUmhIX7DVGiLUhfzpwmCWDdSUMW5p6uF8Fl0lQGaCpwuisQJKZymi8+AEAjw7fKi3q7kwb4mos2TwbMtHGgCpmyacOQWLH3x+NmJyAII5X1whALqri+wJaBAIJcCACo6V8Msss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUHXWSBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUHXWSBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA6C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764749573;
	bh=mLyIFJBgC+R+31RKmoxL1Osf4CY45LqUyBLUZvHEVI8=;
	h=To:Subject:From:Date:From;
	b=SUHXWSBrv6m4vTFM5Nj7cF7CQzYReSEmv3X35RIMIl6o+FA/7XXcViCtT5moqZIkn
	 21NiLTDDgi17KCgjkOQ4NMQipiin/1YphhkeTaNo50hg4A7BSkgv3NC5cCkRwcJwTM
	 aux5bGi0VMJ7uACAkYzn52tMDCCDE7IJO71dzDSQQkkEPBOTTaKsckYH6yKhfDfSs9
	 P2PmTQ+GjYiP4zkIxaT0JSMZuZky43E4rX9JU4kVlikLra0wRJMcFcqODV7Vkxb5Sc
	 fSwr6jkJlafB4tY287YHKHWgKHpnxllcyJYqBU6RgDYLzVPbZqNbunaikGJG30y8yi
	 o9sw++7ozmagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266BD116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474957359.31906.18442323511617619074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789c16c2f012290081c3408a2bb8a76d7d54e253def44f344a8a6cf7c82f8007
Date: Wed, 03 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764749573
