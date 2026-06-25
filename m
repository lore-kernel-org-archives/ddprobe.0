Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519B32F25E4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782430054; cv=none; b=FKeFgE7WqB/JhlEvrN/HjLWHkwPnC2YdD4FpnO55UW3KNIyPaCG8VVKgE0RT2TAufl+WShykaXRo1ezptQeiiWgw2OckvoIfjBQw2it6xdhhUhonndLzM+UiMM/2KAz+AU42paGIGtxIbPm0Qvs4VFNJWusylz6EWA4K1cLLK6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782430054; c=relaxed/simple;
	bh=SjCCJxkLZhdcICdxRTYUlEJqdfygrVMega2qphaiANg=;
	h=To:Subject:From:Message-Id:Date; b=gT7fMSB6KW04k1yXbAmlNyiRooD1whPM7lxy+k+hgsGGUnrAqsQ5qGn5Uk6ZMjrzZV53ySiRTC/HjGNBO/VFvHwfNu/0ux3kV4c7omzhY7uvywFOirgsiOI7Z87B6zkqsPJApvA7SKoJ7za06rje1aZEh0+Qg+6A+gDs3FFRGsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLWeWQSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLWeWQSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7EAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782430053;
	bh=SjCCJxkLZhdcICdxRTYUlEJqdfygrVMega2qphaiANg=;
	h=To:Subject:From:Date:From;
	b=JLWeWQSp38ara/6wkT0Qj6Lab8WXC/I0QcZ6ti6Ck8LJiy143QlT6r5tixxfOJ/4Y
	 33pN1+WW+JAUz3LWZVOKAKbcusVoBYaiO/zqVpo2YOex+6yqgZILqu00D5cPen+S9M
	 mjAwqRRupZmI5Ck7o58t+hh199AGX7i+Kj1Rb7fSuI1vvPoWP530XOwhiU86NTTyPk
	 GjCktDIs5fIGRN6Z/sQR0N0BMi14En142zEnHTKO2RM5G5h3MUKsZee/q+VFEBz+MV
	 mTMRe4T9+kdDGjcfDsidb1UUjz1go+9uXIoANxKVHiJ7QJH8QIa7one/JB3TKmPFOK
	 bOPNuE+qm+jGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05F3CDE00C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243005371.11867.10934742595839979794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1d7acb951bddc56161a73fe9c584c8181e561a70e41257518ad99574c3286c
Date: Thu, 25 Jun 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782430053
