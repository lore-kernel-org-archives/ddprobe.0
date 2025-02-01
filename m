Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FCD4437C
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738405555; cv=none; b=uIXQcF5h9GGZhwsF9Jkc17Cw4rpbH7LFN4LY7cXbG31inUVXCxI80YyhTk+ND6p9No49ZA9oqAPgRYmmn3JA7gZCUsQJldqRRgZysZpJIGHWn891X29ciCO9i29e7fI2RL4gKk4TQRuEqVdvRTh76AUwp3Lo/PJq2Q4nszMIH3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738405555; c=relaxed/simple;
	bh=XeDv+jztAklfuPbqqPhQUBj7FeCIOLdt38/k2cbmvIk=;
	h=To:Subject:From:Message-Id:Date; b=YXhOOEA6UR89sWsJmzH4pysGqKqNVHW4mVvMfq6JTMYifoetElRzW74QB3TxC2MEVmwKPi1AOCsOR0rUy3ncKUZvSk2Siwxb6kglISzIAyil0i+9Kme3eUAfN8qBbHV/1fNEtbI/BbjyHxy7QcZO6ge2Bif5i7lGvAzhw6xKtOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtHMrmx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtHMrmx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A8C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738405553;
	bh=XeDv+jztAklfuPbqqPhQUBj7FeCIOLdt38/k2cbmvIk=;
	h=To:Subject:From:Date:From;
	b=KtHMrmx0o7jceRMREHJoorjCevyG67sIohHC4zq1VO3mHNe/PcqiWaSnNDgo9yXsC
	 zEExH6CL6U1GE9f/YI9q6J+lqDJqQR9i25s6NDkNTUwmRuVWoX4ge+GJyO/Ft1lvOY
	 MIuZ4kjj6I/VlB/+EtiM3ElNTeyK+ml9vRx0jPM6i0r5DNk+ePD49XArfh0FbWiYlP
	 3jEve1Qfn40cy/Cgp2MQFjjKMDmdveQCWQYditECdjrnexZK8oltod5Rnwp3kFJGEF
	 V6E+xb2s/8gDh6wD+Voo2AydcsFCil5tjBc/5MRlEJnf3KolQct0W+M3Qhq5VK6rvK
	 OB7jPK1DgBDEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A23C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840555357.657.8886627935585919899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07721c01092d4fca3b4d568746becf4e42b16ebb23cf8ac5a34a2312d84a0e5b
Date: Sat, 01 Feb 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738405553
