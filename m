Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267A53FD128
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777482454; cv=none; b=fYsI7BKXc8ZHJecwczLiSrxsJat+7dsR8snPPDx0sioB0g+/uBiHnoGOxXhMqmAQ9cba7Mvllwauo3SRjOVvJAyjt9D8HsNp+sxSTKqYZqlK2Dlh0mOlANXg7fBG7lhy11naZo8/AlZJyOW8WdYcmfu0SJ7P73O2oZlCkS8f+Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777482454; c=relaxed/simple;
	bh=FDG9+3yaaQAdxagpH7A5piIj1EyTP/xAmBLmV2CD2k0=;
	h=To:Subject:From:Message-Id:Date; b=Sy9nxVheLeS/6qch7yVR6sCzTyr6jEhJYKNAyQsNEubVhozNsSyw82xjJ/Tk63SW306yqIvNWB+qsgOl+uw8zvNUYZuT+i/mIbOyw1zysu0GxbDRimY892N9z8CnoE2qGcSdLCc79I6aR/Veed0VE39MVVoPYg1n/WyP86vTF1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtoSAm3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtoSAm3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD07DC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777482453;
	bh=FDG9+3yaaQAdxagpH7A5piIj1EyTP/xAmBLmV2CD2k0=;
	h=To:Subject:From:Date:From;
	b=QtoSAm3jQ7pZEq0xK8jrvFt3kUaZsvqw77U0OM3H/eOahPY9qtBU+WxTMy8cOb8bc
	 WrJgpsND7MEJiKP4uZbeIp6J5Z232LALFd/zchwJx60AQqC0nSJUknBpU4Ixr0Pa5e
	 mS+V55+/sSwdX1c8aQ7F/bjq0VacKIOS3jIdsys9kqEx2ZTFueZhY9k44sj+CQK6GB
	 14waMXQCg2VVgSBxl+yDhGefWj5JuYi9IAin+Su17R6H13Y9vSy39uXPHhiKISS32k
	 YF+rsDrLbDc+UHW2HWimk8ZmCna3rGeqgjGBy26vI8hRIS+vJCp1hep7nedSipK7p8
	 L6csMrIoDJ77g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC48CCCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748245368.28431.7529444497427865803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e0de0ce7b17f608311ce9b3347dc4ef0ea991eff6ea66187ca6ee8575477ea
Date: Wed, 29 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777482453
