Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E917C156
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727510154; cv=none; b=WHp2Tcwga/f2U6hkIP+dH/3x70+nc1Awuxrh7WTktZ53gwiZC3u5JLLyRmPg9mrhp3MwzGfDm/qBhvwKZrBWM8E4LvAJZwCn2CKm3i79rk8pU7LGD5HFaAf7TpfjmggYMRc/aYRaHtXG/nngvB2zl4HXcN7Y3oH/1VYaLL7s9JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727510154; c=relaxed/simple;
	bh=rhR6R9tFtpUyDK4CMwFtZ8TIr96BYuh9BofWQtU4fvA=;
	h=To:Subject:From:Message-Id:Date; b=TYwv3/Zunh6O05/ZY5pogBsTxzgXuN1eMrSaWNSaWwUgBOUv/zyoMRdBqPj8I8NunLKQgwUaCD3UjMc/uNABiahbDxIComdbLS83W02aTQ6eJVkh7cXtg/tCj3fteopP5FEv7EAg4eEMSZ6pLgf6nFvoG5dLAe6M2zWpyPcCTDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruBZI0FX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruBZI0FX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E18C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727510153;
	bh=rhR6R9tFtpUyDK4CMwFtZ8TIr96BYuh9BofWQtU4fvA=;
	h=To:Subject:From:Date:From;
	b=ruBZI0FXQSwwHKvvKhfl/Tcy0epER2jUugkythAt9rCA8Ytp8pLgve1YVa9ZVvNDN
	 k9t7bv4S6nMvp3MYsQAEAcyh0eC9qeDSv+TDvoy1wzUpfcRXydpXqk8PubgY3NyY1D
	 E0JdVe9zbkyAtXT0VIsRFjGADyBDNoHWCPNo5w7ESYEaHgtgTGY1H75K2FmDxlTQOF
	 KVPfi4xTkGLvDAW4WWwS7oaYgCYM8Y4x7CyubrxRY2tCTW799vG5ega+qyDeduQlBp
	 EOB5Za5my+OFvwuVN8tu8IWTUv1EfjrHtVv5mRG0sNH7Ms48zJL1SJ9sxCbu0DCUU7
	 SF0Gt1rB1tSiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE57CF649A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751015363.25338.7877567462831549939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df96373e47b4ded2909ea25bcfc880adf4416c7499f4ca8c5e218306d5e7694b
Date: Sat, 28 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727510153
