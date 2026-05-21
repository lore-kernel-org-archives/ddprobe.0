Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9BB2727F3
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779391354; cv=none; b=P8anJAW52R1YGnLxOVvTTWxsUzzjnaNgdymORGxxvjemNWaOD5sm7OIqEH4DBLGzDOqtn2rrcQUksLH69k+ZiWvDv05m/MKBMlbVDxcgrWt/u0d+Ti9ZaWPNDDXlNLmVlGHsWHC+rUsOm9JleR0zVlnoaIdrpP777aggtCoAFow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779391354; c=relaxed/simple;
	bh=l8j30aedwD7tJmj+qv1W+PpRpTONW0bE+uLHzL2RaZg=;
	h=To:Subject:From:Message-Id:Date; b=vDqIw8dIVSdKaHHh5cBMlqdYIabPLmVUghQJPDILOq7jaikIK5X4szqMsZ48nGouRcPTDjVCE9lgWdEtQVw4DUXXEdvOyfv/3twU/uzr/V5M3m3NIBPsWHB38tAwvwNk73PuzdhkN6lXZk28G6foRA7WdoFZ1PiQpIPeEH896II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjPDqau/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjPDqau/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7F2C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779391353;
	bh=l8j30aedwD7tJmj+qv1W+PpRpTONW0bE+uLHzL2RaZg=;
	h=To:Subject:From:Date:From;
	b=sjPDqau/GV6gOZ/XV5CCWuGStmTuZYH8Y4McBEpJ9yNyqHt3cjc6HBhprrG3mTCwi
	 LYcFA32IJOcIO1sNv+nWPc0RBVuW0BSH45m04BW8FtoSBX9EpslB6WIEPlLfhVVMLa
	 JZD6zpM6vWRQRV+mQxWUwuILxMh9e5lseUoZtmtY4miA2QAcAB9omG90T2Nrb17hZe
	 tt2VeJgEDP1SU6gFKyzF6NlTnlbIFvnHagINZOeNlNGXyjiu8Zo62fSzoNJzbXEn0i
	 7ll71Ld5RLIp3hOUAHeMej6JKH4vN5mJoemcmcJGuIoc4k9z/eTNjIHfU6G8NGpsBN
	 Ixv+h6eQcUFCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E00CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939135368.26628.14749208038659734902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5a6c87fd1c363d9cb954a93d0218546f69a832d8292563e11f909df4028213
Date: Thu, 21 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779391353
