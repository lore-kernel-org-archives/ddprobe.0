Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06468817
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722232554; cv=none; b=ClGybPAIidhgFZIFA2t/rMlK7xd6CqEjm6NGhTfUvHtRe6ta8WxAsF40p+XV8MbMVThLSA2AnjlSDMQOQqzKS4lt2WwnLzqg9WKAR2qvptcVlYzutq9C3w6LbMLr5Fqb2Qc3GFyZaJkjHy8OKvdcFFDRQ+doYkYY/Umd85Z9iLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722232554; c=relaxed/simple;
	bh=o5/BJ0pBHt/7LYidL73w6EEDEoL9YbsolEJasr1BH08=;
	h=To:Subject:From:Message-Id:Date; b=kRzK8ixoaTSU4UD/hPWXKwlXED5yqyo+cFppMt7WNPMICZQkf3mcMvK+5k7XKztp7aYXKiM36YiVu92MDDk7jwi2CXWXsuX0LutkPocNJGC38NbKpOddIAjJg3R5jsa9WgzoZfNVAHQI/muNvQcGHL3q04/TLnDxHPg8PmqLC7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irF9sDDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irF9sDDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EEEC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722232553;
	bh=o5/BJ0pBHt/7LYidL73w6EEDEoL9YbsolEJasr1BH08=;
	h=To:Subject:From:Date:From;
	b=irF9sDDGsnTSKN77Lnwb5Mg+YDU+oEYCW4nDB7gCDYpyI4lgtrci+6OpGsvhlTLtb
	 NDQZD9e+w84qLLPIIRatHPsZ1wP10UwQIBDGWMp2WPnj7l50VA1fHTPl/ibZ7DopKG
	 UWD3IBjHrfJ7UqnkrvSk+yesZEw+dhiIeOp2v3MSNCPDCa4i3QH3yPEVcDxAX6ubU6
	 FgEArqlHyXkJz0VtAxm7s9MBRReImI88TmxrpKUSo0HZPjoQpVULKMUMy2DU1XcIhD
	 l/nyEk8sZAWxTBgHdDO078XMN1aEllLrNT1tKEvC/NuBT5UcQyFXRFctOuTxWXXAp9
	 BnTvJQHX6D+5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077BC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172223255358.24963.10551245559818251616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a07d39305d1184fbcef613a335f52f59929b00e587198b19a88ed99421b99e
Date: Mon, 29 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722232553
