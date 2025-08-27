Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E4524466D
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756261794; cv=none; b=ZQjxnDvhC/oLZCLJYnO0Eu2j2RrqNhtpEdA5GP6MWNuXhqnKIaxb++Hcje2V5dJkKK8eSzIePUjxb9rcozEy68jMjk0XBuRfVqnQ7SEh/diGGZcgSazLyGbD51tAMsk7uF7SUG0GckpLk1Uq0pqMId12abDv6f6VataYpNOzeFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756261794; c=relaxed/simple;
	bh=Cbv/te6F074KM/RF7wZ/D3LnIngsIptKZeevMFc2j3U=;
	h=To:Subject:From:Message-Id:Date; b=unTbXtfFI31pf6K3jBanBav16yILaC7XZ62YA+vFoNiglNXaXO5ScLdJcc7r9nh7HoKFR4lwnUh/ssIQIV5RWMsKhUdu5zrKWb/7IG1wML72d/OQolg17/rmG+Aqm41lgbrrO34+CDHE5xL1kyfD7runSwHSckCEMMwhDm4Q9Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRTZpYjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRTZpYjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24D2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756261793;
	bh=Cbv/te6F074KM/RF7wZ/D3LnIngsIptKZeevMFc2j3U=;
	h=To:Subject:From:Date:From;
	b=eRTZpYjEK7DYFFKma6j7q8QSKeJlOZaYhBqJxVMfQEAmIq2AjjfkK0oGVzJeRPXty
	 ZgQ6O9RObkJ7BZ8qVz6gzfOZY2RBKIZDD8kiIeWWaSvdNZtpMPbEUrYdcCjtrQahS1
	 zLV2Tf32xDzOn67LW0ojlImSe7SQxPnool0rmtdkbWco6d8vTFxKrtAcegt+7jmCAI
	 YZ7R1W0+YLnC6iecwYCNmyHCHBWQz7vucWnULCDU23FNZooseuCXob0pJVsC1diYx7
	 exjfh0CesO2wL/bRo2dnH3MENep7PkOoO21R0USbueOH1t4DfgHLJS1Yj/buwg+TZz
	 VgGMIIR3rUS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9329DCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626179358.14369.17401383483957287115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73a6059469ce5d7ac8c9ec97c8671670a5851c4e880361a39f80d5375bb8c03
Date: Wed, 27 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756261793
