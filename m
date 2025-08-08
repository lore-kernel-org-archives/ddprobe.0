Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA51BFE00
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754635194; cv=none; b=XrYS9+KcbNzMp4X3cYI4baGq/7fao1MWjfLjPLcfZtAZxSiKjKVIQjnJkNZH8TwPvKB4vYtQpIpaP3xxJyKyqeF8rMj1s5EkLv73cqSWcVIIF6LpPptdkC+2IBSn9HffJZI1gdKfWhVhl9SLKRUVj2ISW/PokKpX+YtpyH01n8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754635194; c=relaxed/simple;
	bh=t3Z9jo6BP25RpZ00bMgc/lUs0QDesuG2Uh9HCwL0fh4=;
	h=To:Subject:From:Message-Id:Date; b=KtxfINGecpgTxT8ENqNko6PlGgBy+eDGtZpyO0FU6JyajhDb9e8d0Mj/0IBJpX0duSo8kG2ozjG/zmBXzyYL/mDRbuXy/mf4GGD7oYNdR1VMVneEVI+Hnb9s+8mjkGbC4rm0JroYVEv4jja/u1/hSdzBeNvxyDa50s/r9LTTwCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8L9pV3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8L9pV3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E01CC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754635193;
	bh=t3Z9jo6BP25RpZ00bMgc/lUs0QDesuG2Uh9HCwL0fh4=;
	h=To:Subject:From:Date:From;
	b=c8L9pV3msAHoZlFG2cpeh9uR7aSUcVa+BoUz0AwEyIkKfr/jNrCXChYIe15oKR+fl
	 iuIQ70Ti1GFsgk2K1MwH3OGY44ta0ZZ9rzX3RRI4AbyX6mOEXNoppGqdpFJbusXlKj
	 ymtBjWzjP5nR2W5RNycDhy2b2rH3sIze1HNh0jJJIhJQRhAfotKOj3sgcgZxHvVUX/
	 vWZVBUE2TZekbZyr/WtaGY0nQiex+5dCce3z1szbslD0e7o453lvDaKCzeKt+upTUB
	 OYo23dK8equWEWnkBBqIlxcBYsDNxXR84WaI7p0+AFqySWTdvDPkxhbBQDXdP7HDbg
	 Opbupnlm88TIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17FC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463519357.10395.6228103049449529772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ca9bb12f54739f629ffb151da85d05aa5e940b9196f18be326e8aeb599933e
Date: Fri, 08 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754635193
