Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DA713FFC
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723214154; cv=none; b=uS0gZ4CPLv2qKJxqiuYBgtf0ObeJJGvAxpP9SB+GX7tqIcCnflXAHwnPEAcewDnWHtqMHJXB2mMh8dHvy+RD/CpOlbBT6sk/SBtR/eY9DkA3wfEKt02uT5b7ccNfLeGVEvikQdUvPlXu1eRuip2Ud1wvyOIMFIJ48wzzNJsTbd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723214154; c=relaxed/simple;
	bh=12KNcZD2hcW03Yw7SOasuTkzXphhyy4pzZofQBxj9rk=;
	h=To:Subject:From:Message-Id:Date; b=pVB16Xrykn6dVs99VQnDFH3utIDm2Tis9BVCzRP9AKaZv3a4oHTB8U4WE4Sn2AIAD7LXNcJ1c72JQ8uuqB5biVqpywcZoQ1v1nosvpMB6r8lyj73H3iiDqn3/ZCWIN/h2dmnvDJo53da2bxSY++uhyhG2j9IDLG4zwUUj/7ylwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpsEIHZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpsEIHZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2927C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723214153;
	bh=12KNcZD2hcW03Yw7SOasuTkzXphhyy4pzZofQBxj9rk=;
	h=To:Subject:From:Date:From;
	b=NpsEIHZCnK7bcz8y6WbOU7vfQLbvo/EFRhG8BbGHTHJTVrlhiK2hN1hPyOzlWTd0B
	 0m0BV+ZItSPuMqs/7QpIgEVV1MwtIlhRA3B2PqE/PNGTDBEaPnUhA/eqG8xMlsEoMb
	 6WqJ+qW0VZPve/7BhtdaKcIWWkm25TiUL00mRUhy1XOuwNoWuL5tyPY4kdVaTCJaH5
	 7h5WuQkWxwmJWvyxJNfDmMbe4hd/IXUR8eVUdCo3u9Fb/vAU+tJFrrW6XxJHb3ibSO
	 jslSj0RGMj7DbK3XblO3uhyu+Wyzr+zcVKKjdIQArE2WNbJQQeiqU1nI7AiWniVY2k
	 0Z+6XwKJLlL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B335C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172321415362.2355.795521184830477400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f32e117fe218f43b71948479c1fdf78d83c027ffa476fdf24efaba7b6b06268
Date: Fri, 09 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723214153
