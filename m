Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62B022F766
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749839993; cv=none; b=VZw147mjUSKg3PsKxN3PMySmrJef1uYzq3wBkj1GcnpYbiy1XL0fIabX1QbUQJM4npeoN11aMOMAEXeEEAqU++UOsc3PxwMJGmxZIWBm/1GLsAba0RvShcUZxa6lTKv/SdpZN5GyQ70sfn7CQaZKh7z5m3luSuAEGNowhl4AlE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749839993; c=relaxed/simple;
	bh=9PT909G5Aj3m2jQ2bMCBDw47kkJK6jhRd/VVJb/XOhw=;
	h=To:Subject:From:Message-Id:Date; b=pHZEnS3WnLRA7ApvW1ECRcwURfccjoouT/UTpCiOg1AjKd3HK6xOJ0VbY9bwUbsCiK5OG6tzYueaAlTbOWp51liPmiGkZa5JUls3VbtBzIXn2+uvrwcDTHKDsA5yvLSk2lAqrnGyXRH0hI71yKidbvp2+rlgvTvm7dVioQHaYxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQOIiIlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQOIiIlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47CCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749839993;
	bh=9PT909G5Aj3m2jQ2bMCBDw47kkJK6jhRd/VVJb/XOhw=;
	h=To:Subject:From:Date:From;
	b=OQOIiIlpEt9v5Q5dmbQs2n9Ov0t+UOIc0LK08mvUGQDdhqVYwCj5mB+TEqV+M+TyS
	 BfzL6v0URPKAUOp56tg5GmzeF2ehwxWqdeYr/2xEIQav1dVY/0YC4dunqq9UxXEf42
	 HzGVnho7XBvTDgsj33SETSNqJoIAiudSs1QEheanfWToBy7H53LJwNPnrp9wcNOxEa
	 anwF7Aw64KLNHoyCTUbxhRNY6w7q5A63hm2KM2zES9Xr5a89xJxuxmmVubH4uC8u1a
	 mrk5FghMXtw82riAqVYFXR2YW+kBoE0EJvimNv5EOh9wA35pMNg7VHVxeY28M7hyup
	 yIsfyR1vlvxBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B1C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983999359.10683.6540272240045761690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9983b993b45b3e8150e4fd2cf3c7a33cab532b5d0bf9dea5899c72ad110a11
Date: Fri, 13 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749839993
