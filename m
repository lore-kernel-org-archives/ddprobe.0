Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54247E1
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753866594; cv=none; b=i2BrwsOn2Bggaj/kPzOKsNVw2/tQgbRMAKBk+ufZAMGBBGTfvI7f1DYbIDVcVYXiy/XzB6L7atXmqsa/3WktxYHychqreECZE+VTRY8ByvETR6ZFTwYoZZiDqFl7BkPsoW/5xxGx9+WfiGd4rw1/W/7GX4N7fXS4buJD75Clhvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753866594; c=relaxed/simple;
	bh=Hub/TncNGnvC56N36XcqYQkWF4PmGYXlpeVR7upDb30=;
	h=To:Subject:From:Message-Id:Date; b=a3vRiWUkeSAAOGnw7uhrNbk9KstVrXQRNwReWXAWMsHheaTAHA8numKmR69nbSOOef5Iqsm2kmfJJ2G4W/2CcCyN99BHfaHgKLM6gfUcjJiE1Wuf8CiTM00yPVuAMjDCuQS77eXfHuhKn3SwNX9Ze1KnZypICw4aBJDeEJQ+VK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ks538gE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ks538gE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF30AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753866593;
	bh=Hub/TncNGnvC56N36XcqYQkWF4PmGYXlpeVR7upDb30=;
	h=To:Subject:From:Date:From;
	b=Ks538gE8XUPCu3iF2h2CRrsbXtMtpOLlcys9u2LYbVztlxXqkMamXJlZ6+OMTlwdr
	 KBNRCR3uyuh8ONZaCOJbMNh2z2wjd0NqGeVwQXzw6Cj8I70LWkZNdMvO4xikEsAqfw
	 MEDTfQFVrro/okelyUhuaZyd0ffVUlZpihCzFeVdMnjI5C0VAeNUwN1KLPQzyJMcSd
	 1aXe8W4p7uZfWDTCnDY1+8rU0kbSBDbq66z3inhsotx9gyvShkOqbzyiDrbNea9EEP
	 G7iriMSBma/TP+8nEiD1n+zgsS+2MlxSXrN5lgxkyDBHZqYoAYKwVUKoHN8Scr0iDL
	 RHr1GsjwLE2TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C168C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386659362.3225.15469469299437525508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bd22070ff41bd0812b42e60a9834a9b5f3c64047671a9ae72d9dc549ef2051
Date: Wed, 30 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753866593
