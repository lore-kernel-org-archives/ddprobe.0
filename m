Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDC8219A8D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751465394; cv=none; b=Fu6XYMa+t1oLvm3qZmgeITI4XBeqDHUrrfLUf+39Km6ZSDmGW0BXzE7fOsm7iyD7udHb1O0C3Q/1PIQfw4v2ZIqD6miUumc+eY0485EwB/h7MY6lEIfmQ4/qTMnWaZmF4Nm0WpezDDIhTjjdBcPZ7eCrYqLOoea2kUHFv0VxYng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751465394; c=relaxed/simple;
	bh=1j/Oz1huqo2tFFHPMDHwdXUJbEDLiuaMmpV5npnNMtI=;
	h=To:Subject:From:Message-Id:Date; b=OI24arTLcw9WmsfWSXp+u9J85Ur596v9/+pr8joelPfEDcRy3358zTCrVvd7MBRq8lscVRT+sLFekcgKWvxLVCCYZW3Q7yqvEpExdnyn4yZ1ZtzIJipXX8i3z+lrIH+tfnbHXktwCsVuOGI17gZPIqx7p3ff8vMqrHEZ26IvKGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3xP8O/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3xP8O/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F037C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751465393;
	bh=1j/Oz1huqo2tFFHPMDHwdXUJbEDLiuaMmpV5npnNMtI=;
	h=To:Subject:From:Date:From;
	b=H3xP8O/Tuad7lW6fQPP8stbl1oMCwB7qqxWs3TejZwOLBzybbM/DDXDmkYjG5R3qE
	 IxT387pacK0Y47JMCGvg1Y2sRnpGH5weSgd6VUsWsEkrrmPufJIbSP9gpH9CLipk9I
	 JblRXgjM68quPr6aGKbPpCneFVPzFg16KJ8UwYbLAWgadGwF13ROke7aWtmZ0OfXkq
	 +flUF1S0GxayAYxAVNnU0wSH4HRR08yRrN1g4Xv3XnCG2oryOiimBH7VFKlDQFMzSZ
	 wFicXIJFWY0GmjadtIFRQfJ8oQddIBBRL6EVpDXZW0IKtWRLVaV3uKc30AMuFa5AGC
	 nppdIf0a2OEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA26C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146539357.17577.10314033585828647138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946c3b3508284aa6c6eb0b80fd8bc490decd3b3492b954cfe8ca3310f5e42bb7
Date: Wed, 02 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751465393
