Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C4A145B27
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757873394; cv=none; b=Zbib0EMpJAYtW3u7DpQcM1VWP3MLImdQS2kzCuu/qJJ0QCEWvYWEy2ypLf8MqgR950O9OLbX9k+ZIyZM869kFDucv5c7RjpjrhFFtKmSjfpGuR3cz5bweGO9SOP8hsNOE64GlI9nIhx54cRVpqAVyBKFVFUPmHtFdCDl7cdfrP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757873394; c=relaxed/simple;
	bh=WnQ5lgBVWoJ5srsVvfuG9Kgrp+z/d8Jp3E+IBxSOsgc=;
	h=To:Subject:From:Message-Id:Date; b=goDgjFU3zl+PRfgXFR0mm4EA6rdJwZfgi9BgZKA56M2wu0hXYzcG7UNqAr7AAnVgDYuwlyN20vrtL1Z4VAWsNRsQN9n/S7jAxu9AbKrRK4Oeh5I8WWQRKeP+Ix3QNqydiqhgVRE6ObfcaiUHZRtfGCK/tW0r3poQqbZ+Miar+pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch8czPrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch8czPrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757873393;
	bh=WnQ5lgBVWoJ5srsVvfuG9Kgrp+z/d8Jp3E+IBxSOsgc=;
	h=To:Subject:From:Date:From;
	b=ch8czPrUhXpzEA2BFG5xMaLj2qItXokKB2itWMUlMcpwsjtmAcjfoAYy/40npnFhi
	 9o072fBoK0786tgF7SnuJK1JdIRfus2nv4LYX7fsTzCWSbxcWqNmT3idKnVS/uWEZ0
	 frV0QGhbPeg9lhifupD2EBn6aHgx4ECxWYe1UwQnCR0Je4bYFrIh99nOhcc06emubK
	 VFlWa68rvkGmVC4H6uovlQXyH+GqEq6sgzzqvRVFzCNHCr9+ZXWVRY64Kfw5Z+vsaB
	 cGgapFwtmUkicp3YeL67EMELflgqMFltzVtDmTfTJk/Gnwsd4Ch19trl+mU6XfF1vv
	 T2JYtcBAZB5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C23CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787339358.25918.14940955896036777069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588beb920a29f71af89a200c428a7bca4ac557692987f7a12bde99855d23ad56
Date: Sun, 14 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757873393
