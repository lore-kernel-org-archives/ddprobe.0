Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A23E18052
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727891154; cv=none; b=KhtZLLIhph2tMf7Ow8wuIcWL7oUF8OjN3WDn8DnldEvhUZFOLgH6anIl5CrVs3vzO4rZJ1XgmiFP8Xm/6afftcWwd13Bw31bj0F/Ev/ecBwqCvCqa4tYntuMuO8DUxagiyLV34CPGJ6Cvb02b+fg9T3i5AH/WzbYQIfgdegr+/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727891154; c=relaxed/simple;
	bh=M4f/haGQVEaF+3BNy00+8ebDnlkdxbnJIwfep781nJc=;
	h=To:Subject:From:Message-Id:Date; b=UN8tPaPUbb1CZsnPIoGvHmC8PWd9F8FHSDZqf/TlgexbDo6qc0tQK2AAR+dRGxj5290AunSYEw/1ItR65dqKyZJTiJVXHi82A79d1y0RSSUDJn991QNN4tSR3ztMzipBU9z6iyet7BId9z7ftzJ2X/1WwZcausH2irOvKPY/Ix0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBLcd1sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBLcd1sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CA1C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727891153;
	bh=M4f/haGQVEaF+3BNy00+8ebDnlkdxbnJIwfep781nJc=;
	h=To:Subject:From:Date:From;
	b=QBLcd1sbpR3R/vvrN47yymC8XF+ERCxoVsOp/e/nC23YQN7JimVYGiEQJg9/ys92S
	 FriS8r1GR2ktNaRbLThRuGWdnopx1hzliF1oqbrvRBhhcTnvTo5nJ2vlReTkYOpADw
	 wIdIViWzox7/+OkIfljAcvRifriTrD5gcCnG9D16oMLCYznCaZsD6WZVh2Jdmbc/uk
	 EiDuaiZu5WZ5PxINe44Fjybr5k5r0tBQ4nGJuKTwCCOX/87rwdeb1/cx7T03lo2nzv
	 fvbExmebvaQcxnv/sn4GjDZSN58vOf1CyUjoayFgaJhp7etGOFJ6aJ9ZZo2CAIBoBp
	 lEJFpMWB/ScOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0FFCEACF3
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789115360.496.2968562646916486236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a68315bc79c9ed9ec9e0ef2471fa874b26215edd79274bcd661dc3a81b05864
Date: Wed, 02 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727891153
