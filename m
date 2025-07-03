Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26442D1F42
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751531994; cv=none; b=Nouzu9G7kdODAxpmaB6tsYotFNljd1llEbH4Xqgh9hhUd8Pby9ZEYifs5vxhJONcj5uVfOgYb6OyKG9QesRYv2rCxHtvyT3vxqbBoMR9YxaN3f+upAJx/uIaBDf0ZGVge773tUkj1TxrN9vQcXzimn1AZX3HuvV+8qprHkCnt4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751531994; c=relaxed/simple;
	bh=Hrcfuisw1ScqpeeHWA2mp8aArNcJXnLmrGuU008KkZI=;
	h=To:Subject:From:Message-Id:Date; b=BMv4zoulnxgx34Y0KchBnNpyntihk9hpmdXqDXNY8twEHtInc4ScEEUJJ6G2pMzr88l03VY+R2J0XpCE1BGCFH47RGOvEeWo55h2N8HMj4Y9/LgBmaPYG8HoljybNoH6UTeXqV+GA6WUTGMqBJ+qgAOoulWEf4FGv8I6bwDY5Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olBDhlPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olBDhlPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ED7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751531993;
	bh=Hrcfuisw1ScqpeeHWA2mp8aArNcJXnLmrGuU008KkZI=;
	h=To:Subject:From:Date:From;
	b=olBDhlPlXPH23YAeArpZbwgTgxgiZcRc1O6uWIcSlK2E/FIa08R9hoc95dis+AkKG
	 NFChuryT6+gfAwCmBG3fmWa9cd4NDEhCnFLN+tt+hpVbtkWAQSvOJwxsEns6hoLViK
	 O4M/DtM05e2gw/BJQiZyhKwqm90VMiZyRG/DpQ+ieIonZt6nYvxTdCJqG1TijFOsLK
	 h1f7qfs0Fx1b0aoSL/6eCnTdy39yp/GU2W7ZUptrTpYYOloQXepMAXtc/LFNpQKuJA
	 7AZD2Olj6aPZxoukxwX5XK9GARJxLGnkuxZgsoVuBKGfGG47JtaRwHkMOFezzC9ay9
	 j4OXUKcG55Mbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB00C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153199357.22546.856993724380771980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf517b407bdbdf597fd2ae6fe36ca0cbcde513c5159de6e35ebe7faae4d4e65
Date: Thu, 03 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751531993
