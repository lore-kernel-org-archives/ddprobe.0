Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C0472600
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752412195; cv=none; b=shE5etbW50aWqLpwC5WoRg0PqUlPv/Gksfrk/4TZBvo140tcUY4R+aiBIBkBzP04wTZXczJHjD5h8U95lGJ8/7ydQO+hiDp+ng2s6d9kiXIFXWNEBKEg7lBHpI4hddg8AIcAHhVPsR21Nh0LFkQGYytOzkS1Wkx/CwxurcWUlb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752412195; c=relaxed/simple;
	bh=HjgI3zfUUfSTVzpS2pEqg7m6cKtQJ/t/oK52B31Fuzk=;
	h=To:Subject:From:Message-Id:Date; b=pSWp8ezg01FAa+Zmh4q/+zq1nhGl2hhHw37E4Paf8IhsEyF9P1x9WHXquey++8Q40ALlFVcfzOV1lG86pWMqjOV8gF7CJHUc8+bjLOpw0bb6vUGn9BVghDcNaO4yB29e703/RzcOcPn6iX4gy/0HHBYCZTv7WBheArIw2pJpjaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CewXGdeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CewXGdeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAEEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752412193;
	bh=HjgI3zfUUfSTVzpS2pEqg7m6cKtQJ/t/oK52B31Fuzk=;
	h=To:Subject:From:Date:From;
	b=CewXGdegGN2ezX4YWNC/4DUhJaood6WgBHj7tuKrhy7lnq5zcwa2Ra1cg4+3rbrPu
	 9/OBlZXtBv+uIVdYwAzdYokT+1fIzTbsT92CZ76lrTwBZ+31ZPlNHZ0MzfqbE/KCxZ
	 IXf+c+v3vNRHfMwSikwwnQbP3G4W0pLdI5Js7HnwJSKi29dOW6qlnWNw9YnxDDWvAd
	 xmsnFCLjlL1qiFXQEF1J8xLG3mkqfF/zJ+W546pRLbKu9hzr8Kb91XwYYqyiVFhAOU
	 KtClKFVixRSTti59jNAatW2td2Wx6VTH8dlqV8Q0118gqi4/uDUBdlxcYYVGikRDCY
	 5yI7t6VFylDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF86C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241219357.26156.2431458773026025851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4c6a5582fe6daa8b79aeb1c89027a23ad275ffcebfbd729f43bb4fb42813fe
Date: Sun, 13 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752412193
