Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7F674BE1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784557114; cv=none; b=Mar3maTrM5c9Bx/DkXNjAzXzj21VP17Cn+E7LVlQHejYUbK6NM7+EihlWib1Db8wx/7AhP5sB+EqwGsTysh60pp2eMqRk4/H+mNMlA4IToGArVxWkjdIFAfQYbvm9JeTNsgQmkZY3t8qJrj6WHro4Ywq5BDGyCigH+Cyoj850EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784557114; c=relaxed/simple;
	bh=8sT2Lw4+VT0R5IMOKQeY8M+cC3/SjsCAanGfFCc9UCk=;
	h=To:Subject:From:Message-Id:Date; b=pLdwIGOHu2dJdwUGVFscqnvXgQJdkFR2rLoLA7Y7WzxT3RCbpUAk0ug4GpxAW9nAPunPR3WU1G6Z4cNHLFHndW1xAkJETJRxmCw1SQcV8SukzKTEFf45+mydi1567SyfYxz/tNHEFrGEEAVrPTyFuL4jd1zz12VJJEqpLQhZi2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX2JjIqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX2JjIqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAA4C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784557113;
	bh=8sT2Lw4+VT0R5IMOKQeY8M+cC3/SjsCAanGfFCc9UCk=;
	h=To:Subject:From:Date:From;
	b=WX2JjIqZmM6iMs5bNvejSLrEcbJrcSyQv5pY8Ux2TUaxnBEKDFsA4EUDgPXHLUheB
	 10JinZThpnJkn168SsVWJek9AEhyilkX/EG2y9Zojy0yZdLP99zN5BlRuQvUmJmXna
	 5ajiw2z4lRtw9W67ooiLgk6RM37zdFYuFxXNxNVuuxnvf9EFsiuIm13VdmU3Wm3WXQ
	 85WSB0jyh0K6cOsqV5RGipaX0kcf1j/tw2MC70jleNtNRn4tLHkS+QTIk3quh8gbaa
	 qt/Ivng8osnF22Xpd03eP8egUfX3mwMpatJA8cOYf1HeCydAymCIgaIL5j6bscHdmP
	 JeaH4LLjXVgjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9807C4452A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455711368.19689.754532841241793613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf0d7537c5b1c6e06407427c2979bd591c599ecd6924c83fcb5b03d081a82df
Date: Mon, 20 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784557113
