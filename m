Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B41A2C21EE
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778921434; cv=none; b=KdOMYRSn67l+M92UrD7OJ2yJpvdGp5xJmz/cJiqKlQ5aN8hP6degyTWmc9lwa4i68AAPYzeNxINeA+3VMlg/0+q6wSVU5dWdr+OZKtdI0zqb0b7eyfXrChfAGhBbgUnSJJQluRGyL0GPyeDh9D+r2RP7wWbfyvKvQCacuBEwo1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778921434; c=relaxed/simple;
	bh=FZNI/C3nVvOd/GThiSH2ZAmBX94FxhWMKkHeCz+Pjxk=;
	h=To:Subject:From:Message-Id:Date; b=QnBfs/WBjFMEr9LqD8FbNBB0hNsk8yNEdS0uuTZE2ZRyNfKDnzPGbrQvS5bhsnMoSXWA40RsZ4+GamUbSC2JE7s4179bNyUVxZ1719Hw27Fg+qY1ZFpoudnSw9WtBsOgJ3zsaBI7OsgwyVtbiUkcn1Qtv3Q8PldbBiEpBuiSm4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7eM7VmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7eM7VmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BF8C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778921433;
	bh=FZNI/C3nVvOd/GThiSH2ZAmBX94FxhWMKkHeCz+Pjxk=;
	h=To:Subject:From:Date:From;
	b=A7eM7VmYainTJKUPrvH5Xs3OSr8DR/+BSK3wiUozX9b0PpgMoI/+C0zEiJlipRtpv
	 +0cQiClmVcMiUH5xQGL+v69dHz7WWCa3spR5TjOrd61aAsvGIhIlQFlRNLmXiRlGM9
	 pplnGK62HuGHdMeWDZ3ryw341TcJhZThvb5Ce/UWJaboD/iN1oc7D6l/a1IssIyxdw
	 AX95On5ods4LdADQ4vk4HqLrOXAjGrf98P49bv1Y4mmPkqaROc8IMhf7kwstXQWSkD
	 UkjTUfcd42DvNZNVfmo9ZO6Jid8TKTLfmBKXM6jjF5GtcPCvXImNoAFYvaqL9e5g67
	 8Euz0DQW6wqrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01F7CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892143369.8860.6584198629287992301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53004d971d9e4985da447fb22a95674eaa500f37a29efb27d9538ded84c49bf9
Date: Sat, 16 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778921433
