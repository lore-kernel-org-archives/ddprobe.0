Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2F224DCF9
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755763793; cv=none; b=fslemZ0VJpvc/ApH2DB1phpUCrHzIxhN3VMfaHVEBtT4Hm+yzJRLreU0GaePGPomDMRUvWndLFlBtHOdOncH9Y5xYc5kEGp1oMqVCeCW81ZTwq5VgRGRa/Psp688dO6stnWWjRTmNp431nJ8MvyuiRtiEHlFhSxv4XeNyGMQVqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755763793; c=relaxed/simple;
	bh=i/7Mh5LmmzgwyIxd4XU49xu9Wj3vR7FIk6Y//BhwtPc=;
	h=To:Subject:From:Message-Id:Date; b=DcZl7mn4mwp0WZ5jxnprK8U7BQ6oox3lPgXud+550J4lTabp+6nIQPrrrEIC1azi7RcYR1Taf7rY+uHb2LttFTmlE6f1GFd/oJLbLCfvlCj4k/ZtMrJzgLBkS0JwifmeI26LsBH1XYxaEtxR8Vd8mmjajuc/KF14yRo87OBQqZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kbh7bJui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kbh7bJui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11BEC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755763793;
	bh=i/7Mh5LmmzgwyIxd4XU49xu9Wj3vR7FIk6Y//BhwtPc=;
	h=To:Subject:From:Date:From;
	b=Kbh7bJuispeEmeX0jnhZfxu/c+w6d4C9xRKcaRUOHL3jFEeYGbqtdbortNB2vHzja
	 WK/P23IhDw2IVgBhr8EGTWsYr+ToCJd+aXmT6NN8XvWbzbi9OF+jna5zU6IZWirRgJ
	 EmRgmeFRxoGavzetiivba5MTFGSO9PG/H/FMGxcbtTg7Uj4z/QzIqESA/LbZppHy3t
	 gvpaR4a3JU7B90oWny4Zs3Mjd/I2YIZjS1FOTq61wkTZDoL1uVH7+Uz7g98LIaBmgA
	 NCOV8REB2+/yZt31GT/EOULH8RdaSDvePDK7sAsBBYBD+Ep56PYPYtd9bqLxKRfBvy
	 j/x5Jin/I2ADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34E5CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576379357.6772.16067805713372991991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d27252126f9d51cf8ed74e26e29227af5355e9546aef53f544a3becb28edb81
Date: Thu, 21 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755763793
