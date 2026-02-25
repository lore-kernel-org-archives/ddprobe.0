Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAC728850E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772000694; cv=none; b=cri9ltpUOS+dguj+rd8jP9cj/7RbcHbR2M7VTKsOk8K/EGrgx7ofGhmC8yp010cGKWNT1XPCpvHrnHE+NsKja3BJ6TQRJ2o0sEEk4RtAhNJBcVc032tNF6M0SUIw4V2NlotoMv8zfFYS9qeNAsgfLjGg4BhMUyYO2HZpBIqBZko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772000694; c=relaxed/simple;
	bh=a8WXGuHTcWG1GWHtpLPJLl5bZ6AePMXRTRnYHN9s73g=;
	h=To:Subject:From:Message-Id:Date; b=orSiS7892rOReQllKbP8CJEK+nIuDE2IqVUu+azZ1+6Zup7tyIFagI8FfaV1eh6JS2tmchl3aVAib8b28S6wnSl02qmai23W6WpWos/DlBZvWdxxy/s74EwpsJ0KBBufALUExqaA1Tkh4QUsq1t3aLD/FpnfXR/UcxoXjl4SZNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xqb28Tzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xqb28Tzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A8C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772000693;
	bh=a8WXGuHTcWG1GWHtpLPJLl5bZ6AePMXRTRnYHN9s73g=;
	h=To:Subject:From:Date:From;
	b=Xqb28Tzc7LX2Jr4P6T+p8ABZoPt7wE/i3RhUW8vTqYe/UqpceLypWMoCZUocAdzlS
	 SV2e53gharuE5nna4KKb18If/emx6sB903j7foQllyiN3F+bDKBZroZdvnq+IVjje6
	 YLLnaMLaCAAK8DvPrnxPz2cV85dWVNrbZESJDPhkWIOeeSLddA2RyKyOz1qXmCjtuc
	 xeRTTelftfjoWqvHBRc5gsG1AwDXFikfnVdHyuRcOegSubHQe4kM+JjnYaqrrrBIOS
	 vyezVr2Ri09h3MApNh+f9eII1LlG/XVWkUPFIPFbHw5vulCaC0v49aGbtXkz9aBJRf
	 aCuoHqzJY9Bxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950FAEFB7F0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200069359.11122.8601649266620091477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4808be7b59ef399354e25ed7fc45f48e233a138b72cc20af468eddca76debc3
Date: Wed, 25 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772000693
