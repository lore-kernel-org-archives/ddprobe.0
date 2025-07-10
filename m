Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3872D3233
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752188994; cv=none; b=IGRkDbZit1h81QEitk35pf+hOAjnJih4T7raQSju8Me6UKt+sNCq3IZ0kjjKAZFbpYmkSpdyPOrda8kbkUds5BR1R5oCkV/lnjz7X2GZvMN9UrCziLN8BMYc2JjyGiD868WzKlgCMiBtCQssjzZE3cyGe9mGOa+4F21mZhJ/Azg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752188994; c=relaxed/simple;
	bh=1E4qz6vTa57fSOdpnINYsp2PxPMhqpIejHspeaRw4Xw=;
	h=To:Subject:From:Message-Id:Date; b=NzDQlpD6f3v41P5jIpzXNDBmKK/tLuQH0WNf60tk6dmhSxv9zPcvjLwVV9nCz8QjHH4H3Jb79TC7uPKU27rJM4ERSc1Orzyr17cD7dJhoTpO07e15xOvvyDlyECPQtNbaZIpGojupUG3ghsLvy5pfzeVCd13tKpQ4qwx/c0rdrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5rRtfga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5rRtfga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F38BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752188993;
	bh=1E4qz6vTa57fSOdpnINYsp2PxPMhqpIejHspeaRw4Xw=;
	h=To:Subject:From:Date:From;
	b=i5rRtfgaCYTvA1BqUuruFekvKRdz93qCXKJtPZi0oE1kGB+uGnFEgLbd/t4p011UB
	 wcDsuCYtYVQ8WCPQfF1uQAPpmQIVu/Xi3sDaQDAxygbTCyDttw2D40erFgIoUQZH4t
	 Ap/jypSZxIz9xiIiHN65F4KOp8bk1IPj9vRdJw3qLsaVz1OKML6N6/GaksHbgFfDz8
	 NXDvbGimzCF3Ga1kxtSgW+RYobmhyWt3zJ6BMPWEiU1kyJCuWXSJ6U0Y+yqzY7Ry5M
	 Hkiyy4jNij/oJCxFeije7U7ixOeN/zF5jjaYc2iwNAB9mIYimprdgb8IVUIHN6i4tK
	 CCcX9cQswCT3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014AC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218899358.16628.2994109435587010540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbd3ee4d431b37d5755e0089aa670b85d93a8af992082b601de85ff4a4b7933
Date: Thu, 10 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752188993
