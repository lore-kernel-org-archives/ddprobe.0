Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685D241A94
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719477263; cv=none; b=DrqcMkN/7ZZX6iqJILK91XPNccAqwB9UlR1iZTk03nARh4RnIccoWBWVbIq20TLoXbl4olD5W7eDtOOwQ0+dvuvlc7S18sYMPX+Jzcog7Y1EvBuxZObpzFOADb2zSel7gZuVNGVY7COpuTLmLyb5ph/rim7E8lwvK+lEtJZspwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719477263; c=relaxed/simple;
	bh=Ey83U4X94F4kOWrlCGH6aN1cwr5NB3Cdqx+zoy5IM2s=;
	h=To:Subject:From:Message-Id:Date; b=kmMc0D62OipatzxSTX70GAccYyYMSINbPnyQeyC2lPv64zjMgYBhEItSJRsMJmrZcyOyyjXehEX1k7KLkqyFFZpDoNWDWop7DeywQaKAWctHZtCgVq+TMGo+TFaa8Ucb0dsH/tMwatPaz5DeaTdr/VHy5Puh72btsNJrUUiovA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY8SFyr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY8SFyr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5813C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719477262;
	bh=Ey83U4X94F4kOWrlCGH6aN1cwr5NB3Cdqx+zoy5IM2s=;
	h=To:Subject:From:Date:From;
	b=SY8SFyr7XYo+TfU+lWFuQELajHFVDBPbGAl1rl3i27GkF/isnwydWtfQTdtkx2pKB
	 P7iavI9wYK49FEleXhYXBT4xza71r7PN3K9xHdhM4m28kyKZRnypy1qKKudU978qwW
	 YXkr8zdXX2BiqmeeZ6ORE4KAzymSssiSqeShcXag9AEf2iqgp8eq8d7KKrD2e1a1i9
	 1msvhoypAv658+G5bh3xXeO9OfFr3UDvwvk0O7DD3PHtyDi7Qf2ZI5YY5aFktmMzhd
	 0XJdT2pSZACj6RNsl/oXej9NpyxzkwP8GcO0ZU1QRl5Zy1Axd1Sb8yhg4WDKtabPqc
	 icQpxujmpMAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1A72C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947726284.12392.17784500063344200465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc90be51c9ec879ae19dffb0bee8942b5523a4b86bd7e24ca8b8b5b526892345
Date: Thu, 27 Jun 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719477262
