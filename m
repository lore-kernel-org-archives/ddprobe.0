Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2BC1D555
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767336234; cv=none; b=JcXEIp7hmBpvdqGuGMno76PpPantJoQ2D8yEfp5tojDGMm3ERyfCPHzR5/AylRwkUsvX8d01MOPq+/+WNge4e0BiT6I01m/BnKO5texX9KYFSax9VjpCR06JqOmYtBAZJA6HX3WXUGx8tm9Co/4OBAFBfHiLFY3ocPNPlvcJcPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767336234; c=relaxed/simple;
	bh=eDWTwc86ODWsTboLpzG6/ssZN1xp2CYBuTJ7TTEd+Mc=;
	h=To:Subject:From:Message-Id:Date; b=TBndDUvNwKgxeTtR147q7tolxdfWTKz3o+rB3shPGIZwtpGT6ELlMxHyuVyvCGWEmc+E3h4WB9LY93HxlTXgCtTj0UeEBJ2MuPxZAppUeZexc87NuDN19UXLBSS3PhtUlZUBQaRF+NtNwlcUixELdzzs6qJF0P1OR4cqUTb+mHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/fr8CVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/fr8CVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF811C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767336233;
	bh=eDWTwc86ODWsTboLpzG6/ssZN1xp2CYBuTJ7TTEd+Mc=;
	h=To:Subject:From:Date:From;
	b=N/fr8CVhm9+UKGESJmrSlQ3oFyvZsbzDXP5Xl89f7AW/wyZj/92tiWUWzNhyuA92T
	 rxOa2UOymGjCg86TWuHTUURHpgGsIeUmecWjcJQTBSwRKO1waca8+uDME2cJy0tKaT
	 7PB0oPnJrq223zfZGYWtYEoy7LfcwUlAAq4nGONMFwvD4YRN8dhWU4KXU+lsDeGl2i
	 GV9DV4bS6F1mZV4T+sN81Bgm98f6p8ZYtuGhDyL/wrW/Ym3KA9wF0VgoqYQsr+sysz
	 NnzX251uKByCAgJJt7HuFijGQhb52xkbHYwbEsnm4iMjw7QafSkqlq4fpn0U7qsJ6t
	 REk+EHN894o8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C057EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733623359.15439.17543460959743978026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9089b18167f314b514359e2ee1bcb4e678ed480d6f5e42fde6770f32c2d675d6
Date: Fri, 02 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767336233
