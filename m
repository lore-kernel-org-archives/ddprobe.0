Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF1F10A08
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705774097; cv=none; b=IxxF65zUHt1vL7CxhDD8PmcEtCECYHJWob1OYB/Qc9rbwnrExTFZ2ugCkKf+BPQX42GX6Xr4zNKnr1mmp8AD44Or6WeIF62zCevDb34YVWvu3D/Pop/d2oLSoe/aLyD3gngKrUrDU7rMVkYBzlO1sIbpa8vJ9AtVqns1uspPGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705774097; c=relaxed/simple;
	bh=VHRv1LIJq2Ddnx0VU7N2lhK93/LO5rSdJBzF8PnJQAM=;
	h=To:Subject:From:Message-Id:Date; b=VweUCQ2YhdmeY9HqUS6Oi22Oo8UsCdoWJOSRB8zZqN0wmChPOfzdhKkiogfJFVmbYGUpTogxWMPCbOMMr+h6RjKM1k/l64pIZ3RYZ5eob6tUiLXaen31Nm4Hx6u8GO3GHxNdhkwkKcRsSMNmhA/EubPAgGv8TAE+UYqVprUzSfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEsB42m5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEsB42m5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795BCC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705774096;
	bh=VHRv1LIJq2Ddnx0VU7N2lhK93/LO5rSdJBzF8PnJQAM=;
	h=To:Subject:From:Date:From;
	b=tEsB42m5oEXIXB8aAV74u0wbsHhGU7E+UCnDrg28qnWV4Qwclnm2GLiz6GRHaqmUF
	 6Tqr9rj/WPFuIsTUao5NoTzfbj+nFZHOMgexYHnlOTBs01H43hGXpF0uduTdSjIrd0
	 cjUhPE2aYzgIamgM6Z3yn4e4avLxpKJU0o8OuqP9vtLbbfvx8XxRSt62cv2FwGq5dH
	 uVuKOkgQp7uUx3V7gxFxiOAQ1M85uz5O+Eie9K7O8sw2apddk75D2lMwsZtqffk8bq
	 yLd4x/4Gnw3BJVFl0HvCaqm2IcYcJRYMgjFg8cJa4R3c2fRUpfwXw6mHjt31W6mQ/h
	 Mt2zuG2jg3G1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEEAC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577409636.11660.8304325380106947842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cb94061fa189226998b03358e92e51e662b3ad872bf3087f2d125c4af0ea75
Date: Sat, 20 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705774096
