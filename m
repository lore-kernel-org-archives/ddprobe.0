Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCF2126BF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769583834; cv=none; b=grtQ8SYCZkPdEfHDWq8Eo1uN3o4aKQFCUUD8lK9A/VAqDPVNt1tTwFJ8z4oiH9Hkbd+o19UGnsdOV3eOR0lf9U+Jt6loJy+iiHiOJ6QtlL+XoWqTxF8hFkcPTIyOSI0r+ldgSJUQCtabMSMr36mgX1/nD7QoirxvpcGmKU5Hcx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769583834; c=relaxed/simple;
	bh=ZUXL0xPMxyAJqehp8Tpl7Yp5szX77JmXuMrXxMxorO8=;
	h=To:Subject:From:Message-Id:Date; b=RKiYq9NPF2tVFnuLsvolMIfs7gMLmU2Sfc/EHzU3UX3G6O9wckhSJ+qKsefFh7r8F1qP0YAqb30/Jx+PweRdBLPYu2gJnnuUVL1HcuxXb99pag/LsOfXekf33g0B9Bc8snajgx2zoV/2UQCzE4+yzeszU53Coid1Yb919M74vH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AizY6eIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AizY6eIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE856C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769583833;
	bh=ZUXL0xPMxyAJqehp8Tpl7Yp5szX77JmXuMrXxMxorO8=;
	h=To:Subject:From:Date:From;
	b=AizY6eICq89vkXarz+4kbFdq854y9JyA1Tff5tDpq++Bm+vnhFSYRWswNsUpqJLnd
	 tyVM8Hs7b9ZpI68mGgaQANX+ZZeRjxMo17vxLgpsrYKGZEwKzO6Bcpzl3T9LquULUV
	 7yOUWracNcX0Rk+eHq9PeOMHQanCjj00T4h1WH7RFa0DzUF0dZfPqiue7cLRa1/5nR
	 69LGpHOlNUP9+euf8xSSb83gjBkCb3YWuyLq0KrwOFwezx/pMKggcETVzaPF5Eeoip
	 F4WxegR/Zn1hhRa0a4PD7q0Xm3E4BkLRWZrj716vhwb1x0AIOwEI83RnYsuaHeI942
	 0nSIKANqbXLjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBAD35687
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958383359.10686.7927149258865897316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792a3a1f87d7d8ce0247240a976989d8d6d273762e9d619c31addf95667e97c0
Date: Wed, 28 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769583833
