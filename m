Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C191CFEB2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737758154; cv=none; b=lM2XV9pngM/PWEomn8W4mcRhvwzTaAsqyfwCEHN4pehuuytt9xsSp3A9CEUAUIo7yphD7IrmBuFlO30lK6iQUX/NQxzhW+QAp3fAJ4sCPKvvcP/DHPoek+HkqK7qOGnDhi7tu6heGCQAuoUurXCUNpAuxAltOAeGgaYCHJ2Mb4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737758154; c=relaxed/simple;
	bh=qWM0ZHYPwHOA/zf4OavMf9qjgb5uR0Xbit4KSoizmwE=;
	h=To:Subject:From:Message-Id:Date; b=NfMyFsmi8dXfvVDET2loKYsxE1i09olXXaePglczwewGAKz3G/VhuBoFUWjyRmNLbKVluysRedpZ6BPybP3yTHXY08XOPwk7cMsHL6mznc5toXqmcVJ6q4xEWwqQBoxUpRx4TLzVyjVubUFt40UYqe48dHAxAnpS1/Dk8LBkyUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADI86x/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADI86x/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A31C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737758153;
	bh=qWM0ZHYPwHOA/zf4OavMf9qjgb5uR0Xbit4KSoizmwE=;
	h=To:Subject:From:Date:From;
	b=ADI86x/UQWDzGL4TQv7RHwKyY9ZEfZpcmh2ExK+Ml+Y/13g8adLfY1UgNQZfZewYT
	 DKkgmadK3n/vGoPhW2pbnBiMGue6HKK/cpJb5+2qofpo76EW8OQmPz5qPfS+l46abn
	 hgNFvkQ3/q+qmzLmNOy0ryYX1l04vUXUCKTCzxW9pUiru1VSIhRphxg6rD5v1JSbI2
	 EoH+5BT3ZnMx/BYm59mOqRcGU9k3G2XcOZYTIZ0CIBiue6K5QdAFXstUolgvc/TOpr
	 mzwbi/7dLX6btW+onKA5k315P4F3zTNhwSbIG+5ezoFyx7+2v8r1MSbN3YhkHJMuIe
	 W42hQ7sXKsw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962DBC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775815360.32521.787781592608632295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744db2b790eeced3912117cea126ed113f998cda65ae2fff318dfb2f61dbaad0
Date: Fri, 24 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737758153
