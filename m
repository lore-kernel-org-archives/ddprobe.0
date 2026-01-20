Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A43E3BC4C5
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904634; cv=none; b=CP6seOopGkY+8uAC7o1fe1qKwtjHcRCh3XRWf8dGUycZ58buh+DajrPI4eIFEQKVrvdMap0N/9X+CsZvnsLInf91QB/oaOcg+UQZ4rmbmJV6HVhQxaqsNoWUfRH9pqE8TUUby/2R10RK02y1lEiMLqX+xk/NdjibR8J4U+82vxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904634; c=relaxed/simple;
	bh=suYuO+75mLtLxoe6JGyqbmCJ1CyO1Pkt9/UbHEVYFr0=;
	h=To:Subject:From:Message-Id:Date; b=MbtZoAINfmbu+97J3ru/b2wcAEd/2wUcDPL45Y5XntUBvbEBUle17+cYaRyvzpc8+NAn8Is26fXviSfJE7Rm9aKw583y/MvBkyJ4JqPAwx+mzqwRjrmCdCba9XawKYGYCFvz5GUpYEpuQ8JlDXRcnUUgi3xbSP9h8S7Pmgu0v64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rS6zAyj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rS6zAyj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF4C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768904633;
	bh=suYuO+75mLtLxoe6JGyqbmCJ1CyO1Pkt9/UbHEVYFr0=;
	h=To:Subject:From:Date:From;
	b=rS6zAyj6PlEBePQFsw4dJo8psNIGuJUA7g+L/KthMicK5WoWOiEN24LJjlko8d4XG
	 5o/7ug+tF81+ux44vbA5ynCR8Zq4mKKGFIH66rjkWDdEtw/9UNZIgKj63Wa1gVDCcS
	 IYSBa7axUrKcFCG8vwJ4qhAWZM4pdqzuMye0i09Vmc4wVMQgq87zuiE8Xu4mVyWFbE
	 NQXL/m782QBTyL3TDEa/fxoo0upqtEtSArZa+Gz/ce07f8K+pAjPeXu9QIxW39jywa
	 QMtaCkwsSF5seVoi0l8EsFut9UGHHZef/etdrpAZyA3PVsy4VktNgMAM7Fwq+Ua0E5
	 TqB+AP0A/R9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90919D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890463358.18403.6945943225465535249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e53982a2a79cea20a1706ae16b5e6ca586de5beabc9c21a0972f511643d358
Date: Tue, 20 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768904633
