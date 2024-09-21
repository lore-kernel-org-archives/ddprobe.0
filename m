Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207571392
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726946755; cv=none; b=RkJxplb82Da7x+qK8tYaDxCjCTVg4jvETs14iJINVaidkQjUP1vRY6rOksV7eZVgM056vBrdooj8X83yCoWfPQS+jxL5VP00sYhSdjLZ5b2EhHlxKsXrl2I5/OX/8lqE3aisTKaQoSYf3gW+lFt4FYchAxc9dg+p2jez/B8G+/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726946755; c=relaxed/simple;
	bh=181neq7xMpYfa+YP+HnLeGcAKqLk20p1LBR/NnuI6zo=;
	h=To:Subject:From:Message-Id:Date; b=Bg+TBhU3GBA0Fzio04lHyePzlANmvDUknWhPlWl6qMZS8GkV0mVInAa4bkaMEoRDhl6+2GzmrbWAZu+m6eFfDduvonHS/BmWmzHpgJsoN2KCRD3G9Gf/+lK3pKstpDfl7Oco6XLMLjLhspKRvxbMf6ZvyBIdnwd4wH8+LXCpYDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIuvUdRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIuvUdRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65CAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726946753;
	bh=181neq7xMpYfa+YP+HnLeGcAKqLk20p1LBR/NnuI6zo=;
	h=To:Subject:From:Date:From;
	b=tIuvUdRN9tE+xECZWZPQRHaNgG6+4CwkdxfETyzw8vF5RBo7EC4C0EgpeV5b8Q43y
	 EGOAU+imFnea/8bVKICYkL57Lu4dHRXdJh190Ss2XViJWYTQVOiFiRbFdB/Pivc1w3
	 PlueBNKDkMYFXhSqva+6KPoE+SMPr24AejnKvAtnDcCALDzq07ItisRz21XfVc3eLt
	 jh2q6RfYZOCr1VQFsVXrvMZKwAvOO/WGeYwUC31mf4i30EOGwUXSEgxHOLTlGHgYRZ
	 2D0Ml171vylD1cEGy8oUfKDmNSUDiN7Pp28qoGUamGC8hY52yYLA0fo3945NuZZ3R+
	 uz6FthgxXALEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9652BCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694675358.27004.13652493869331293719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdad9216154f04d8a8ec52158227d5d06e885984a6adc5fa54ff4adb8ccb052
Date: Sat, 21 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726946753
