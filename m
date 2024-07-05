Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0DE364A1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720212323; cv=none; b=Frk9bXU3LUFc+/c7JuccTaH4GNynPHtkelHpmJA1ug7QOoO5jt+40QmI2FM9zS00oztZM5GnKeiiXUxDQfHo1w1SfC/gcqffu2H+TehyLFB/kCsAoI8UxVQg/epyqraw+qlehGjXNxeWsRcMPSDAC6/CSf+k+mJFxbWthiWuNzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720212323; c=relaxed/simple;
	bh=G6ja4UW3mstVdIrfS49XSdgzH/uegZrjynJfHTf3C+g=;
	h=To:Subject:From:Message-Id:Date; b=H7TtV+inHvs00DDYFiFd+6gLcE4tI4OW8fLmlM5cgXRcepynMkD+UQpPVcwZohVj+kAL/Nlvg0v4+VBhRBfIdLqE53qybVMoB8P0BZ2nVfKa1SIjAm/TEDfEZk/xCHs/CRBsvDpCt9jf8J+ug1EpINsb57gMrw8DrqBXxYgYx5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssepCJnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssepCJnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD93C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720212322;
	bh=G6ja4UW3mstVdIrfS49XSdgzH/uegZrjynJfHTf3C+g=;
	h=To:Subject:From:Date:From;
	b=ssepCJnARfPQUWPsZwdu5fIBp/eIzcsJThT2bLcs2HOojFm/1h8Nklc4G+UsL7PRp
	 Ru4KmC+xl4eCKlSn4OCA0qlQLX7VEGSBWt4XWe7AREAXwujqoX4DdXxT+lDeaJZYyZ
	 acstUXpKONfJtOUyj0oVLVMzbL22NXv845ZhW2Wpfg354zkgcqJqtzk0mkkycZ6wQ9
	 zgpNn24Q80Duwl2SnxVaJiWFds1C1dRoBiKrKkF0+rkXMYX6F8T9gpT+D7jQlzWrDO
	 37jEpcPlCgTmuUIU7bF/99/u/R4Tl4mp7V0lXQLnRMS4UZ3ohRnxhupydvNxvY1LAf
	 O6dv1B30ztyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DB2C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021232280.20446.11379049077390640988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3637da1a3e76b712263bc6a827f5a630064e8ab679f4506e1e1a8c96c983c8c2
Date: Fri, 05 Jul 2024 20:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720212322
