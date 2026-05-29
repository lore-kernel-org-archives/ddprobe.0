Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C6439D6DD
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780036354; cv=none; b=b7hD9e/HeUjL8SzJQjZuq1MsjcEiJnqjdglz/SygNPZaRxVIoGQo8CncheF8zCWNtuhhEA+A+tm67Gz5G1tLNuatxUteufRFqcMrWHInE1+QLnboDgKJQllwYXR/jIzHVelX/tKG9pZdHjykrGmbSZS9qCO8qLsSxvJgfrSl3H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780036354; c=relaxed/simple;
	bh=4PqeIYL0CCm5Jq5iVkFUKYfErrFYIKlcN4TcqI7E4Ag=;
	h=To:Subject:From:Message-Id:Date; b=dMUNfYK23JOCy6j0A9yNuQXiJ7Eh6Ozpg9T+dMUZM0pH4r6CWSjTLRo/54BmHEL2mhUvl4nSi80Ps+9LwCQFdIQKNlAD4GYzyBaAoJqRPunuDQtHiuKhmyDIlSz++Wi+tWrL+vzxv2ak1WfhmSOxUt7txLyCQmhgLB3Y/G8hamw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=letEPmju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="letEPmju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B8CC2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780036353;
	bh=4PqeIYL0CCm5Jq5iVkFUKYfErrFYIKlcN4TcqI7E4Ag=;
	h=To:Subject:From:Date:From;
	b=letEPmjugwb/Y9ampF9elcZqLMkhNSydejvPAYjPt20YFKXm9eMJMaqm4xly+Usxp
	 eqasIwD8vFrGnkVvFTEOoMYJTxiCoGWUIofSeIlevVs96cL0ZjNVFNT4uFTtnh/nUv
	 Du23dZwy97XuVQG2FJUZ3jCAe0b054g3lnkVvhKnYx3pdM2Bo5AT3a+lbTMHvM1u6a
	 YA2a7bKOeGr7zaWC+PdPi/1Tt4NmzxXBgjfHmomHOKdSBy9scZlgI0TyG7hWADINWy
	 Oa3Hs+81BtpXMnQDBCg6CsN42r02Iws1EkdDqKwioY4lduew+u4ugiM/XEP9O9Cb0i
	 S+TbCRJN3855A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF076CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003635370.6861.11521818231992130890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c536d5d72056612ceb96ad93ba52d72dfe9eac40368fd5ed4d402ddf03b2fc
Date: Fri, 29 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780036353
